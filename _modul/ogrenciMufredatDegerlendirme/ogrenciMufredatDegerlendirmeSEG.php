<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )	? $_REQUEST[ 'islem' ]	: 'ekle';
$mufredat_id 		= array_key_exists( 'id', $_REQUEST ) 		? $_REQUEST[ 'id' ] 	: 0;
$rotasyon_id 		= array_key_exists( 'rotasyon_id', $_REQUEST ) 	? $_REQUEST[ 'rotasyon_id' ] : 0;

// print_r($_REQUEST);
// exit;

$SQL_ogrenci_mufredat_degerlendirme_ekle = <<< SQL
INSERT INTO 
	tb_ogrenci_mufredat_degerlendirme
SET
	 uzmanlik_dali_id 	= ?
	,rotasyon_id 		= ?
	,ogrenci_id 		= ?
	,mufredat_id		= ?
	,degerlendirme 		= ?
	,ogretim_elemani_id	= ?
SQL;


$SQL_ogrenci_mufredat_degerlendirme_duzenle = <<< SQL
UPDATE
	tb_ogrenci_mufredat_degerlendirme
SET
	 uzmanlik_dali_id 	= ?
	,rotasyon_id 		= ?
	,ogrenci_id 		= ?
	,mufredat_id		= ?
	,degerlendirme 		= ?
	,ogretim_elemani_id	= ?
WHERE 
	ogrenci_id 		= ? AND
	mufredat_id 	= ?
SQL;

$SQL_mufredat_kategori_duzenle = <<< SQL
UPDATE
	tb_mufredat
SET
	 adi 	= ?
WHERE 
	id 		= ? 
SQL;

$SQL_sil = <<< SQL
DELETE FROM
	tb_mufredat
WHERE
	id = ?
SQL;

$SQL_mufredat_oku = <<< SQL
SELECT 
	*
FROM 
	tb_mufredat
WHERE 
	ust_id  		= ?
SQL;

$degerler = array();

$___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => 0 );
switch( $islem ) {
	case 'ekle':

		$kategori = $_REQUEST[ "kategori" ] == "on" ? 1 : 0;

		$degerler[] = $_REQUEST[ "uzmanlik_dali_id" ];
		$degerler[] = $_REQUEST[ "rotasyon_id" ];
		$degerler[] = $_REQUEST[ "ogrenci_id" ];
		$degerler[] = $_REQUEST[ "mufredat_id" ];
		$degerler[] = $_REQUEST[ "degerlendirme" ];
		$degerler[] = $_SESSION[ 'kullanici_id' ];

		$sonuc = $vt->insert( $SQL_ogrenci_mufredat_degerlendirme_ekle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sonuc[ 2 ] ); 
		$son_eklenen_id	= $sonuc[ 2 ]; 
		$mufredat_id = $son_eklenen_id;
	break;
	case 'guncelle':
		$duzey = implode(",", $_REQUEST[ "duzey" ]);
		$yontem = implode(",", $_REQUEST[ "yontem" ]);

		$degerler[] = $_REQUEST[ "uzmanlik_dali_id" ];
		$degerler[] = $_REQUEST[ "rotasyon_id" ];
		$degerler[] = $_REQUEST[ "ogrenci_id" ];
		$degerler[] = $_REQUEST[ "mufredat_id" ];
		$degerler[] = $_REQUEST[ "degerlendirme" ];
		$degerler[] = $_SESSION[ 'kullanici_id' ];
		$degerler[] = $_REQUEST[ "ogrenci_id" ];
		$degerler[] = $_REQUEST[ "mufredat_id" ];

		$sonuc = $vt->update( $SQL_ogrenci_mufredat_degerlendirme_duzenle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sonuc[ 1 ] );

	break;
	case 'sil':

		echo '<pre>';


		function kategorisil($vt, $SQL_mufredat_oku, $SQL_sil, $id){

			$kategoriler = $vt->select( $SQL_mufredat_oku, array( $id ) )[2];

			if ( count( $kategoriler ) > 0 ) {
				foreach ($kategoriler as $kategori){

					$altKategoriler = $vt->select( $SQL_mufredat_oku, array( $kategori[ "id" ] ) )[2];

					if( count( $altKategoriler ) > 0 ){
						foreach ($altKategoriler as $altKategori) {
							kategorisil($vt,$SQL_mufredat_oku, $SQL_sil, $altKategori[ "id" ]);
						}
					}else{
						$kategori_sil = $vt->delete( $SQL_sil, array( $kategori[ "id" ] ));
					}
					$kategori_sil = $vt->delete( $SQL_sil, array( $kategori[ "id" ] ));
				}
				$kategori_sil = $vt->delete( $SQL_sil, array( $id ));
			}else{
				$kategori_sil = $vt->delete( $SQL_sil, array( $id ));
			}
			
		}

		echo "gelen id  : $mufredat_id";
		kategorisil($vt,$SQL_mufredat_oku, $SQL_sil, $mufredat_id);
	break;
}


$_SESSION[ 'sonuclar' ] 		= $___islem_sonuc;
$_SESSION[ 'sonuclar' ][ 'id' ] = $mufredat_id;
header( "Location:../../index.php?modul=ogrenciMufredatDegerlendirme&ogrenci_id=$_REQUEST[ogrenci_id]");
?>