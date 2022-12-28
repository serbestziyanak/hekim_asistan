<?php
include "../../_cekirdek/fonksiyonlar.php";

$vt			= new VeriTabani();
$fn			= new Fonksiyonlar();
$id			= array_key_exists( 'id' , $_REQUEST ) ? $_REQUEST[ 'id' ] : 0;

if( $_REQUEST[ 'tarih' ] == '' ) $tarih = NULL;
else $tarih = date( 'Y-m-d', strtotime( $_REQUEST[ 'tarih' ] ) );


$SQL_ekle = <<< SQL
INSERT INTO
	tb_ogrenci_bilimsel_toplantilar
SET
	 universite_id		 = ?
	,uzmanlik_dali_id	 = ?
	,ogrenci_id			 = ?
	,adi				 = ?
	,yeri				 = ?
	,tarih				 = ?
	,sunular			 = ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_ogrenci_bilimsel_toplantilar
SET
	 universite_id		 = ?
	,uzmanlik_dali_id	 = ?
	,ogrenci_id			 = ?
	,adi				 = ?
	,yeri				 = ?
	,tarih				 = ?
	,sunular			 = ?
WHERE
	id = ?
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_ogrenci_bilimsel_toplantilar
WHERE
	id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti' );
$vt->islemBaslat();
if( array_key_exists( 'islem', $_REQUEST ) ) {
	switch( $_REQUEST[ 'islem' ] ) {
		case 'ekle':
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
				 $_SESSION['universite_id']
				,$_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['ogrenci_id']
				,$fn->ilkHarfleriBuyut( $_REQUEST[ 'adi' ] )
				,$_REQUEST['yeri']
				,$tarih
				,$_REQUEST['sunular']
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
		case 'guncelle':
			$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
				 $_SESSION['universite_id']
				,$_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['ogrenci_id']
				,$fn->ilkHarfleriBuyut( $_REQUEST[ 'adi' ] )
				,$_REQUEST['yeri']
				,$tarih
				,$_REQUEST['sunular']
				,$id
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
		case 'sil':
				$sorgu_sonuc = $vt->delete( $SQL_sil, array( $id ) );
				if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt silinirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
	}
} else {
	$___islem_sonuc = array( 'hata' => true, 'mesaj' => 'İşlem türü gönderilmediğinden dolayı işleminiz iptal edildi' );
}
$vt->islemBitir();
$___islem_sonuc[ 'id' ] = $id;
$_SESSION[ 'sonuclar' ] = $___islem_sonuc;
header( "Location: ../../index.php?modul=ogrenciBilimselToplantilar&id=$id&islem=guncelle" );


?>