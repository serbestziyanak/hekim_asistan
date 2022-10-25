<?php
$fn = new Fonksiyonlar();

$islem          					= array_key_exists( 'islem', $_REQUEST )  		? $_REQUEST[ 'islem' ] 	    : 'ekle';
$ders_yili_donem_id          		= array_key_exists( 'ders_yili_donem_id', $_REQUEST ) ? $_REQUEST[ 'ders_yili_donem_id' ] 	: 0;
$rotasyon_id          				= array_key_exists( 'rotasyon_id', $_REQUEST ) 		? $_REQUEST[ 'rotasyon_id' ] 	: -1;
$ogrenci_id          				= array_key_exists( 'ogrenci_id', $_REQUEST ) 		? $_REQUEST[ 'ogrenci_id' ] 	: 0;

$kaydet_buton_yazi		= $islem == "guncelle"	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $islem == "guncelle"	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';


/* SEG dosyalarından gelen mesaj */
if( array_key_exists( 'sonuclar', $_SESSION ) ) {
	$mesaj                 			= $_SESSION[ 'sonuclar' ][ 'mesaj' ];
	$mesaj_turu            			= $_SESSION[ 'sonuclar' ][ 'hata' ] ? 'kirmizi' : 'yesil';
	unset( $_SESSION[ 'sonuclar' ] );
	echo "<script>mesajVer('$mesaj', '$mesaj_turu')</script>";
}

$donem_desleri_id	= array_key_exists( 'donem_desleri_id'	,$_REQUEST ) ? $_REQUEST[ 'donem_desleri_id' ]	: 0;

$SQL_mufredat_getir = <<< SQL
SELECT
	*
FROM 
	tb_mufredat
WHERE 
	rotasyon_id			= ? AND
	uzmanlik_dali_id 	= ?
SQL;

$SQL_donemler_getir = <<< SQL
SELECT 
	dyd.id as id, 
	d.id AS donem_id,
	d.adi AS adi 
FROM 
	tb_ders_yili_donemleri AS dyd
LEFT JOIN 
	tb_donemler AS d ON d.id = dyd.donem_id
WHERE 
	dyd.ders_yili_id = ? AND
	dyd.program_id 	 = ?
SQL;

/**/
$SQL_komiteler_getir = <<< SQL
SELECT
	k.adi,
	k.id,
	k.ders_kodu 
FROM 
	tb_komiteler AS k
LEFT JOIN tb_ders_yili_donemleri AS dyd ON dyd.id = k.ders_yili_donem_id
WHERE 
	dyd.ders_yili_id 	= ? AND 
	dyd.donem_id 		= ? AND
	dyd.program_id 		= ?
SQL;

$SQL_dersler_getir = <<< SQL
SELECT 
	d.* 
FROM 
	tb_donem_dersleri AS dd
LEFT JOIN 
	tb_dersler AS d ON d.id = dd.ders_id
WHERE 
	dd.ders_yili_donem_id = ?
SQL;

$SQL_donemler_getir = <<< SQL
SELECT
	dyd.id AS id,
	d.adi AS adi
FROM
	tb_ders_yili_donemleri AS dyd
LEFT JOIN tb_donemler AS d ON d.id = dyd.donem_id 
WHERE
	d.universite_id 	= ? AND
	dyd.ders_yili_id 	= ? AND
	dyd.program_id 		= ? AND
	d.aktif 			= 1
SQL;

$SQL_soru_tipi_getir = <<< SQL
SELECT
	*
FROM
	tb_soru_turleri
WHERE
	universite_id 	= ?
SQL;

$SQL_duzeyler = <<< SQL
SELECT
	*
FROM
	tb_duzeyler
SQL;

$SQL_yontemler = <<< SQL
SELECT
	*
FROM
	tb_yontemler
SQL;

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

$SQL_ogrenci_mufredat_degerlendirme = <<< SQL
SELECT
	*
FROM
	tb_ogrenci_mufredat_degerlendirme
WHERE
	ogrenci_id 		= ? AND
	mufredat_id 	= ?
SQL;

$donemler 	 			= $vt->select( $SQL_donemler_getir, array( $_SESSION[ "universite_id" ], $_SESSION[ "aktif_yil" ], $_SESSION[ "program_id" ] ) )[2];
@$_SESSION[ "donem_id" ] = $_SESSION[ "donem_id" ] ? $_SESSION[ "donem_id" ]  : $donemler[ 0 ][ "id" ];
@$mufredatlar 			= $vt->select($SQL_mufredat_getir, array(  $rotasyon_id, $_SESSION[ "uzmanlik_dali_id" ] ) )[ 2 ];
$dersler 	 			= $vt->select($SQL_dersler_getir, array( $_SESSION[ "donem_id" ] ) )[ 2 ];
$soruTurleri 	 		= $vt->select($SQL_soru_tipi_getir, array( $_SESSION[ "universite_id" ] ) )[ 2 ];
$duzeyler 	 			= $vt->select($SQL_duzeyler, array(  ) )[ 2 ];
$yontemler 	 			= $vt->select($SQL_yontemler, array(  ) )[ 2 ];
$rotasyonlar			= $vt->select( $SQL_tum_rotasyonlar, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];
$ogrenciler				= $vt->select( $SQL_tum_ogrenciler, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];


?>

<div class="row">
	<div class="col-md-12">
		<div class="card card-dark ">
			<div class="card-header">
				<h3 class="card-title">Müfredat</h3>
				<div class="form-group  float-right mb-0">
					<label class="control-label">Rotasyon : </label> 
					<select class="form-control form-control-sm select2" name="ders_id" required  onchange="dersSecimi(this.value);">
						<option value="">Rotasyon Seçiniz...</option>
						<option value="-1" <?php echo -1 == @$rotasyon_id*1 ? 'selected' : null; ?>>
							<?php echo $_SESSION[ 'uzmanlik_dali_adi' ];?>
						</option>
						<?php foreach( $rotasyonlar AS $rotasyon ){ ?>
							<option value="<?php echo $rotasyon[ "id" ];?>" <?php echo $rotasyon[ "id" ] == @$rotasyon_id ? 'selected' : null; ?>>
								<?php echo $rotasyon[ "rotasyon_uzmanlik_dali_adi" ];?>
							</option>
						<?php } ?>
					</select>
				</div>	
			</div>
			<!-- /.card-header -->
			<div class="card-body ">

				<form class="form-horizontal" action = "index.php" method = "GET" >
					<div class="form-group">
						<input type="hidden" name="modul" value="ogrenciMufredatDegerlendirme">
						<label  class="control-label">Öğrenci</label>
						<select class="form-control select2" name = "ogrenci_id" required >
							<option>Seçiniz...</option>
							<?php 
								foreach( $ogrenciler AS $ogrenci ){
									echo '<option value="'.$ogrenci[ "id" ].'" '.( $ogrenci_id == $ogrenci[ "id" ] ? "selected" : null) .'>'.$ogrenci[ "ad_soyadi" ].'</option>';
								}

							?>
						</select>
						<br>
						<button modul= 'ogrenciMufredatDegerlendirme' yetki_islem="ogrenci_sec" type="submit" class="btn btn-sm btn-primary"> Öğrenci Seç</button>
					</div>
				</form>
				<?php
				if( isset($ogrenci_id) and $ogrenci_id>0 ){
				?>
                <table class="table table-hover ">
                  <tbody>
					<?php
					//var_dump($mufredatlar);
						function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id){
							$html = "<tr class='expandable-body'>
											<td>
												<div class='p-0'>
													<table class='table table-hover'>
														<tbody>";

							foreach ($kategoriler as $kategori){
								if( $kategori['ust_id'] == $parent ){
									if( $parent == 0 ) {
										$renk = 1;
									} 

									if( $kategori['kategori'] == 0){
										$isaret = "";
										$ogrenci_mufredat_degerlendirme	= $vt->selectSingle( $SQL_ogrenci_mufredat_degerlendirme, array( $ogrenci_id, $kategori['id'] ) )[ 2 ];
										if( $ogrenci_mufredat_degerlendirme['ogrenci_id'] > 0 ){
											$islem = "guncelle";
											if( $ogrenci_mufredat_degerlendirme['degerlendirme'] == 1 )
												//$isaret = "<i class='fas fa-check-circle text-success'></i>";
												$isaret = "<h6><span class='badge badge-success'>Başarılı</span></h6>";
											if( $ogrenci_mufredat_degerlendirme['degerlendirme'] == 0 )
												//$isaret = "<i class='fas fa-times-circle text-danger'></i>";
												$isaret = "<h6><span class='badge badge-danger'>Başarısız</span></h6>";

										}else{
											$islem="ekle";
										}
										$html .= "
												<tr class='bg-renk7'>
													<td class='degerlendirmeEkle' role='button' data-id='$kategori[id]' data-kategori_ad ='$kategori[adi]' data-degerlendirme='$ogrenci_mufredat_degerlendirme[degerlendirme]' data-islem='$islem'  data-modal='degerlendirme_ekle'>
														<a role='button' class='text-dark degerlendirmeEkle' id='$kategori[id]' data-id='$kategori[id]' data-kategori_ad ='$kategori[adi]' data-degerlendirme='$ogrenci_mufredat_degerlendirme[degerlendirme]' data-islem='$islem'  data-modal='degerlendirme_ekle'>$kategori[adi]</a>
														$isaret
													</td>
												</tr>";									

									}
									if( $kategori['kategori'] == 1 ){

											$html .= "
													<tr data-widget='expandable-table' aria-expanded='true' class='bg-renk$renk border-0'>
														<td>
														$kategori[adi]
														<i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
														</td>
													</tr>
												";								
											$renk++;
											$html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id);
											
											$renk--;
										
									}
								}

							}
							$html .= '
													</tbody>
												</table>
											</div>
										</td>
									</tr>';
							return $html;
						}
						if( count( $mufredatlar ) ) 
							echo kategoriListele3($mufredatlar,0,0, $vt, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id);
						

					?>
                  </tbody>
                </table>
				<?php if ( count( $mufredatlar ) < 1) echo '<div class="alert alert-warning m-5">Bu uzmanlık dalı için müfredat eklenmemiş</div>'; ?>
				<?php
				}
				?>
			</div>
			<!-- /.card -->
		</div>
		<!-- right column -->
	</div>

	<div id="gorevli"></div>

	<!-- UYARI MESAJI VE BUTONU-->
	<div class="modal fade" id="sil_onay">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Lütfen Dikkat!</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p><b>Bu Kaydı silmeniz durumunda kategori Altında bulunan diğer kategoriler silinecektir.</b></p>
					<p>Bu kaydı <b>Silmek</b> istediğinize emin misiniz?</p>
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-success" data-dismiss="modal">İptal</button>
					<a type="button" class="btn btn-danger btn-evet">Evet</a>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!--MUFREDAT EKLEME MODALI-->


	<!--MUFREDAT EKLEME MODALI-->
	<div class="modal fade" id="degerlendirme_ekle">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-olive text-white">
					<h6 class="modal-title">Müfredat Değerlendirme</h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-horizontal" action = "_modul/ogrenciMufredatDegerlendirme/ogrenciMufredatDegerlendirmeSEG.php" method = "POST">
					<div class="modal-body">
						<input type="hidden" id="mufredat_id"  name="mufredat_id">
						<input type="hidden" name="rotasyon_id" value="<?php echo $rotasyon_id;?>" >
						<input type="hidden" name="uzmanlik_dali_id" value="<?php echo $_SESSION[ 'uzmanlik_dali_id' ];?>" >
						<input type="hidden" name="ogrenci_id" value="<?php echo $ogrenci_id;?>" >
						<input type="hidden" name="islem" id="islem" value="ekle" >
						<div class="form-group">
							<label class="control-label" id="kategori_ad"></label>
						</div>
						<div class="form-group clearfix">
							<div class="icheck-success ">
								<input type="radio" name="degerlendirme" value="1" id="degerlendirme_basarili">
								<label for="degerlendirme_basarili">
									Başarılı
								</label>
							</div>
							<div class="icheck-danger ">
								<input type="radio" name="degerlendirme" value="0" id="degerlendirme_basarisiz">
								<label for="degerlendirme_basarisiz">
									Başarısız
								</label>
							</div>
							<div class="icheck-warning ">
								<input type="radio" name="degerlendirme" value="-1" id="degerlendirme_degerlendirilmedi">
								<label for="degerlendirme_degerlendirilmedi">
									Değerlendirilmedi
								</label>
							</div>
						</div>


					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-danger" data-dismiss="modal">İptal</button>
						<button type="submit" class="btn btn-success">Kaydet</button>
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>





	
	<script>

		var soruSecenekleri = ["","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","R","S"];
		$( '#sil_onay' ).on( 'show.bs.modal', function( e ) {
			$( this ).find( '.btn-evet' ).attr( 'href', $( e.relatedTarget ).data( 'href' ) );
		} );
		
	    $('.degerlendirmeEkle').on("click", function(e) { 
			document.getElementById("degerlendirme_basarisiz").checked = false;
			document.getElementById("degerlendirme_basarili").checked = false;
			document.getElementById("degerlendirme_degerlendirilmedi").checked = false;

	        var mufredat_id		 = $(this).data("id");
	        var kategori_ad		 = $(this).data("kategori_ad");
	        var modal			 = $(this).data("modal");
	        var islem			 = $(this).data("islem");
	        var degerlendirme	 = $(this).data("degerlendirme");

	        document.getElementById("mufredat_id").value 	 = mufredat_id;
	        document.getElementById("kategori_ad").innerHTML = kategori_ad;
	        document.getElementById("islem").value = islem;
				if( degerlendirme == "0" ){
					document.getElementById("degerlendirme_basarisiz").checked = true;
				}
				if( degerlendirme == "1" ){
					document.getElementById("degerlendirme_basarili").checked = true;
				}
				if( degerlendirme == "-1" ){
					document.getElementById("degerlendirme_degerlendirilmedi").checked = true;
				}

	        $('#'+ modal).modal( "show" );
	    });

	    $('.KategoriDuzenle').on("click", function(e) { 
	        var id      	= $(this).data("id");
	        var kategori_ad = $(this).data("kategori_ad_duzenle");
	        var modal 		= $(this).data("modal");
	        var islem 		= $(this).data("islem");

	        document.getElementById("kategori_duzenle_mufredat_id").value = id;
	        document.getElementById("kategori_ad_duzenle").value = kategori_ad;
	        document.getElementById("kategori_duzenle_islem").value = islem;

	        $('#kategori_duzenle').modal( "show" );
	    });

		
		$('.YetkinlikEkle').on("click", function(e) { 
			var modal 						= $(this).data("modal");
			var kategori_ad 				= $(this).data("kategori_ad");
			var modal 						= $(this).data("modal");
			var kategori 					= $(this).data("kategori");
			var islem 						= $(this).data("islem");
			var ust_id 						= $(this).data("id");
			var duzeyler_aciklama 			= "";
			var duzeyler_options 			= "";
			var duzeyler_selected_option	= "";
			var yontemler_aciklama 			= "";
			var yontemler_options 			= "";
			var yontemler_selected_option	= "";
			var kidem_selected_option 		= "";
			


			document.getElementById("ust_id2").value = ust_id;
			var duzeyler = <?php echo json_encode($duzeyler, JSON_UNESCAPED_UNICODE); ?>;// don't use quotes
			$.each(duzeyler, function(key, value) {
				duzeyler_options = duzeyler_options + "<option value="+ value.kodu +" >"+value.kodu+"</option>";
				duzeyler_aciklama = duzeyler_aciklama + "<small><b>"+ value.kodu +"</b> : "+ value.aciklama +"</small><br>";
			});
			document.getElementById("duzey_id2").innerHTML = duzeyler_options;
			document.getElementById("duzeyler_aciklama2").innerHTML = duzeyler_aciklama;

			for( var i=1;i<=6;i++ ){
				document.getElementById("kidem_id2").innerHTML += "<option value="+ i +" >"+i+"</option>";
			}

			var yontemler = <?php echo json_encode($yontemler, JSON_UNESCAPED_UNICODE); ?>;// don't use quotes
			$.each(yontemler, function(key, value) {
				yontemler_options = yontemler_options + "<option value="+ value.kodu +" >"+value.kodu+"</option>";
				yontemler_aciklama = yontemler_aciklama + "<small><b>"+ value.kodu +"</b> : "+ value.aciklama +"</small><br>";
			});
			document.getElementById("yontem_id2").innerHTML = yontemler_options;
			document.getElementById("yontemler_aciklama2").innerHTML = yontemler_aciklama;

			document.getElementById("islem2").value 					= islem;
		        
		    $('#'+ modal).modal( "show" );
	    });
		$('.yetkinlikDuzenle').on("click", function(e) { 
			var modal 		= $(this).data("modal");
			var kategori_ad 				= $(this).data("kategori_ad_duzenle");
			var modal 						= $(this).data("modal");
			var kategori 					= $(this).data("kategori");
			var islem 						= $(this).data("islem");
			var mufredat_id 				= $(this).data("id");
			var kidem						= $(this).data("yetkinlik_kidem");
			var yetkinlik_duzeyler			= $(this).data("yetkinlik_duzeyler");
			var duzeyler_aciklama 			= "";
			var duzeyler_options 			= "";
			var duzeyler_selected_option	= "";
			var yetkinlik_yontemler			= $(this).data("yetkinlik_yontemler");
			var yontemler_aciklama 			= "";
			var yontemler_options 			= "";
			var yontemler_selected_option	= "";
			var kidem_selected_option 		= "";
			

			document.getElementById("mufredat_id").value 		 	= mufredat_id;

			document.getElementById("yetkinlik_ad_duzenle").value 	= kategori_ad;
			const yetkinlik_duzeyler_dizi = yetkinlik_duzeyler.split(",");
			const yetkinlik_yontemler_dizi = yetkinlik_yontemler.split(",");

			var duzeyler = <?php echo json_encode($duzeyler, JSON_UNESCAPED_UNICODE); ?>;// don't use quotes
			$.each(duzeyler, function(key, value) {
				//document.write('stuff : ' + value.id + ", " + value.kodu + "<hr>");
				if( yetkinlik_duzeyler_dizi.includes(value.kodu) )
					var duzeyler_selected_option = "selected";
				duzeyler_options = duzeyler_options + "<option value="+ value.kodu +" "+ duzeyler_selected_option +">"+value.kodu+"</option>";
				duzeyler_aciklama = duzeyler_aciklama + "<small><b>"+ value.kodu +"</b> : "+ value.aciklama +"</small><br>";
			});
			document.getElementById("duzey_id").innerHTML = duzeyler_options;
			document.getElementById("duzeyler_aciklama").innerHTML = duzeyler_aciklama;

			for( var i=1;i<=6;i++ ){
				if( kidem == i )
					var kidem_selected_option = "selected";
				else
					var kidem_selected_option = "";
				document.getElementById("kidem_id").innerHTML += "<option value="+ i +" "+ kidem_selected_option +">"+i+"</option>";
			}

			var yontemler = <?php echo json_encode($yontemler, JSON_UNESCAPED_UNICODE); ?>;// don't use quotes
			$.each(yontemler, function(key, value) {
				//document.write('stuff : ' + value.id + ", " + value.kodu + "<hr>");
				if( yetkinlik_yontemler_dizi.includes(value.kodu) )
					var yontemler_selected_option = "selected";
				yontemler_options = yontemler_options + "<option value="+ value.kodu +" "+ yontemler_selected_option +">"+value.kodu+"</option>";
				yontemler_aciklama = yontemler_aciklama + "<small><b>"+ value.kodu +"</b> : "+ value.aciklama +"</small><br>";
			});
			document.getElementById("yontem_id").innerHTML = yontemler_options;
			document.getElementById("yontemler_aciklama").innerHTML = yontemler_aciklama;

			document.getElementById("islem").value 					= islem;
		        
		    $('#'+ modal).modal( "show" );
	    });

		$('.gorevli').on("click", function(e) { 
	        var id 	        = $(this).data("id");
	        var data_islem  = $(this).data("islem");
	        var data_url    = $(this).data("url");
	        var data_modul  = $(this).data("modul");
	        var div         = $(this).data("div");
	        $("#"+div).empty();
	        $.post(data_url, { islem : data_islem, id : id, modul : data_modul }, function (response) {
	            $("#"+div).append(response);
	            $('#gorevliEkleModal').modal( "show" )
	        });
	    });
	    function dersSecimi(rotasyon_id){
			var  url 		= window.location;
			var origin		= url.origin;
			var path		= url.pathname;
			var search		= (new URL(document.location)).searchParams;
			var modul   	= search.get('modul');
			var rotasyon_id = "&rotasyon_id="+rotasyon_id;
			
			window.location.replace(origin + path+'?modul='+modul+''+rotasyon_id);
		}

		function secenekOku(e){
			var metin 		 	= $('option:selected',e).data("metin");
			var coklu_secenek 	= $('option:selected',e).data("coklu_secenek");
			$("#secenekler").empty();
			if ( coklu_secenek == 0 && metin == 0 ){
				$("#secenekEkleBtn").empty();
				$("#secenekEkleBtn").append('<span class="btn btn-secondary float-right " id="secenekEkle" data-secenek_tipi="radio" onclick="secenekEkle(this);">Seçenek Ekle</span><div class="clearfix"></div>');
				
			}else if( coklu_secenek == 1 && metin == 0 ){
				$("#secenekEkleBtn").empty();
				$("#secenekEkleBtn").append('<span class="btn btn-secondary float-right " id="secenekEkle" data-secenek_tipi="checkbox" onclick="secenekEkle(this);">Seçenek Ekle</span><div class="clearfix"></div>');
			}else if(coklu_secenek == 0 && metin == 1){
				$("#secenekEkleBtn").empty();
				$("#secenekEkleBtn").append('<div class="alert alert-warning">Açık Uçlu Soru Tipi Secilmiştir!</div>');

			}
		}

		function harflendir(){
			/*Şıkları isimlerini güncelleme */
			var secenekSayisi = 1;
			$(".soruSecenek").each(function( index, element ) {
	            $(this).empty();
	            $(this).append(soruSecenekleri[secenekSayisi] + ' ) &nbsp;');
	            secenekSayisi = secenekSayisi+1;
	        })	 

			/*Secilen input radi ve checkbxların isimlerini ve idlerini değiştirme*/
	        var inputSayisi = 1;
	        $(".inputSecenek").each(function( index, element ) {
	           	this.value 	= soruSecenekleri[inputSayisi];
	           	this.id 	= soruSecenekleri[inputSayisi];
	           	inputSayisi +=1;
	        })

	        /*Textarea isimlerini değitirme*/
	        var cevapSayisi = 1;
	        $(".textareaSecenek").each(function( index, element ) {
	           	this.name = 'cevap-'+soruSecenekleri[cevapSayisi];
	           	cevapSayisi +=1;
	        })

	        //input Labellerine ait for degerlerini değiştirme
	        var labelSayisi1 = 1;
	        $(".inputLabel1").each(function( index, element ) {
	           	this.setAttribute("for",soruSecenekleri[labelSayisi1]);
	           	labelSayisi1 +=1;
	        })
	        var labelSayisi2 = 1;
	        $(".inputLabel2").each(function( index, element ) {
	           	this.setAttribute("for",soruSecenekleri[labelSayisi2]);
	           	labelSayisi2 +=1;
	        })
	        

	        return secenekSayisi;
		}
		
		function secenekEkle(e) {
			var tip 			= $(e).data("secenek_tipi"); 
			var secenekSayisi 	= 1;
			secenekSayisi 		=  harflendir();
			var required 		= "";

			if( tip == "radio" ){
				required = "required";
			}
	        var data = '<div class="secenek">'+
							'<label for="'+ soruSecenekleri[ secenekSayisi ] +'" class="col-sm m-1 btn text-left bg-light inputLabel2">'+
								'<label class="float-left soruSecenek">' + soruSecenekleri[secenekSayisi] + ' ) &nbsp;</label>'+
								'<div class="icheck-success d-inline">'+
									'<input type="'+ tip +'" name="dogruSecenek[]" class="inputSecenek" id="'+ soruSecenekleri[ secenekSayisi ] +'" value="'+ soruSecenekleri[ secenekSayisi ] +'" '+ required +'>'+
									'<label for ="'+ soruSecenekleri[ secenekSayisi ] +'" class="d-flex inputLabel1">'+
										'<textarea name="cevap-'+ soruSecenekleri[ secenekSayisi ]  +'"  class="textareaSecenek form-control col-sm-12" rows="1" required></textarea>'+
										'<span  class="secenekSil position-absolute r-2 t-1" ><i class="fas fa-trash-alt" ></i></span>'+
									'</label>'+	
								'</div>'+
							'</label>'+
						'</div>';
	        $("#secenekler").append(data);
	    };

		$('#secenekler').on("click", ".secenekSil", function (e) {
		    $(this).closest(".secenek").remove();
		    harflendir();
		});


	</script>
