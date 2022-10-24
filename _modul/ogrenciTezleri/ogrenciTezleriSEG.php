<?php
include "../../_cekirdek/fonksiyonlar.php";

$vt			= new VeriTabani();
$fn			= new Fonksiyonlar();
$id			= array_key_exists( 'id' , $_REQUEST ) ? $_REQUEST[ 'id' ] : 0;

if( $_REQUEST[ 'tez_konusu_verilme_tarihi' ] == '' ) $tez_konusu_verilme_tarihi = NULL;
else $tez_konusu_verilme_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'tez_konusu_verilme_tarihi' ] ) );
if( $_REQUEST[ 'tez_konusu_akademik_kurul_onay_tarihi' ] == '' ) $tez_konusu_akademik_kurul_onay_tarihi = NULL;
else $tez_konusu_akademik_kurul_onay_tarihi = date( 'Y-m-d', strtotime( $_REQUEST[ 'tez_konusu_akademik_kurul_onay_tarihi' ] ) );


$SQL_ekle = <<< SQL
INSERT INTO
	tb_ogrenci_tezleri
SET
	 uzmanlik_dali_id	 = ?
	,ogrenci_id			 = ?
	,tez_konusu			 = ?
	,tez_konusu_verilme_tarihi				 = ?
	,tez_konusu_akademik_kurul_onay_tarihi				 = ?
SQL;

$SQL_guncelle = <<< SQL
UPDATE
	tb_ogrenci_tezleri
SET
	 uzmanlik_dali_id	 = ?
	,ogrenci_id			 = ?
	,tez_konusu			 = ?
	,tez_konusu_verilme_tarihi				 = ?
	,tez_konusu_akademik_kurul_onay_tarihi				 = ?
WHERE
	id = ?
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_ogrenci_tezleri
WHERE
	id = ?
SQL;

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti' );
$vt->islemBaslat();
if( array_key_exists( 'islem', $_REQUEST ) ) {
	switch( $_REQUEST[ 'islem' ] ) {
		case 'ekle':
			$sorgu_sonuc = $vt->insert( $SQL_ekle, array(
				 $_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['ogrenci_id']
				,$fn->ilkHarfleriBuyut( $_REQUEST[ 'tez_konusu' ] )
				,$tez_konusu_verilme_tarihi
				,$tez_konusu_akademik_kurul_onay_tarihi
			) );
			if( $sorgu_sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sorgu_sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sorgu_sonuc[ 1 ] );
		break;
		case 'guncelle':
			$sorgu_sonuc = $vt->update( $SQL_guncelle, array(
				 $_REQUEST['uzmanlik_dali_id']
				,$_REQUEST['ogrenci_id']
				,$fn->ilkHarfleriBuyut( $_REQUEST[ 'tez_konusu' ] )
				,$tez_konusu_verilme_tarihi
				,$tez_konusu_akademik_kurul_onay_tarihi
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
header( "Location: ../../index.php?modul=ogrenciTezleri&id=$id&islem=guncelle" );


?>