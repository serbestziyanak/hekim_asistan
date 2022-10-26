<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}


$islem			= array_key_exists( 'islem'		,$_REQUEST ) 	 ? $_REQUEST[ 'islem' ]			: 'ekle';
$id				= array_key_exists( 'id'	,$_REQUEST ) ? $_REQUEST[ 'id' ]	: 0;


$satir_renk				= $id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';



$SQL_tum_ogrenci_sinavlari = <<< SQL
SELECT 
	os.*
	,sk.adi AS sinav_kategori_adi
	,concat(o.adi," ",o.soyadi) AS ogrenci_adi_soyadi
FROM 
	tb_ogrenci_sinavlari AS os
LEFT JOIN tb_sinav_kategorileri AS sk ON sk.id = os.sinav_kategori_id
LEFT JOIN tb_ogrenciler AS o ON o.id = os.ogrenci_id
WHERE
	os.uzmanlik_dali_id = ?
SQL;

$SQL_tum_ogrenci_sinavlari2 = <<< SQL
SELECT 
	os.*
	,sk.adi AS sinav_kategori_adi
	,concat(o.adi," ",o.soyadi) AS ogrenci_adi_soyadi
FROM 
	tb_ogrenci_sinavlari AS os
LEFT JOIN tb_sinav_kategorileri AS sk ON sk.id = os.sinav_kategori_id
LEFT JOIN tb_ogrenciler AS o ON o.id = os.ogrenci_id
WHERE
	os.uzmanlik_dali_id = ? AND o.id = ?
SQL;


$SQL_tek_sinav_oku = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenci_sinavlari
WHERE 
	id 				= ?
SQL;

$SQL_sinav_kategorileri = <<< SQL
SELECT 
	*
FROM 
	tb_sinav_kategorileri
SQL;

$SQL_tum_ogrenciler = <<< SQL
SELECT 
	o.*,
	CONCAT( o.adi, ' ', o.soyadi ) AS ad_soyadi,
	u.adi as uzmanlik_dali_adi
FROM 
	tb_ogrenciler AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
WHERE
	o.universite_id 	= ? AND
	o.uzmanlik_dali_id 	= ? AND
	o.aktif 		  	= 1 
ORDER BY o.adi ASC
SQL;

if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){
	$ogrenci_sinavlari		= $vt->select( $SQL_tum_ogrenci_sinavlari2, array( $_SESSION[ 'uzmanlik_dali_id'], $_SESSION[ 'kullanici_id'] ) )[ 2 ];
}else{
	$ogrenci_sinavlari		= $vt->select( $SQL_tum_ogrenci_sinavlari, array( $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];
}

$sinav_kategorileri		= $vt->select( $SQL_sinav_kategorileri, array( ) )[ 2 ];
@$tek_sinav				= $vt->select( $SQL_tek_sinav_oku, array( $id ) )[ 2 ][ 0 ];
$ogrenciler				= $vt->select( $SQL_tum_ogrenciler, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];

?>

<div class="modal fade" id="sil_onay">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Lütfen Dikkat</h4>
			</div>
			<div class="modal-body">
				<p>Bu kaydı silmek istediğinize emin misiniz?</p>
			</div>
			<div class="modal-footer justify-content-between">
				<button type="button" class="btn btn-default" data-dismiss="modal">Hayır</button>
				<a class="btn btn-danger btn-evet">Evet</a>
			</div>
		</div>
	</div>
</div>


<script>
	/* Kayıt silme onay modal açar. */
	$( '#sil_onay' ).on( 'show.bs.modal', function( e ) {
		$( this ).find( '.btn-evet' ).attr( 'href', $( e.relatedTarget ).data( 'href' ) );
	} );
</script>


<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8">
				<div class="card" id = "card_ogrenci_sinavlari">
					<div class="card-header bg-olive">
						<h3 class="card-title">Sınavlar</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_sinav" data-toggle = "tooltip" title = "Yeni Üviversite Ekle" href = "?modul=ogrenciSinavlari&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_ogrenci_sinavlari" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<?php if( $_SESSION[ 'kullanici_turu' ] != "ogrenci" ){ ?>
									<th>Öğrenci</th>
									<?php } ?>
									<th>Sınav Kategorisi</th>
									<th>Sınav Adı</th>
									<th>Sınav Tarihi</th>
									<th>Notu</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $ogrenci_sinavlari AS $ogrenci_sinav ) { ?>
								<tr oncontextmenu="fun();" class ="sinav-Tr <?php if( $ogrenci_sinav[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $ogrenci_sinav[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<?php if( $_SESSION[ 'kullanici_turu' ] != "ogrenci" ){ ?>
									<td><?php echo $ogrenci_sinav[ 'ogrenci_adi_soyadi' ]; ?></td>
									<?php } ?>
									<td><?php echo $ogrenci_sinav[ 'sinav_kategori_adi' ]; ?></td>
									<td><?php echo $ogrenci_sinav[ 'adi' ]; ?></td>
									<td><?php echo $fn->tarihVer( $ogrenci_sinav[ 'sinav_tarihi' ] ); ?></td>
									<td><?php echo $ogrenci_sinav[ 'notu' ]; ?></td>
									<td align = "center">
										<a modul = 'ogrenciSinavlari' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=ogrenciSinavlari&islem=guncelle&id=<?php echo $ogrenci_sinav[ 'id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'ogrenciSinavlari' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/ogrenciSinavlari/ogrenciSinavlariSEG.php?islem=sil&id=<?php echo $ogrenci_sinav[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-orange">
					<div class="card-header">
						<?php if( $id > 0 ) { ?>
							<h3 class="card-title text-white">Sınav Düzenle</h3>
						<?php } else { ?>
							<h3 class="card-title text-white">Sınav Ekle</h3>
						<?php } ?>
					</div>
					<form class="form-horizontal" action = "_modul/ogrenciSinavlari/ogrenciSinavlariSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
							<input type = "hidden" name = "uzmanlik_dali_id" value = "<?php echo $_SESSION['uzmanlik_dali_id']; ?>">
							<h3 class="profile-username text-center"><b> </b></h3>
							<?php if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){ ?>
							<input type = "hidden" name = "ogrenci_id" value = "<?php echo $_SESSION['kullanici_id']; ?>">
							<?php }else{ ?>
							<div class="form-group">
								<label  class="control-label">Öğrenci</label>
								<select class="form-control select2" name = "ogrenci_id" required >
									<option>Seçiniz...</option>
									<?php 
										foreach( $ogrenciler AS $ogrenci ){
											echo '<option value="'.$ogrenci[ "id" ].'" '.( $tek_sinav[ "ogrenci_id" ] == $ogrenci[ "id" ] ? "selected" : null) .'>'.$ogrenci[ "ad_soyadi" ].'</option>';
										}

									?>
								</select>
							</div>
							<?php } ?>
							<div class="form-group">
								<label  class="control-label">Sınav Kategorisi</label>
								<select class="form-control select2" name = "sinav_kategori_id" required >
									<option>Seçiniz...</option>
									<?php 
										foreach( $sinav_kategorileri AS $sinav_kategori ){
											echo '<option value="'.$sinav_kategori[ "id" ].'" '.( $tek_sinav[ "sinav_kategori_id" ] == $sinav_kategori[ "id" ] ? "selected" : null) .'>'.$sinav_kategori[ "adi" ].'</option>';
										}

									?>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label">Sınav Tarihi</label>
								<div class="input-group date" id="sinav_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#sinav_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#sinav_tarihi" data-toggle="datetimepicker" name="sinav_tarihi" value="<?php if( $tek_sinav[ 'sinav_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_sinav[ 'sinav_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#sinav_tarihi"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Sınav Adı</label>
								<input required type="text" class="form-control form-control-sm" name ="adi" value = "<?php echo $tek_sinav[ "adi" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Sınav Notu</label>
								<input required type="number" min="0.1" max="100.0" step="0.1" class="form-control form-control-sm" name ="notu" value = "<?php echo $tek_sinav[ "notu" ]; ?>"  autocomplete="off">
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'ogrenciSinavlari' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">

	$(function () {
		$('#sinav_tarihi').datetimepicker({
			//defaultDate: simdi,
			format: 'DD.MM.yyyy',
			icons: {
			time: "far fa-clock",
			date: "fa fa-calendar",
			up: "fa fa-arrow-up",
			down: "fa fa-arrow-down"
			}
		});
	});

// ESC tuşuna basınca formu temizle
document.addEventListener( 'keydown', function( event ) {
	if( event.key === "Escape" ) {
		document.getElementById( 'yeni_sinav' ).click();
	}
});

var tbl_ogrenci_sinavlari = $( "#tbl_ogrenci_sinavlari" ).DataTable( {
	"responsive": true, "lengthChange": true, "autoWidth": true,
	"stateSave": true,
	"pageLength" : 25,
	//"buttons": ["excel", "pdf", "print","colvis"],

	buttons : [
		{
			extend	: 'colvis',
			text	: "Alan Seçiniz"
			
		},
		{
			extend	: 'excel',
			text 	: 'Excel',
			exportOptions: {
				columns: ':visible'
			},
			title: function(){
				return "Fakülte Listesi";
			}
		},
		{
			extend	: 'print',
			text	: 'Yazdır',
			exportOptions : {
				columns : ':visible'
			},
			title: function(){
				return "Fakülte Listesi";
			}
		}
	],
	"language": {
		"decimal"			: "",
		"emptyTable"		: "Gösterilecek kayıt yok!",
		"info"				: "Toplam _TOTAL_ kayıttan _START_ ve _END_ arası gösteriliyor",
		"infoEmpty"			: "Toplam 0 kayıttan 0 ve 0 arası gösteriliyor",
		"infoFiltered"		: "",
		"infoPostFix"		: "",
		"thousands"			: ",",
		"lengthMenu"		: "Show _MENU_ entries",
		"loadingRecords"	: "Yükleniyor...",
		"processing"		: "İşleniyor...",
		"search"			: "Ara:",
		"zeroRecords"		: "Eşleşen kayıt bulunamadı!",
		"paginate"			: {
			"first"		: "İlk",
			"last"		: "Son",
			"next"		: "Sonraki",
			"previous"	: "Önceki"
		}
	}
} ).buttons().container().appendTo('#tbl_ogrenci_sinavlari_wrapper .col-md-6:eq(0)');



$('#card_ogrenci_sinavlari').on('maximized.lte.cardwidget', function() {
	var tbl_ogrenci_sinavlari = $( "#tbl_ogrenci_sinavlari" ).DataTable();
	var column = tbl_ogrenci_sinavlari.column(  tbl_ogrenci_sinavlari.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenci_sinavlari.column(  tbl_ogrenci_sinavlari.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_ogrenci_sinavlari').on('minimized.lte.cardwidget', function() {
	var tbl_ogrenci_sinavlari = $( "#tbl_ogrenci_sinavlari" ).DataTable();
	var column = tbl_ogrenci_sinavlari.column(  tbl_ogrenci_sinavlari.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenci_sinavlari.column(  tbl_ogrenci_sinavlari.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>