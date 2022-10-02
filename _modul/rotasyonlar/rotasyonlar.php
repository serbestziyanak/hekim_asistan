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


$islem	= array_key_exists( 'islem'		,$_REQUEST ) 	 ? $_REQUEST[ 'islem' ]			: 'ekle';
$id		= array_key_exists( 'id'	,$_REQUEST ) ? $_REQUEST[ 'id' ]	: 0;


$satir_renk				= $id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';



$SQL_tum_rotasyonlar = <<< SQL
SELECT 
	r.*
	,ud.adi AS rotasyon_uzmanlik_dali_adi
FROM 
	tb_rotasyonlar AS r
LEFT JOIN tb_uzmanlik_dallari AS ud ON r.rotasyon_uzmanlik_dali_id = ud.id
WHERE 
	r.universite_id 	= ? AND
	r.uzmanlik_dali_id 	= ? AND
	r.aktif 		  	= 1
SQL;


$SQL_tek_rotasyon_oku = <<< SQL
SELECT 
	*
FROM 
	tb_rotasyonlar
WHERE 
	id 				= ? AND
	aktif 			= 1 
SQL;

$SQL_uzmanlik_dallari = <<< SQL
SELECT
	*
FROM
	tb_uzmanlik_dallari
WHERE
	aktif 			= 1
SQL;

$uzmanlik_dallari	= $vt->select( $SQL_uzmanlik_dallari, array( ) )[ 2 ];
$rotasyonlar		= $vt->select( $SQL_tum_rotasyonlar, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];
@$tek_rotasyon		= $vt->select( $SQL_tek_rotasyon_oku, array( $id ) )[ 2 ][ 0 ];

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
			<div class="col-md-6">
				<div class="card" id = "card_rotasyonlar">
					<div class="card-header bg-olive">
						<h3 class="card-title">Rotasyonlar</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_rotasyon" data-toggle = "tooltip" title = "Yeni Üviversite Ekle" href = "?modul=rotasyonlar&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_rotasyonlar" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>Rotasyon Adı</th>
									<th>Süresi(Ay)</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $rotasyonlar AS $rotasyon ) { ?>
								<tr oncontextmenu="fun();" class ="rotasyon-Tr <?php if( $rotasyon[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $rotasyon[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $rotasyon[ 'rotasyon_uzmanlik_dali_adi' ]; ?></td>
									<td><?php echo $rotasyon[ 'sure_ay' ]; ?></td>
									<td align = "center">
										<a modul = 'rotasyonlar' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=rotasyonlar&islem=guncelle&id=<?php echo $rotasyon[ 'id' ]; ?>&universite_id=<?php echo $rotasyon[ 'universite_id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'rotasyonlar' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/rotasyonlar/rotasyonlarSEG.php?islem=sil&id=<?php echo $rotasyon[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card card-orange">
					<div class="card-header">
						<?php if( $id > 0 ) { ?>
							<h3 class="card-title text-white">Rotasyon Düzenle</h3>
						<?php } else { ?>
							<h3 class="card-title text-white">Rotasyon Ekle</h3>
						<?php } ?>
					</div>
					<form class="form-horizontal" action = "_modul/rotasyonlar/rotasyonlarSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "uzmanlik_dali_id" value = "<?php echo $_SESSION[ 'uzmanlik_dali_id' ]; ?>">
							<input type = "hidden" name = "universite_id" value = "<?php echo $_SESSION[ 'universite_id' ]; ?>">
							<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
							<h3 class="profile-username text-center"><b> </b></h3>
							<div class="form-group">
								<label  class="control-label">Rotasyon Dalı</label>
								<select class="form-control select2 " name = "rotasyon_uzmanlik_dali_id"  required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $uzmanlik_dallari AS $uzmanlik_dali ){
											if( $uzmanlik_dali[ "id" ] == $_SESSION[ 'uzmanlik_dali_id' ] )
												continue;
									?>
											<option value="<?php echo $uzmanlik_dali[ "id" ]; ?>" <?php if( $tek_rotasyon['rotasyon_uzmanlik_dali_id'] == $uzmanlik_dali[ "id" ] ) echo 'selected'; ?> ><?php echo $uzmanlik_dali[ "adi" ]; ?></option>
									<?php
										}
									?>
								</select>
							</div>
							<div class="form-group">
								<label  class="control-label">Rotasyon Süresi (AY)</label>
								<select class="form-control select2 " name = "sure_ay"  required>
									<option>Seçiniz...</option>
									<?php 
										for( $i = 1; $i<=24; $i++){
									?>
											<option value="<?php echo $i; ?>" <?php if( $tek_rotasyon['sure_ay'] == $i ) echo 'selected'; ?> ><?php echo $i; ?></option>
									<?php
										}
									?>
								</select>
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'rotasyonlar' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
							<a modul = 'rotasyonlar' yetki_islem="ekle" class = "btn btn-sm btn-primary" href = "?modul=rotasyonlar&islem=ekle" >
								Yeni Kayıt / Temizle
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">

// ESC tuşuna basınca formu temizle
document.addEventListener( 'keydown', function( event ) {
	if( event.key === "Escape" ) {
		document.getElementById( 'yeni_rotasyon' ).click();
	}
});

var tbl_rotasyonlar = $( "#tbl_rotasyonlar" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_rotasyonlar_wrapper .col-md-6:eq(0)');



$('#card_rotasyonlar').on('maximized.lte.cardwidget', function() {
	var tbl_rotasyonlar = $( "#tbl_rotasyonlar" ).DataTable();
	var column = tbl_rotasyonlar.column(  tbl_rotasyonlar.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_rotasyonlar.column(  tbl_rotasyonlar.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_rotasyonlar').on('minimized.lte.cardwidget', function() {
	var tbl_rotasyonlar = $( "#tbl_rotasyonlar" ).DataTable();
	var column = tbl_rotasyonlar.column(  tbl_rotasyonlar.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_rotasyonlar.column(  tbl_rotasyonlar.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>