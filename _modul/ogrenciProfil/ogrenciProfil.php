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
$id				  = array_key_exists( 'id'	,$_REQUEST ) ? $_REQUEST[ 'id' ]	: 0;
$ogrenci_id	= array_key_exists( 'ogrenci_id'	,$_REQUEST ) ? $_REQUEST[ 'ogrenci_id' ]	: 0;


$satir_renk				= $id > 0	? 'table-warning'						: '';
$kaydet_buton_yazi		= $id > 0	? 'Güncelle'							: 'Kaydet';
$kaydet_buton_cls		= $id > 0	? 'btn btn-warning btn-sm pull-right'	: 'btn btn-success btn-sm pull-right';

$SQL_ogrenci_bilgileri = <<< SQL
SELECT 
	o.*
	,CONCAT( o.adi, ' ', o.soyadi ) AS adi_soyadi
	,u.adi as uzmanlik_dali_adi
	,CONCAT( unv.adi,' ',oe.adi, ' ', oe.soyadi ) as egitim_danisman_adi
	,CONCAT( unvt.adi,' ',oet.adi, ' ', oet.soyadi ) as tez_danisman_adi
FROM 
	tb_ogrenciler AS o
LEFT JOIN tb_uzmanlik_dallari AS u ON u.id = o.uzmanlik_dali_id
LEFT JOIN tb_ogretim_elemanlari AS oe ON oe.id = o.egitim_danisman_id
LEFT JOIN tb_unvanlar AS unv ON unv.id = oe.unvan_id
LEFT JOIN tb_ogretim_elemanlari AS oet ON oet.id = o.tez_danisman_id
LEFT JOIN tb_unvanlar AS unvt ON unvt.id = oet.unvan_id
WHERE
	o.universite_id 	  = ? AND
	o.uzmanlik_dali_id 	= ? AND
	o.aktif 		  	    = 1 AND
  o.id                = ?
SQL;


$SQL_ogrenci_tezi = <<< SQL
SELECT 
	os.*
	,concat(o.adi," ",o.soyadi) AS ogrenci_adi_soyadi
FROM 
	tb_ogrenci_tezleri AS os
LEFT JOIN tb_ogrenciler AS o ON o.id = os.ogrenci_id
WHERE
	os.uzmanlik_dali_id = ? AND 
  o.universite_id     = ? AND
  o.id = ?
SQL;

$SQL_ogrenci_makaleleri = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenci_makaleleri
WHERE
	universite_id    	= ? AND
	uzmanlik_dali_id 	= ? AND
  ogrenci_id        = ?
SQL;

$SQL_ogrenci_bilimsel_toplantilar = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenci_bilimsel_toplantilar
WHERE
	universite_id    	= ? AND
	uzmanlik_dali_id 	= ? AND
  ogrenci_id        = ?
SQL;

$SQL_ogrenci_klinik_sunulari = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenci_klinik_sunulari
WHERE
	universite_id    	= ? AND
	uzmanlik_dali_id 	= ? AND
  ogrenci_id        = ?
SQL;

$SQL_ogrenci_tez_izlemeleri = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenci_tez_izlemeleri
WHERE
	universite_id    	= ? AND
	uzmanlik_dali_id 	= ? AND
  ogrenci_id        = ?
SQL;

$SQL_mufredat_getir = <<< SQL
SELECT
	*
FROM 
	tb_mufredat
WHERE 
	rotasyon_id			= ? AND
	uzmanlik_dali_id 	= ?
SQL;

$SQL_mufredat_getir_zaman_tuneli = <<< SQL
SELECT
	*
FROM 
	tb_mufredat
WHERE 
	id = ?
SQL;

$SQL_zaman_tuneli = <<< SQL
SELECT
	*
FROM 
	view_zaman_tuneli
WHERE 
	ogrenci_id  			= ? AND
  universite_id     = ? 
ORDER BY tarih desc
SQL;

$SQL_ogrenci_mufredat_degerlendirme = <<< SQL
SELECT
	omd.*
	,concat(oe.adi," ",oe.soyadi) as ogretim_elemani_adi
	,m.duzey
	,m.yontem
	,m.kidem
FROM
	tb_ogrenci_mufredat_degerlendirme as omd
LEFT JOIN tb_ogretim_elemanlari AS oe ON oe.id = omd.ogretim_elemani_id
LEFT JOIN tb_mufredat AS m ON m.id = omd.mufredat_id
WHERE
	omd.ogrenci_id 		= ? AND
	omd.universite_id	= ? AND
	omd.mufredat_id 	= ?
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

$ogrenci						            = $vt->selectSingle( $SQL_ogrenci_bilgileri, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'], $ogrenci_id ) )[ 2 ];
$ogrenci_tezi   		            = $vt->selectSingle( $SQL_ogrenci_tezi, array( $_SESSION[ 'uzmanlik_dali_id'],$_SESSION[ 'universite_id'], $ogrenci_id ) )[ 2 ];
$ogrenci_makaleleri	            = $vt->select( $SQL_ogrenci_makaleleri, array( $_SESSION[ 'uzmanlik_dali_id'],$_SESSION[ 'universite_id'], $ogrenci_id ) )[ 2 ];
$ogrenci_bilimsel_toplantilari  = $vt->select( $SQL_ogrenci_bilimsel_toplantilar, array( $_SESSION[ 'uzmanlik_dali_id'],$_SESSION[ 'universite_id'], $ogrenci_id ) )[ 2 ];
$ogrenci_klinik_sunulari        = $vt->select( $SQL_ogrenci_klinik_sunulari, array( $_SESSION[ 'uzmanlik_dali_id'],$_SESSION[ 'universite_id'], $ogrenci_id ) )[ 2 ];
$ogrenci_tez_izlemeleri         = $vt->select( $SQL_ogrenci_tez_izlemeleri, array( $_SESSION[ 'uzmanlik_dali_id'],$_SESSION[ 'universite_id'], $ogrenci_id ) )[ 2 ];
$mufredatlar               			= $vt->select($SQL_mufredat_getir, array(  -1, $_SESSION[ "uzmanlik_dali_id" ] ) )[ 2 ];
$zaman_tuneli              			= $vt->select($SQL_zaman_tuneli, array( $ogrenci_id,$_SESSION[ 'universite_id'] ) )[ 2 ];
$tum_ogrenciler            			= $vt->select( $SQL_tum_ogrenciler, array( $_SESSION[ 'universite_id'], $_SESSION[ 'uzmanlik_dali_id'] ) )[ 2 ];



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
				<?php if( $_SESSION[ 'kullanici_turu' ] != "ogrenci" ){ ?>
				<form class="form-horizontal" action = "index.php" method = "GET" >
					<div class="form-group">
						<input type="hidden" name="modul" value="ogrenciProfil">
						<label  class="control-label">Öğrenci</label>
						<select class="form-control select2" name = "ogrenci_id" required >
							<option value="">Seçiniz...</option>
							<?php 
								foreach( $tum_ogrenciler AS $tum_ogrenci ){
									echo '<option value="'.$tum_ogrenci[ "id" ].'" '.( $ogrenci_id == $tum_ogrenci[ "id" ] ? "selected" : null) .'>'.$tum_ogrenci[ "ad_soyadi" ].'</option>';
								}

							?>
						</select>
						<br>
						<button modul= 'ogrenciProfil' yetki_islem="ogrenci_sec" type="submit" class="btn btn-sm btn-primary"> Öğrenci Seç</button>
					</div>
				</form>
				<?php } ?>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-4">

            <!-- Profile Image -->
            <div class="card card-olive card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="resimler/<?php echo array_key_exists( 'resim'	,$ogrenci ) ? $ogrenci[ 'resim' ]	: 'resim_yok.png'; ?>"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center"><?php echo $ogrenci['adi_soyadi']; ?></h3>

                <p class="text-muted text-center"><?php echo $ogrenci['tc_kimlik_no']; ?></p>

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>Uzmanlık Dalı</b> <span class="float-right text-muted"><b><?php echo $ogrenci['uzmanlik_dali_adi']; ?></b></span>
                  </li>
                  <li class="list-group-item">
                    <b>Eğitim Danışmanı</b> <span class="float-right text-muted"><b><?php echo $ogrenci['egitim_danisman_adi']; ?></b></span>
                  </li>
                  <li class="list-group-item">
                    <b>Tez Danışmanı</b> <span class="float-right text-muted"><b><?php echo $ogrenci['tez_danisman_adi']; ?></b></span>
                  </li>
                </ul>

                <a href="?modul=ogrenciler&islem=guncelle&ogrenci_id=<?php echo $ogrenci['id']; ?>" class="btn btn-secondary btn-block"><b>Düzenle</b></a>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-olive">
              <div class="card-header">
                <h3 class="card-title">Hakkında</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <strong><i class="fas fa-book mr-1"></i> Makaleler</strong>
                <?php foreach( $ogrenci_makaleleri as $ogrenci_makale ){ ?>
                <p class="text-muted p-2">
                  <?php echo $ogrenci_makale[ 'adi' ]; ?>
                  (<b class="text-xs"><?php echo $ogrenci_makale[ 'dergi' ]; ?></b>)
                </p>
                <?php } ?>
                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Bilimsel Toplantılar</strong>

                <?php foreach( $ogrenci_bilimsel_toplantilari as $ogrenci_bilimsel_toplanti ){ ?>
                <p class="text-muted p-2">
                  <?php echo $ogrenci_bilimsel_toplanti[ 'adi' ]; ?>
                  (<b class="text-xs"><?php echo $ogrenci_bilimsel_toplanti[ 'yeri' ]." - ".$fn->tarihVer( $ogrenci_bilimsel_toplanti[ 'tarih' ] ); ?></b>)
                  <span class="text-muted text-xs">
                    <br><b><u>Sunular</u></b><br>
                    <?php echo nl2br($ogrenci_bilimsel_toplanti[ 'sunular' ]); ?>
                  </span>
                </p>
                <?php } ?>

                <hr>

                <strong><i class="fas fa-pencil-alt mr-1"></i> Klinik Sunuları</strong>

                <?php foreach( $ogrenci_klinik_sunulari as $ogrenci_klinik_sunu ){ ?>
                <p class="text-muted p-2">
                  <?php echo $ogrenci_klinik_sunu[ 'adi' ]; ?>
                  (<b class="text-xs"><?php echo $ogrenci_klinik_sunu[ 'yeri' ]." - ".$fn->tarihVer( $ogrenci_klinik_sunu[ 'tarih' ] ); ?></b>)
                </p>
                <?php } ?>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Tez Konusu</strong>

                <p class="text-muted p-2">
                  <?php echo $ogrenci_tezi[ 'tez_konusu' ]; ?>
                  <br>
                  <b class="text-xs pl-2">Tez Konusu Verilme Tarihi : </b><span class="text-xs"><?php echo $fn->tarihVer( $ogrenci_tezi[ 'tez_konusu_verilme_tarihi' ] ); ?></span>
                  <br>
                  <b class="text-xs pl-2">Akademik Kurul Onay Tarihi : </b><span class="text-xs"><?php echo $fn->tarihVer( $ogrenci_tezi[ 'tez_konusu_verilme_tarihi' ] ); ?></span>
                </p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Tez İzlemeleri</strong>

                <?php foreach( $ogrenci_tez_izlemeleri as $ogrenci_tez_izleme ){ ?>
                <p class="text-muted p-2">
                  <?php echo $ogrenci_tez_izleme[ 'aciklama' ]; ?>
                  (<b class="text-xs"><?php echo $ogrenci['tez_danisman_adi']." - ".$fn->tarihVer( $ogrenci_tez_izleme[ 'tarih' ] ); ?></b>)
                </p>
                <?php } ?>

              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-8">
            <div class="card card-olive card-tabs">
              <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs">
                  <li class="nav-item"><a class="nav-link" href="#activity" data-toggle="tab">Yetkinlikler</a></li>
                  <li class="nav-item"><a class="nav-link active" href="#timeline" data-toggle="tab">Zaman Tüneli</a></li>
                  <!--li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Settings</a></li-->
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="tab-pane" id="activity">
                    <?php
                    if( isset($ogrenci_id) and $ogrenci_id>0 ){
                    ?>
                            <table class="table table-hover ">
                              <tbody id="deneme">
                      <?php
                      //var_dump($mufredatlar);
                        function kategoriListele3( $kategoriler, $parent = 0, $renk = 0,$vt,$fn, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id){
                          if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){
                            $degerlendirme_ekle_class = "";
                          }else{
                            $degerlendirme_ekle_class = "degerlendirmeEkle";
                          }
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
                                $ogrenci_mufredat_degerlendirme	= $vt->selectSingle( $SQL_ogrenci_mufredat_degerlendirme, array( $ogrenci_id,$_SESSION[ 'universite_id'], $kategori['id'] ) )[ 2 ];
                                if( $ogrenci_mufredat_degerlendirme['ogrenci_id'] > 0 ){
                                  $degerlendirme_tarihi = $ogrenci_mufredat_degerlendirme[ 'guncelleme_tarihi' ];
                                  if( $degerlendirme_tarihi*1 == 0 )
                                    $degerlendirme_tarihi = $ogrenci_mufredat_degerlendirme[ 'ekleme_tarihi' ];
                                  $degerlendirme_tarihi = $fn->tarihSaatVer( $degerlendirme_tarihi );
                                  $islem = "guncelle";
                                  if( $ogrenci_mufredat_degerlendirme['degerlendirme'] == 1 )
                                    //$isaret = "<i class='fas fa-check-circle text-success'></i>";
                                    $isaret = "<h6><span class='btn btn-xs btn-success'>Başarılı</span> <span class='btn btn-xs btn-primary'>$ogrenci_mufredat_degerlendirme[ogretim_elemani_adi]</span> <span class='btn btn-xs btn-info'>$degerlendirme_tarihi</span></h6>";
                                  if( $ogrenci_mufredat_degerlendirme['degerlendirme'] == 0 )
                                    //$isaret = "<i class='fas fa-times-circle text-danger'></i>";
                                    $isaret = "<h6><span class='btn btn-xs btn-danger'>Başarısız</span> <span class='btn btn-xs btn-primary'>$ogrenci_mufredat_degerlendirme[ogretim_elemani_adi]</span> <span class='btn btn-xs btn-info'>$degerlendirme_tarihi</span></h6>";

                                }else{
                                  $islem="ekle";
                                }

                                $html .= "
                                    <tr class='bg-renk7'>
                                      <td class='$degerlendirme_ekle_class' role='button' data-id='$kategori[id]' data-kategori_ad ='$kategori[adi]' data-degerlendirme='$ogrenci_mufredat_degerlendirme[degerlendirme]' data-islem='$islem' data-duzey='$kategori[duzey]' data-yontem='$kategori[yontem]' data-kidem='$kategori[kidem]'  data-modal='degerlendirme_ekle'>
                                        <span role='button' class='text-dark $degerlendirme_ekle_class' id='$kategori[id]' data-id='$kategori[id]' data-kategori_ad ='$kategori[adi]' data-degerlendirme='$ogrenci_mufredat_degerlendirme[degerlendirme]' data-islem='$islem' data-duzey='$kategori[duzey]' data-yontem='$kategori[yontem]' data-kidem='$kategori[kidem]'  data-modal='degerlendirme_ekle'>$kategori[adi]</span>
                                        $isaret
                                      </td>
                                    </tr>";									

                              }
                              if( $kategori['kategori'] == 1 ){

                                  $html .= "
                                      <tr data-widget='expandable-table' aria-expanded='false' class='bg-renk$renk border-0'>
                                        <td class=''>
                                        $kategori[adi]
                                        <i class='expandable-table-caret fas fa-caret-right fa-fw'></i>
                                        </td>
                                      </tr>
                                    ";								
                                  $renk++;
                                  $html .= kategoriListele3($kategoriler, $kategori['id'],$renk, $vt,$fn, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id);
                                  
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
                          echo kategoriListele3($mufredatlar,0,0, $vt,$fn, $SQL_ogrenci_mufredat_degerlendirme, $ogrenci_id);
                        

                      ?>
                              </tbody>
                            </table>
                    <?php if ( count( $mufredatlar ) < 1) echo '<div class="alert alert-warning m-5">Bu uzmanlık dalı için müfredat eklenmemiş</div>'; ?>
                    <?php
                    }
                    ?>


                  </div>
                  <!-- /.tab-pane -->
                  <div class="active tab-pane" id="timeline">
                    <!-- The timeline -->
                    <div class="timeline timeline-inverse">
                      <?php
                        $renkler = array("olive","info","danger","warning","orange","maroon","purple");
                        $renkler_ters = array_reverse($renkler);
                        $renk_sira = 0;
                        $en_son_tarih = "";
                        foreach( $zaman_tuneli as $zaman_tuneli_deger ){
                          unset( $mufredat_adi_zaman_tuneli );
                          $mufredat_id_zaman_tuneli = $zaman_tuneli_deger['mufredat_id'];
                          while( true ){
                            $mufredatlar_zaman_tuneli = $vt->selectSingle($SQL_mufredat_getir_zaman_tuneli, array(  $mufredat_id_zaman_tuneli ) )[ 2 ];
                            $mufredat_adi_zaman_tuneli[] = $mufredatlar_zaman_tuneli[ "adi" ];
                            if( $mufredatlar_zaman_tuneli[ "ust_id" ] > 0 ){
                              $mufredat_id_zaman_tuneli = $mufredatlar_zaman_tuneli[ "ust_id" ];
                            }else{
                              break;
                            }
                          }
                          $mufredat_adi_zaman_tuneli = array_reverse($mufredat_adi_zaman_tuneli);
                          //var_dump($mufredat_adi_zaman_tuneli);
                      ?>
                      <!-- timeline time label -->
                      <?php 
                      if( $en_son_tarih != $fn->tarihVer( $zaman_tuneli_deger[ 'tarih' ] ) ){
                      ?>
                      <div class="time-label">
                        <span class="bg-<?php echo $renkler_ters[$renk_sira%count($renkler_ters)]; ?> text-white">
                          <?php echo $fn->tarihVer( $zaman_tuneli_deger[ 'tarih' ] ); ?>
                        </span>
                      </div>
                      <?php
                      }
                      $en_son_tarih = $fn->tarihVer( $zaman_tuneli_deger[ 'tarih' ] );
                      ?>
                      <!-- /.timeline-label -->
                      <!-- timeline item -->
                      <div>
                        
                        <?php if( $zaman_tuneli_deger['islem_turu'] == "ekleme" ){ ?>
                        <i class="fas fa-plus bg-<?php echo $renkler[$renk_sira%count($renkler)]; ?>"></i>
                        <?php } ?>

                        <?php if( $zaman_tuneli_deger['islem_turu'] == "guncelleme" ){ ?>
                        <i class="fas fa-redo bg-<?php echo $renkler[$renk_sira%count($renkler)]; ?>"></i>
                        <?php } ?>
                        <div class="timeline-item">
                          <span class="time"><i class="far fa-clock"></i> <?php echo $fn->saatDakikaVer( $zaman_tuneli_deger[ 'tarih' ] ); ?></span>
                          <?php if( $zaman_tuneli_deger['islem_turu'] == "ekleme" ){ ?>
                          <h3 class="timeline-header">
                            <img class=" img-circle elevation-2" style="height:30px;" src="resimler/<?php echo $zaman_tuneli_deger['resim']; ?>" alt="User profile picture">
                            <a href="#" class="text-danger"><?php echo $zaman_tuneli_deger[ 'ogretim_elemani_adi' ]; ?></a> müfredat değerlendirmesi yaptı. <i class="fas fa-plus-square text-success"></i>
                          </h3>
                          <?php } ?>

                          <?php if( $zaman_tuneli_deger['islem_turu'] == "guncelleme" ){ ?>
                          <h3 class="timeline-header">
                            <img class=" img-circle elevation-2" style="height:30px;" src="resimler/<?php echo $zaman_tuneli_deger['resim']; ?>" alt="User profile picture">
                            <a href="#" class="text-danger"><?php echo $zaman_tuneli_deger[ 'ogretim_elemani_adi' ]; ?></a> müfredat değerlendirmesini güncelledi. <i class="fas fa-edit text-warning"></i>
                          </h3>
                          <?php } ?>

                          <div class="timeline-body">
                            <?php 
                              $sira = 0;
                              foreach( $mufredat_adi_zaman_tuneli as $mufredat ){
                                if( $sira == (count( $mufredat_adi_zaman_tuneli ) -1) )
                                  echo "<b>".str_repeat( "&emsp;", $sira )." <i class='fas fa-caret-right'></i> ".$mufredat."</b><br>";
                                else
                                  echo str_repeat( "&emsp;", $sira )." <i class='fas fa-caret-right'></i> ".$mufredat."<br>";
                              $sira++;
                              }
                              $sira = 0;
                              
                            ?>
                          </div>
                          <div class="timeline-footer">
                            <?php if( $zaman_tuneli_deger['degerlendirme'] == 0 ){ ?>
                            <a  class="btn btn-danger btn-xs">Başarısız</a>
                            <?php } ?>
                            <?php if( $zaman_tuneli_deger['degerlendirme'] == 1 ){ ?>
                            <a  class="btn btn-success btn-xs">Başarılı</a>
                            <?php } ?>
                            <?php if( $zaman_tuneli_deger['degerlendirme'] == -1 ){ ?>
                            <a  class="btn btn-warning btn-xs">Değerlendirilmedi</a>
                            <?php } ?>
                            <a  class="btn btn-primary btn-xs"><?php echo $zaman_tuneli_deger['ogretim_elemani_adi']; ?></a>
                          </div>
                        </div>
                      </div>
                      <!-- END timeline item -->
                      <?php
                          $renk_sira++;
                        }
                      ?>
                      <!-- timeline item -->

                      <!-- END timeline item -->
                      <div>
                        <i class="far fa-clock bg-gray"></i>
                      </div>
                    </div>
                  </div>
                  <!-- /.tab-pane -->

                  <div class="tab-pane" id="settings">
                    <form class="form-horizontal">
                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputName" placeholder="Name">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputName2" placeholder="Name">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Skills</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                        </div>
                      </div>
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <div class="checkbox">
                            <label>
                              <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
<script type="text/javascript">
  function printDiv(divName) {
      var printContents = document.getElementById(divName).innerHTML;
      var originalContents = document.body.innerHTML;

      document.body.innerHTML = printContents;

      window.print();

      document.body.innerHTML = originalContents;
  }
	$(function () {
		$('#tarih').datetimepicker({
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
		$('#tarih2').datetimepicker({
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

var tbl_ogrenci_tezleri = $( "#tbl_ogrenci_tezleri" ).DataTable( {
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
} ).buttons().container().appendTo('#tbl_ogrenci_tezleri_wrapper .col-md-6:eq(0)');



$('#card_ogrenci_tezleri').on('maximized.lte.cardwidget', function() {
	var tbl_ogrenci_tezleri = $( "#tbl_ogrenci_tezleri" ).DataTable();
	var column = tbl_ogrenci_tezleri.column(  tbl_ogrenci_tezleri.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenci_tezleri.column(  tbl_ogrenci_tezleri.column.length - 2 );
	column.visible( ! column.visible() );
});

$('#card_ogrenci_tezleri').on('minimized.lte.cardwidget', function() {
	var tbl_ogrenci_tezleri = $( "#tbl_ogrenci_tezleri" ).DataTable();
	var column = tbl_ogrenci_tezleri.column(  tbl_ogrenci_tezleri.column.length - 1 );
	column.visible( ! column.visible() );
	var column = tbl_ogrenci_tezleri.column(  tbl_ogrenci_tezleri.column.length - 2 );
	column.visible( ! column.visible() );
} );


</script>