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



$SQL_tum_sinav_kategorileri = <<< SQL
SELECT 
	*
FROM 
	tb_sinav_kategorileri
WHERE
	aktif = 1
SQL;


$SQL_tek_sinav_oku = <<< SQL
SELECT 
	*
FROM 
	tb_sinav_kategorileri
WHERE 
	id 				= ? AND
	aktif			= 1
SQL;


$sinav_kategorileri		= $vt->select( $SQL_tum_sinav_kategorileri, array( ) )[ 2 ];
@$tek_sinav				= $vt->select( $SQL_tek_sinav_oku, array( $id ) )[ 2 ][ 0 ];

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
				<div class="card" id = "card_sinav_kategorileri">
					<div class="card-header bg-olive">
						<h3 class="card-title">Sınav Kategorileri</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_sinav" data-toggle = "tooltip" title = "Yeni Üviversite Ekle" href = "?modul=sinavKategorileri&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_sinav_kategorileri" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>Adı</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $sinav_kategorileri AS $sinav ) { ?>
								<tr oncontextmenu="fun();" class ="sinav-Tr <?php if( $sinav[ 'id' ] == $id ) echo $satir_renk; ?>" data-id="<?php echo $sinav[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $sinav[ 'adi' ]; ?></td>
									<td align = "center">
										<a modul = 'sinavKategorileri' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=sinavKategorileri&islem=guncelle&id=<?php echo $sinav[ 'id' ]; ?>&universite_id=<?php echo $sinav[ 'universite_id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'sinavKategorileri' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/sinavKategorileri/sinavKategorileriSEG.php?islem=sil&id=<?php echo $sinav[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
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
							<h3 class="card-title text-white">Sınav Kategorisi Düzenle</h3>
						<?php } else { ?>
							<h3 class="card-title text-white">Sınav Kategorisi Ekle</h3>
						<?php } ?>
					</div>
					<form class="form-horizontal" action = "_modul/sinavKategorileri/sinavKategorileriSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "id" value = "<?php echo $id; ?>">
							<h3 class="profile-username text-center"><b> </b></h3>
							<div class="form-group">
								<label class="control-label">Sınav Adı</label>
								<input required type="text" class="form-control form-control-sm" name ="adi" value = "<?php echo $tek_sinav[ "adi" ]; ?>"  autocomplete="off">
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'sinavKategorileri' yetki_islem="kaydet" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
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
		document.getElementById( 'yeni_sinav' ).click();
	}
});

var tbl_sinav_kategorileri = $( "#tbl_sinav_kategorileri" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_sinav_kategorileri_wrapper .col-md-6:eq(0)');



$('#card_sinav_kategorileri').on('maximized.lte.cardwidget', function() {
	var tbl_sinav_kategorileri = $( "#tbl_sinav_kategorileri" ).DataTable();
	var column = tbl_sinav_kategorileri.column(  tbl_sinav_kategorileri.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_sinav_kategorileri.column(  tbl_sinav_kategorileri.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_sinav_kategorileri').on('minimized.lte.cardwidget', function() {
	var tbl_sinav_kategorileri = $( "#tbl_sinav_kategorileri" ).DataTable();
	var column = tbl_sinav_kategorileri.column(  tbl_sinav_kategorileri.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_sinav_kategorileri.column(  tbl_sinav_kategorileri.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>