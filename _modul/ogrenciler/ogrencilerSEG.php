<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$ogrenci_id			= array_key_exists( 'ogrenci_id', $_REQUEST )	? $_REQUEST[ 'ogrenci_id' ]	: 0;

if( $_REQUEST[ 'dogum_tarihi' ] == '' ) $dogum_tarihi = NULL;
else $dogum_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'dogum_tarihi' ] ) );

if( $_REQUEST[ 'baslama_tarihi' ] == '' ) $dogum_tarihi = NULL;
else $baslama_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'baslama_tarihi' ] ) );

if( $_REQUEST[ 'bitis_tarihi' ] == '' ) $dogum_tarihi = NULL;
else $bitis_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'bitis_tarihi' ] ) );

if( $_REQUEST[ 'tez_tarihi' ] == '' ) $dogum_tarihi = NULL;
else $tez_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'tez_tarihi' ] ) );


$SQL_ekle = <<< SQL
INSERT INTO
	tb_ogrenciler
SET
	 universite_id			 = ?
	,uzmanlik_dali_id		 = ?
	,tc_kimlik_no			 = ?
	,ogrenci_no				 = ?
	,adi					 = ?
	,soyadi					 = ?
	,sinif					 = ?
	,email					 = ?
	,sifre					 = ?
	,cep_tel				 = ?
	,adres					 = ?
	,dogum_tarihi			 = ?
	,dogum_yeri				 = ?
	,tus_donemi				 = ?
	,tus_puani				 = ?
	,baslama_tarihi			 = ?
	,bitis_tarihi			 = ?
	,tez_tarihi				 = ?
	,egitim_danisman_id		 = ?
	,tez_danisman_id		 = ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_ogrenciler
SET
	 universite_id			 = ?
	,uzmanlik_dali_id		 = ?
	,tc_kimlik_no			 = ?
	,ogrenci_no				 = ?
	,adi					 = ?
	,soyadi					 = ?
	,sinif					 = ?
	,email					 = ?
	,sifre					 = ?
	,cep_tel				 = ?
	,adres					 = ?
	,dogum_tarihi			 = ?
	,dogum_yeri				 = ?
	,tus_donemi				 = ?
	,tus_puani				 = ?
	,baslama_tarihi			 = ?
	,bitis_tarihi			 = ?
	,tez_tarihi				 = ?
	,egitim_danisman_id		 = ?
	,tez_danisman_id		 = ?
WHERE
	id = ?
SQL;

$SQL_resim_guncelle = <<<SQL
UPDATE
	tb_ogrenciler
SET
	resim = ?
WHERE
	id = ?
SQL;

$SQL_tek_ogrenci_id_oku = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenciler 
WHERE 
	id  		= ? AND
	aktif 		= 1 
SQL;

$SQL_tek_ogrenci_tc_oku = <<< SQL
SELECT 
	*
FROM 
	tb_ogrenciler 
WHERE 
	tc_kimlik_no  = ? AND
	aktif 		  = 1 
SQL;


$SQL_sil = <<< SQL
UPDATE
	tb_ogrenciler
SET
	aktif = ?
WHERE
	id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );

switch( $islem ) {
	case 'ekle':

		$ogrenci_varmi = $vt->select( $SQL_tek_ogrenci_tc_oku, array( $_REQUEST[ "tc_kimlik_no" ] ) )[2];
		if ( count( $ogrenci_varmi ) < 1 ){
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
				 $_REQUEST['universite_id']
				,$_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['tc_kimlik_no']
				,$_REQUEST['ogrenci_no']
				,$_REQUEST['adi']
				,$_REQUEST['soyadi']
				,$_REQUEST['sinif']
				,$_REQUEST['email']
				,md5($_REQUEST['sifre'])
				,$_REQUEST['cep_tel']
				,$_REQUEST['adres']
				,$dogum_tarihi
				,$_REQUEST['dogum_yeri']
				,$_REQUEST['tus_donemi']
				,$_REQUEST['tus_puani']
				,$baslama_tarihi
				,$bitis_tarihi
				,$tez_tarihi
				,$_REQUEST['egitim_danisman_id']
				,$_REQUEST['tez_danisman_id']
			) );
			if( $sorgu_sonuc[ 0 ] ){
				$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
			}else{
				$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
				$son_eklenen_id	= $sorgu_sonuc[ 2 ]; 
				$ogrenci_id = $son_eklenen_id;
				$resim_adi = "ogrenci_".uniqid($ogrenci_id.'_');
				$resim_sonuc = $fn->resimYukle( 'input_ogrenci_resim', $resim_adi );
				if( $resim_sonuc[ 0 ] ) {
					$sorgu_sonuc = $vt->update( $SQL_resim_guncelle, array( $resim_sonuc[ 1 ], $son_eklenen_id ) );
				}
			}
		}else{
			$___islem_sonuc = array( 'hata' => true, 'mesaj' => 'Öğrenci Önceden Eklenmiş', 'id' => $sonuc[ 2 ] );
		}
			
	break;
	case 'guncelle':
		$tek_ogrenci_oku = $vt->selectSingle( $SQL_tek_ogrenci_id_oku, array( $ogrenci_id ) ) [ 2 ];
		if( $_REQUEST['sifre'] == $tek_ogrenci_oku['sifre'] ){
			$sifre = $_REQUEST['sifre'];
		}else{
			$sifre = md5($_REQUEST['sifre']);
		}		
		$sorgu_sonuc = $vt->insert( $SQL_guncelle, array(
				$_REQUEST['universite_id']
			,$_REQUEST['uzmanlik_dali_id']
			,$_REQUEST['tc_kimlik_no']
			,$_REQUEST['ogrenci_no']
			,$_REQUEST['adi']
			,$_REQUEST['soyadi']
			,$_REQUEST['sinif']
			,$_REQUEST['email']
			,$sifre
			,$_REQUEST['cep_tel']
			,$_REQUEST['adres']
			,$dogum_tarihi
			,$_REQUEST['dogum_yeri']
			,$_REQUEST['tus_donemi']
			,$_REQUEST['tus_puani']
			,$baslama_tarihi
			,$bitis_tarihi
			,$tez_tarihi
			,$_REQUEST['egitim_danisman_id']
			,$_REQUEST['tez_danisman_id']
			,$ogrenci_id
		) );

		if( $sorgu_sonuc[ 0 ] ){
			$___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}else{
			$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] );
			$resim_adi = "ogrenci_".uniqid($ogrenci_id.'_');
			$resim_sonuc = $fn->resimYukle( 'input_ogrenci_resim', $resim_adi );
			if( $resim_sonuc[ 0 ] ) {
				$vt->update( $SQL_resim_guncelle, array( $resim_sonuc[ 1 ], $ogrenci_id ) );
				if( $tek_ogrenci_oku['resim'] != "resim_yok.png" ){
					unlink(dirname(__FILE__)."/../../resimler/".$tek_ogrenci_oku['resim']);
				}
			}
		}
	break;
	case 'sil':
		//Silinecek olan tarife giriş yapılan firmaya mı ait oldugu kontrol ediliyor Eger firmaya ait ise silinecektir.
		$tek_ogrenci_oku = $vt->select( $SQL_tek_ogrenci_id_oku, array( $ogrenci_id ) ) [ 2 ];
		if (count( $tek_ogrenci_oku ) > 0) {
			$sorgu_sonuc = $vt->delete( $SQL_sil, array( 0, $ogrenci_id ) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt silinrken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		}
	break;
}
$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $ogrenci_id;
header( "Location:../../index.php?modul=ogrenciler&islem=guncelle&ogrenci_id=".$ogrenci_id);
?>