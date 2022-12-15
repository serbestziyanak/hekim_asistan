<?php
$fn	= new Fonksiyonlar();
$vt = new VeriTabani();


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj								= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu							= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' 	: 'yesil';
	$_REQUEST[ 'ogrenci_id' ]			= $_SESSION[ 'sonuclar' ][ 'id' ];
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}


$islem					= array_key_exists( 'islem'		         ,$_REQUEST ) ? $_REQUEST[ 'islem' ]				: 'ekle';
$ogrenci_id				= array_key_exists( 'ogrenci_id' ,$_REQUEST ) ? $_REQUEST[ 'ogrenci_id' ]	: 0;

if( $_SESSION[ 'kullanici_turu' ] == "ogrenci"  ){
	if( $ogrenci_id != $_SESSION[ 'kullanici_id' ] )
		$ogrenci_id		= "";
}

$satir_renk					= $ogrenci_id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi			= $ogrenci_id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls			= $ogrenci_id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';
$kaydet_buton_yetki_islem	= $ogrenci_id > 0	? 'guncelle'									: 'kaydet';



$SQL_tum_ogrenciler = <<< SQL
SELECT 
	o.*,
	CONCAT( o.adi, ' ', o.soyadi ) AS o_adi,
	u.adi as uzmanlik_dali_adi
FROM 
	tb_ogrenciler AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
WHERE
	o.universite_id 	= ? AND
	o.uzmanlik_dali_id 		= ? AND
	o.aktif 		  	= 1 
ORDER BY o.adi ASC
SQL;

$SQL_tum_ogrenciler2 = <<< SQL
SELECT 
	o.*,
	CONCAT( o.adi, ' ', o.soyadi ) AS o_adi,
	u.adi as uzmanlik_dali_adi
FROM 
	tb_ogrenciler AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
WHERE
	o.universite_id 	= ? AND
	o.uzmanlik_dali_id 		= ? AND
	o.id 		= ? AND
	o.aktif 		  	= 1 
ORDER BY o.adi ASC
SQL;


$SQL_tek_ogrenci_oku = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenciler
WHERE 
	id 				= ? AND
	aktif 			= 1 
SQL;

/*Üniversiteye Ait uzmanlik Dalını Listele*/
$SQL_uzmanlik_dallari = <<< SQL
SELECT
	*
FROM
	tb_uzmanlik_dallari
WHERE
	aktif 		  	= 1
SQL;

$SQL_ogretim_elemanlari = <<< SQL
SELECT
	 oe.*
	,concat( u.adi," ",oe.adi," ",oe.soyadi) as adi_soyadi
FROM
	tb_ogretim_elemanlari AS oe
LEFT JOIN tb_unvanlar AS u ON u.id = oe.unvan_id
WHERE
	oe.aktif 		  	= 1 AND
	oe.universite_id	= ?
ORDER BY oe.adi,oe.soyadi
SQL;

if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){
	$ogrenciler					= $vt->select( $SQL_tum_ogrenciler2, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'], $_SESSION[ 'kullanici_id'] ) )[ 2 ];
}else{
	$ogrenciler					= $vt->select( $SQL_tum_ogrenciler, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];
}

$uzmanlik_dallari			= $vt->select( $SQL_uzmanlik_dallari, array(  ) )[ 2 ];
$ogretim_elemanlari			= $vt->select( $SQL_ogretim_elemanlari, array( $_SESSION[ 'universite_id'] ) )[ 2 ];
@$tek_ogrenci				= $vt->select( $SQL_tek_ogrenci_oku, array( $ogrenci_id ) )[ 2 ][ 0 ];		

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
				<div class="card card-olive" id = "card_ogrenciler">
					<div class="card-header">
						<h3 class="card-title">Öğrenciler</h3>
						<div class = "card-tools">
							<button type="button" data-toggle = "tooltip" title = "Tam sayfa göster" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand fa-lg"></i></button>
							<a id = "yeni_ogretim_elemanlari" data-toggle = "tooltip" title = "Yeni Öğrenci Ekle" href = "?modul=ogrenciler&islem=ekle" class="btn btn-tool" ><i class="fas fa-plus fa-lg"></i></a>
						</div>
					</div>
					<div class="card-body">
						<table id="tbl_ogrenciler" class="table table-bordered table-hover table-sm" width = "100%" >
							<thead>
								<tr>
									<th style="width: 15px">#</th>
									<th>TC No</th>
									<th>Öğrenci No</th>
									<th>Adı Soyadı</th>
									<th>Başlama Tarihi</th>
									<th>Uzmanlık Dalı</th>
									<th data-priority="1" style="width: 20px">Düzenle</th>
									<th data-priority="1" style="width: 20px">Sil</th>
								</tr>
							</thead>
							<tbody>
								<?php $sayi = 1; foreach( $ogrenciler AS $ogrenci ) { ?>
								<tr oncontextmenu="fun();" class ="ogretim_elemanlari-Tr <?php if( $ogrenci[ 'id' ] == $ogrenci_id ) echo $satir_renk; ?>" data-id="<?php echo $ogrenci[ 'id' ]; ?>">
									<td><?php echo $sayi++; ?></td>
									<td><?php echo $ogrenci[ 'tc_kimlik_no' ]; ?></td>
									<td><?php echo $ogrenci[ 'ogrenci_no' ]; ?></td>
									<td><?php echo $ogrenci[ 'o_adi' ]; ?></td>
									<td><?php echo $fn->tarihVer($ogrenci[ 'baslama_tarihi' ]); ?></td>
									<td><?php echo $ogrenci[ 'uzmanlik_dali_adi' ]; ?></td>
									<td align = "center">
										<a modul = 'ogrenciler' yetki_islem="duzenle" class = "btn btn-sm btn-warning btn-xs" href = "?modul=ogrenciler&islem=guncelle&ogrenci_id=<?php echo $ogrenci[ 'id' ]; ?>" >
											Düzenle
										</a>
									</td>
									<td align = "center">
										<button modul= 'ogrenciler' yetki_islem="sil" class="btn btn-xs btn-danger" data-href="_modul/ogrenciler/ogrencilerSEG.php?islem=sil&ogrenci_id=<?php echo $ogrenci[ 'id' ]; ?>" data-toggle="modal" data-target="#sil_onay">Sil</button>
									</td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card card-secondary">
					<div class="card-header">
							<?php if( $ogrenci_id > 0 ) { ?>
								<h3 class="card-title">Öğrenci Düzenle</h3>
							<?php } else {
								echo "<h3 class='card-title'>Öğrenci Ekle</h3>";
								}
							?>
							
					</div>
					<form class="form-horizontal" action = "_modul/ogrenciler/ogrencilerSEG.php" method = "POST" enctype="multipart/form-data">
						<div class="card-body">
							<input type = "hidden" name = "islem" value = "<?php echo $islem; ?>" >
							<input type = "hidden" name = "ogrenci_id" value = "<?php echo $ogrenci_id; ?>">
							<input type = "hidden" name = "universite_id" value = "<?php echo $_SESSION['universite_id']; ?>">
							<?php
								if( $islem == "guncelle" ){
									$resim_src = "resimler/".$tek_ogrenci[ "resim" ];
								}else{
									$resim_src = "resimler/resim_yok.png";
								}
							?>
							<div class="text-center">
								<img class="img-fluid img-circle img-thumbnail mw-100"
									style="width:120px; cursor:pointer;"
									src="<?php echo $resim_src; ?>" 
									alt="User profile picture"
									id = "ogrenci_kullanici_resim">
							</div>
							<p class="text-muted text-center">Fotoğraf değiştirmek için fotoğrafa tıklayınız</p>	
							<h3 class="profile-username text-center"><?php echo $tek_ogrenci[ "adi" ]." ".$tek_ogrenci[ "soyadi" ]; ?></h3>
							<input type="file" id="gizli_input_file" name = "input_ogrenci_resim" style = "display:none;" name = "resim" accept="image/gif, image/jpeg, image/png"  onchange="resimOnizle(this)"; />
							<br><h5 class="float-right text-olive">Kişisel Bilgiler</h5><br><hr style="border: 2px solid green; border-radius: 5px;" >
							
							<div class="form-group">
								<label  class="control-label">Uzmanlık Dalı</label>
								<select class="form-control select2" name = "uzmanlik_dali_id" required >
									<option>Seçiniz...</option>
									<?php 
										foreach( $uzmanlik_dallari AS $uzmanlik_dali ){
											echo '<option value="'.$uzmanlik_dali[ "id" ].'" '.( $tek_ogrenci[ "uzmanlik_dali_id" ] == $uzmanlik_dali[ "id" ] ? "selected" : null) .'>'.$uzmanlik_dali[ "adi" ].'</option>';
										}

									?>
								</select>
							</div>
							<div class="form-group">
								<label class="control-label">TC Kimlik No</label>
								<input required type="text" class="form-control form-control-sm" name ="tc_kimlik_no" value = "<?php echo $tek_ogrenci[ "tc_kimlik_no" ]; ?>"  autocomplete="off">
							</div>

							<div class="form-group">
								<label class="control-label">Öğrenci No</label>
								<input required type="text" class="form-control form-control-sm" name ="ogrenci_no" value = "<?php echo $tek_ogrenci[ "ogrenci_no" ]; ?>"  autocomplete="off">
							</div>

							<div class="form-group">
								<label class="control-label">Adı</label>
								<input required type="text" class="form-control form-control-sm" name ="adi" value = "<?php echo $tek_ogrenci[ "adi" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Soyadı</label>
								<input required type="text" class="form-control form-control-sm" name ="soyadi" value = "<?php echo $tek_ogrenci[ "soyadi" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Doğum Tarihi</label>
								<div class="input-group date" id="dogum_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#dogum_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#dogum_tarihi" data-toggle="datetimepicker" name="dogum_tarihi" value="<?php if( $tek_ogrenci[ 'dogum_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_ogrenci[ 'dogum_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Doğum Yeri</label>
								<input required type="text" class="form-control form-control-sm" name ="dogum_yeri" value = "<?php echo $tek_ogrenci[ "dogum_yeri" ]; ?>"  autocomplete="off">
							</div>
							<br><h5 class="float-left text-olive">İletişim Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px;" >
							<div class="form-group">
								<label class="control-label">Cep Telefonu</label>
								<input required type="tel" class="form-control form-control-sm" name ="cep_tel" value = "<?php echo $tek_ogrenci[ "cep_tel" ]; ?>" pattern="[0-9]{10}" placeholder="5555555555" autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">E Mail</label>
								<input required type="email" class="form-control form-control-sm" name ="email" value = "<?php echo $tek_ogrenci[ "email" ]; ?>"  autocomplete="off">
							</div>
							<div class="form-group">
								<label class="control-label">Adres</label>
								<textarea name="adres" class="form-control form-control-sm" ><?php echo $tek_ogrenci[ "adres" ]; ?></textarea>
							</div>
							<br><h5 class="float-right text-olive">TUS Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px;" >
							<div class="form-group">
								<label class="control-label">TUS Dönemi</label>
								<input required type="text" class="form-control form-control-sm" name ="tus_donemi" value = "<?php echo $tek_ogrenci[ "tus_donemi" ]; ?>"  autocomplete="off">
							</div>									
							<div class="form-group">
								<label class="control-label">TUS Puanı</label>
								<input required type="number" min="0.01" max="100.0" step="0.01" class="form-control form-control-sm" name ="tus_puani" value = "<?php echo $tek_ogrenci[ "tus_puani" ]; ?>"  autocomplete="off">
							</div>
							<br><h5 class="float-left text-olive">Uzmanlık Eğitimi Bilgileri</h5><br><hr style="border: 2px solid green; border-radius: 5px;" >
							<div class="form-group">
								<label class="control-label">Başlama Tarihi</label>
								<div class="input-group date" id="baslama_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#baslama_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#baslama_tarihi" data-toggle="datetimepicker" name="baslama_tarihi" value="<?php if( $tek_ogrenci[ 'baslama_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_ogrenci[ 'baslama_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Bitirme Tarihi</label>
								<div class="input-group date" id="bitis_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#bitis_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#bitis_tarihi" data-toggle="datetimepicker" name="bitis_tarihi" value="<?php if( $tek_ogrenci[ 'bitis_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_ogrenci[ 'bitis_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label">Tez Teslim Tarihi</label>
								<div class="input-group date" id="tez_tarihi" data-target-input="nearest">
									<div class="input-group-append" data-target="#tez_tarihi" data-toggle="datetimepicker">
										<div class="input-group-text"><i class="fa fa-calendar"></i></div>
									</div>
									<input required type="text" data-target="#tez_tarihi" data-toggle="datetimepicker" name="tez_tarihi" value="<?php if( $tek_ogrenci[ 'tez_tarihi' ] !='' ){echo date('d.m.Y',strtotime($tek_ogrenci[ 'tez_tarihi' ] ));}//else{ echo date('d.m.Y'); } ?>" class="form-control form-control-sm datetimepicker-input" data-target="#datetimepicker1"/>
								</div>
							</div>
							<div class="form-group">
								<label  class="control-label">Eğitim Danışmanı</label>
								<select class="form-control form-control-sm select2" name = "egitim_danisman_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $ogretim_elemanlari AS $ogretim_elemani ){
											echo '<option value="'.$ogretim_elemani[ "id" ].'" '.( $tek_ogrenci[ "egitim_danisman_id" ] == $ogretim_elemani[ "id" ] ? "selected" : null) .'>'.$ogretim_elemani[ "adi_soyadi" ].'</option>';
										}

									?>
								</select>
							</div>
							<div class="form-group">
								<label  class="control-label">Tez Danışmanı</label>
								<select class="form-control form-control-sm select2" name = "tez_danisman_id" required>
									<option>Seçiniz...</option>
									<?php 
										foreach( $ogretim_elemanlari AS $ogretim_elemani ){
											echo '<option value="'.$ogretim_elemani[ "id" ].'" '.( $tek_ogrenci[ "tez_danisman_id" ] == $ogretim_elemani[ "id" ] ? "selected" : null) .'>'.$ogretim_elemani[ "adi_soyadi" ].'</option>';
										}

									?>
								</select>
							</div>
							<br><h5 class="float-right text-olive">Şifre Değiştir</h5><br><hr style="border: 2px solid green; border-radius: 5px;" >
							<div class="form-group">
								<label class="control-label">Şifre</label>
								<input required type="password" minlength="6" class="form-control form-control-sm" name ="sifre" value = "<?php echo $tek_ogrenci[ "sifre" ]; ?>"  autocomplete="off">
							</div>
						</div>
						<div class="card-footer">
							<button modul= 'ogrenciler' yetki_islem="<?php echo $kaydet_buton_yetki_islem; ?>" type="submit" class="<?php echo $kaydet_buton_cls; ?>"><span class="fa fa-save"></span> <?php echo $kaydet_buton_yazi; ?></button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</section>
<script>
/* Kullanıcı resmine tıklayınca file nesnesini tetikle*/
$( function() {
	$( "#ogrenci_kullanici_resim" ).click( function() {
		$( "#gizli_input_file" ).trigger( 'click' );
	});
});

/* Seçilen resim önizle */
function resimOnizle( input ) {
	if ( input.files && input.files[ 0 ] ) {
		var reader = new FileReader();
		reader.onload = function ( e ) {
			$( '#ogrenci_kullanici_resim' ).attr( 'src', e.target.result );
		};
		reader.readAsDataURL( input.files[ 0 ] );
	}
}
</script>
<script type="text/javascript">
	var simdi = new Date(); 
	//var simdi="11/25/2015 15:58";
	$(function () {
		$('#dogum_tarihi').datetimepicker({
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
	
	$(function () {
		$('#baslama_tarihi').datetimepicker({
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
	
	$(function () {
		$('#bitis_tarihi').datetimepicker({
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
	
	$(function () {
		$('#tez_tarihi').datetimepicker({
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
	

	
</script>
<script type="text/javascript">

// ESC tuşuna basınca formu temizle
document.addEventListener( 'keydown', function( event ) {
	if( event.key === "Escape" ) {
		document.getElementById( 'yeni_ogretim_elemanlari' ).click();
	}
});

var tbl_ogrenciler = $( "#tbl_ogrenciler" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_ogrenciler_wrapper .col-md-6:eq(0)');



$('#card_ogrenciler').on('maximized.lte.cardwidget', function() {
	var tbl_ogrenciler = $( "#tbl_ogrenciler" ).DataTable();
	var column = tbl_ogrenciler.column(  tbl_ogrenciler.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenciler.column(  tbl_ogrenciler.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_ogrenciler').on('minimized.lte.cardwidget', function() {
	var tbl_ogrenciler = $( "#tbl_ogrenciler" ).DataTable();
	var column = tbl_ogrenciler.column(  tbl_ogrenciler.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenciler.column(  tbl_ogrenciler.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>