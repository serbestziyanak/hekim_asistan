<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )		? $_REQUEST[ 'islem' ]		: 'ekle';
$ogretim_elamani_id			= array_key_exists( 'ogretim_elemani_id', $_REQUEST )		? $_REQUEST[ 'ogretim_elemani_id' ]	: 0;
$alanlar			= array();
$degerler			= array();


$SQL_ekle = <<< SQL
INSERT INTO
	tb_ogretim_elemanlari
SET
	 universite_id		 = ?
	,uzmanlik_dali_id	 = ?
	,tc_kimlik_no		 = ?
	,unvan_id			 = ?
	,adi				 = ?
	,soyadi				 = ?
	,email				 = ?
	,cep_tel			 = ?
	,sifre				 = ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_ogretim_elemanlari
SET
	 universite_id		 = ?
	,uzmanlik_dali_id	 = ?
	,tc_kimlik_no		 = ?
	,unvan_id			 = ?
	,adi				 = ?
	,soyadi				 = ?
	,email				 = ?
	,cep_tel			 = ?
	,sifre				 = ?
WHERE
	id = ?
SQL;

$SQL_tek_ogretim_elemani_oku = <<< SQL
SELECT 
	*
FROM 
	tb_ogretim_elemanlari 
WHERE 
	email 		= ? AND
	aktif 		= 1 
SQL;

$SQL_tek_ogretim_elemani_oku_id = <<< SQL
SELECT 
	*
FROM 
	tb_ogretim_elemanlari 
WHERE 
	id 		= ? 
SQL;


$SQL_sil = <<< SQL
UPDATE
	tb_ogretim_elemanlari
SET
	aktif = 0
WHERE
	id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );

switch( $islem ) {
	case 'ekle':
		$ogretim_elemani_varmi = $vt->select( $SQL_tek_ogretim_elemani_oku, array( $_REQUEST[ "email" ] ) )[2];
		if ( count( $ogretim_elemani_varmi ) < 1 ){
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
				 $_REQUEST['universite_id']
				,$_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['tc_kimlik_no']
				,$_REQUEST['unvan_id']
				,$_REQUEST['adi']
				,$_REQUEST['soyadi']
				,$_REQUEST['email']
				,$_REQUEST['cep_tel']
				,md5($_REQUEST['sifre'])
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
			else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
			$son_eklenen_id	= $sorgu_sonuc[ 2 ]; 
			$ogretim_elamani_id = $son_eklenen_id;
		}else{
			$___islem_sonuc = array( 'hata' => true, 'mesaj' => 'Bu Email Önceden Eklenmiş', 'id' => $sonuc[ 2 ] );
		}
	break;
	case 'guncelle':
		$ogretim_elemani_varmi = $vt->selectSingle( $SQL_tek_ogretim_elemani_oku_id, array( $ogretim_elamani_id ) )[2];

		if( $_REQUEST['sifre'] == $ogretim_elemani_varmi['sifre'] ){
			$sifre = $_REQUEST['sifre'];
		}else{
			$sifre = md5($_REQUEST['sifre']);
		}
		
		$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
			 $_REQUEST['universite_id']
			,$_REQUEST['uzmanlik_dali_id']
			,$_REQUEST['tc_kimlik_no']
			,$_REQUEST['unvan_id']
			,$_REQUEST['adi']
			,$_REQUEST['soyadi']
			,$_REQUEST['email']
			,$_REQUEST['cep_tel']
			,$sifre
			,$ogretim_elamani_id
		) );
		if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sorgu_sonuc[ 2 ] ); 
	break;
	case 'sil':
		//Silinecek olan tarife giriş yapılan firmaya mı ait oldugu kontrol ediliyor Eger firmaya ait ise silinecektir.
		$tek_ogretim_elemani_oku = $vt->select( $SQL_tek_ogretim_elemani_oku, array( $ogretim_elamani_id ) ) [ 2 ];
		if (count( $tek_ogretim_elemani_oku ) > 0) {
			$sonuc = $vt->delete( $SQL_sil, array( $ogretim_elamani_id ) );
			if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt silinrken bir hata oluştu ' . $sonuc[ 1 ] );
		}
	break;
}
$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $ogretim_elamani_id;
header( "Location:../../index.php?modul=ogretimElemanlari&islem=guncelle&ogretim_elemani_id=".$ogretim_elamani_id );
?>