<?php
include "../../_cekirdek/fonksiyonlar.php";
$vt		= new VeriTabani();
$fn		= new Fonksiyonlar();

$islem				= array_key_exists( 'islem', $_REQUEST )	? $_REQUEST[ 'islem' ]	: 'ekle';
$mufredat_id 		= array_key_exists( 'id', $_REQUEST ) 		? $_REQUEST[ 'id' ] 	: 0;
$rotasyon_id 		= array_key_exists( 'rotasyon_id', $_REQUEST ) 	? $_REQUEST[ 'rotasyon_id' ] : 0;

//print_r($_REQUEST);
//exit;

$SQL_mufredat_ekle = <<< SQL
INSERT INTO 
	tb_mufredat
SET
	ust_id 				= ?,
	adi 				= ?,
	rotasyon_id 		= ?,
	uzmanlik_dali_id	= ?,
	kategori 			= ?
SQL;

$SQL_mufredat_yetkinlik_ekle = <<< SQL
INSERT INTO 
	tb_mufredat
SET
	 ust_id 			= ?
	,adi 				= ?
	,rotasyon_id 		= ?
	,uzmanlik_dali_id	= ?
	,duzey 				= ?
	,kidem 				= ?
	,yontem				= ?
	,kategori 			= ?
SQL;

$SQL_mufredat_duzenle = <<< SQL
UPDATE
	tb_mufredat
SET
	 adi 	= ?
	,duzey 	= ?
	,kidem 	= ?
	,yontem	= ?
WHERE 
	id 		= ? 
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

		$degerler[] = $_REQUEST[ "ust_id" ];
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $_REQUEST[ "rotasyon_id" ];
		$degerler[] = $_REQUEST[ "uzmanlik_dali_id" ];
		$degerler[] = $kategori;

		$sonuc = $vt->insert( $SQL_mufredat_ekle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sonuc[ 2 ] ); 
		$son_eklenen_id	= $sonuc[ 2 ]; 
		$mufredat_id = $son_eklenen_id;
	break;
	case 'yetkinlik_ekle':
		$kategori = $_REQUEST[ "kategori" ] == "on" ? 1 : 0;
		$duzey = implode(",", $_REQUEST[ "duzey" ]);
		$yontem = implode(",", $_REQUEST[ "yontem" ]);

		$degerler[] = $_REQUEST[ "ust_id" ];
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $_REQUEST[ "rotasyon_id" ];
		$degerler[] = $_REQUEST[ "uzmanlik_dali_id" ];
		$degerler[] = $duzey;
		$degerler[] = $_REQUEST[ "kidem" ];
		$degerler[] = $yontem;
		$degerler[] = $kategori;

		$sonuc = $vt->insert( $SQL_mufredat_yetkinlik_ekle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt eklenirken bir hata oluştu ' . $sonuc[ 1 ] );
		else $___islem_sonuc = array( 'hata' => false, 'mesaj' => 'İşlem başarı ile gerçekleşti', 'id' => $sonuc[ 2 ] ); 
		$son_eklenen_id	= $sonuc[ 2 ]; 
		$mufredat_id = $son_eklenen_id;
	break;
	case 'kategori_guncelle':
		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $_REQUEST[ "mufredat_id" ];

		$sonuc = $vt->update( $SQL_mufredat_kategori_duzenle, $degerler );
		if( $sonuc[ 0 ] ) $___islem_sonuc = array( 'hata' => $sonuc[ 0 ], 'mesaj' => 'Kayıt güncellenirken bir hata oluştu ' . $sonuc[ 1 ] );

	break;
	case 'guncelle':
		$duzey = implode(",", $_REQUEST[ "duzey" ]);
		$yontem = implode(",", $_REQUEST[ "yontem" ]);

		$degerler[] = $_REQUEST[ "adi" ];
		$degerler[] = $duzey;
		$degerler[] = $_REQUEST[ "kidem" ];
		$degerler[] = $yontem;
		$degerler[] = $_REQUEST[ "mufredat_id" ];

		$sonuc = $vt->update( $SQL_mufredat_duzenle, $degerler );
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
header( "Location:../../index.php?modul=mufredat&rotasyon_id=$rotasyon_id");
?>