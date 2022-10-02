<?php
include "../../_cekirdek/fonksiyonlar.php";

$vt			= new VeriTabani();
$fn			= new Fonksiyonlar();
$id			= array_key_exists( 'id' , $_REQUEST ) ? $_REQUEST[ 'id' ] : 0;


$SQL_ekle = <<< SQL
INSERT INTO
	tb_rotasyonlar
SET
	 universite_id				= ?
	,uzmanlik_dali_id			= ?
	,rotasyon_uzmanlik_dali_id	= ?
	,sure_ay					= ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_rotasyonlar
SET
	 universite_id				= ?
	,uzmanlik_dali_id			= ?
	,rotasyon_uzmanlik_dali_id	= ?
	,sure_ay					= ?
WHERE
	id = ?
SQL;

$SQL_sil = <<< SQL
UPDATE
	tb_rotasyonlar
SET
	aktif = 0
WHERE
	id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti' );
$vt->islemBaslat();
if( array_key_exists( 'islem', $_REQUEST ) ) {
	switch( $_REQUEST[ 'islem' ] ) {
		case 'ekle':
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
				 $_REQUEST[ 'universite_id' ]
				,$_REQUEST[ 'uzmanlik_dali_id' ]
				,$_REQUEST[ 'rotasyon_uzmanlik_dali_id' ]
				,$_REQUEST[ 'sure_ay' ]
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
		case 'guncelle':
			$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
				 $_REQUEST[ 'universite_id' ]
				,$_REQUEST[ 'uzmanlik_dali_id' ]
				,$_REQUEST[ 'rotasyon_uzmanlik_dali_id' ]
				,$_REQUEST[ 'sure_ay' ]
				,$id
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
		case 'sil':
				$sorgu_sonuc = $vt->update( $SQL_sil, array( $id ) );
				if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt silinirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
	}
} else {
	$___islem_sonuc = array( 'hata' => true, 'mesaj' => 'İşlem türü gönderilmediğinden dolayı işleminiz iptal edildi' );
}
$vt->islemBitir();
$___islem_sonuc[ 'id' ] = $id;
$_SESSION[ 'sonuclar' ] = $___islem_sonuc;
header( "Location: ../../index.php?modul=rotasyonlar&id=$id&islem=$_REQUEST[islem]" );


?>