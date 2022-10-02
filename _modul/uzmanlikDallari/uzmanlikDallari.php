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
$id		= array_key_exists( 'id'	,$_REQUEST ) ? $_REQUEST[ 'id' ]	: 0;


$satir_renk				= $id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';



$SQL_tum_uzmanlik_dallari = <<< SQL
SELECT 
	*
FROM 
	tb_uzmanlik_dallari
WHERE 
	aktif = 1
SQL;


$SQL_tek_uzmanlik_dali_oku = <<< SQL
SELECT 
	*
FROM 
	tb_uzmanlik_dallari
WHERE 
	id 				= ? AND
	aktif 			= 1 
SQL;


$uzmanlik_dallari		= $vt->select( $SQL_tum_uzmanlik_dallari, array( ) )[ 2 ];
@$tek_uzmanlik_dali		= $vt->select( $SQL_tek_uzmanlik_dali_oku, array( $id ) )[ 2 ][ 0 ];

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
				<div class="card" id = "card_uzmanlik_dallari">
					<div class="card-header bg-olive">
						<h3 class="card-title">Uzmanlık Dalları</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_uzmanlik_dali" data-toggle = "tooltip" title = "Yeni Üviversite Ekle" href = "?modul=uzmanlikDallari&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_uzmanlik_dallari" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>Tukmos Kodu</th>
									<th>Uzmanlık Dalı</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $uzmanlik_dallari AS $uzmanlik_dali ) { ?>
								<tr oncontextmenu="fun();" class ="uzmanlik_dali-Tr <?php if( $uzmanlik_dali[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $uzmanlik_dali[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $uzmanlik_dali[ 'tukmos_kodu' ]; ?></td>
									<td><?php echo $uzmanlik_dali[ 'adi' ]; ?></td>
									<td align = "center">
										<a modul = 'uzmanlikDallari' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=uzmanlikDallari&islem=guncelle&id=<?php echo $uzmanlik_dali[ 'id' ]; ?>&universite_id=<?php echo $uzmanlik_dali[ 'universite_id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'uzmanlikDallari' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/uzmanlikDallari/uzmanlikDallariSEG.php?islem=sil&id=<?php echo $uzmanlik_dali[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
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
							<h3 class="card-title text-white">Uzmanlık Dalı Düzenle</h3>
						<?php } else { ?>
							<h3 class="card-title text-white">Uzmanlık Dalı Ekle</h3>
						<?php } ?>
					</div>
					<form class="form-horizontal" action = "_modul/uzmanlikDallari/uzmanlikDallariSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
							<h3 class="profile-username text-center"><b> </b></h3>
							<div class="form-group">
								<label class="control-label">Tukmos Kodu</label>
								<input required type="text" class="form-control form-control-sm" name ="tukmos_kodu" value = "<?php echo $tek_uzmanlik_dali[ "tukmos_kodu" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Uzmanlık Dalı Adı</label>
								<input required type="text" class="form-control form-control-sm" name ="adi" value = "<?php echo $tek_uzmanlik_dali[ "adi" ]; ?>"  autocomplete="off">
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'uzmanlikDallari' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
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
		document.getElementById( 'yeni_uzmanlik_dali' ).click();
	}
});

var tbl_uzmanlik_dallari = $( "#tbl_uzmanlik_dallari" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_uzmanlik_dallari_wrapper .col-md-6:eq(0)');



$('#card_uzmanlik_dallari').on('maximized.lte.cardwidget', function() {
	var tbl_uzmanlik_dallari = $( "#tbl_uzmanlik_dallari" ).DataTable();
	var column = tbl_uzmanlik_dallari.column(  tbl_uzmanlik_dallari.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_uzmanlik_dallari.column(  tbl_uzmanlik_dallari.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_uzmanlik_dallari').on('minimized.lte.cardwidget', function() {
	var tbl_uzmanlik_dallari = $( "#tbl_uzmanlik_dallari" ).DataTable();
	var column = tbl_uzmanlik_dallari.column(  tbl_uzmanlik_dallari.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_uzmanlik_dallari.column(  tbl_uzmanlik_dallari.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>