

<!DOCTYPE html>
<html lang="en" >

<head>

  <meta charset="UTF-8">
    
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css'>
  
<style>



.card {
  border: none;
  transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
  overflow: hidden;
  border-radius: 20px;
  min-height: 450px;
  box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.2);
}
@media (max-width: 768px) {
  .card {
    min-height: 350px;
  }
}
@media (max-width: 420px) {
  .card {
    min-height: 300px;
  }
}
.card.card-has-bg {
  transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
  background-size: 120%;
  background-repeat: no-repeat;
  background-position: center center;
}
.card.card-has-bg:before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: inherit;
  -webkit-filter: grayscale(1);
  -moz-filter: grayscale(100%);
  -ms-filter: grayscale(100%);
  -o-filter: grayscale(100%);
  filter: grayscale(100%);
}
.card.card-has-bg:hover {
  transform: scale(0.98);
  box-shadow: 0 0 5px -2px rgba(0, 0, 0, 0.3);
  background-size: 130%;
  transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
}
.card.card-has-bg:hover .card-img-overlay {
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
  background: #234f6d;
  background: linear-gradient(0deg, rgba(4, 69, 114, 0.5) 0%, #044572 100%);
}
.card .card-footer {
  background: none;
  border-top: none;
}
.card .card-footer .media img {
  border: solid 3px rgba(255, 255, 255, 0.3);
}
.card .card-meta {
  color: #26BD75;
}
.card .card-body {
  transition: all 500ms cubic-bezier(0.19, 1, 0.22, 1);
}
.card:hover {
  cursor: pointer;
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
}
.card:hover .card-body {
  margin-top: 30px;
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
}
.card .card-img-overlay {
  transition: all 800ms cubic-bezier(0.19, 1, 0.22, 1);
  background: #234f6d;
  background: linear-gradient(0deg, rgba(35, 79, 109, 0.3785889356) 0%, #455f71 100%);
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no" >
  <section class="wrapper">
  <div class="container">
  <div class="row">
    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img1.jpg');" data-href="index.php?modul=ogrenciMufredatDegerlendirme">
        <img class="card-img d-none" src="img/img1.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Müfredat yetkinliklerinin değerlendirme sonuçları.</h4>
            <h2>Müfredat Değerlendirmeleri</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img2.jpg');" data-href="index.php?modul=ogrenciTezIzlemeleri">
        <img class="card-img d-none" src="img/img2.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Belirli dönemlerde tezde yapılan çalışmalar ile ilgili yapılan değerlendirmeler.</h4>
            <h2>Tez İzlemeleri</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img3.jpg');" data-href="index.php?modul=ogrenciSinavlari">
        <img class="card-img d-none" src="img/img3.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Uzmanlık eğitimi süresince girmiş olduğunuz sınavlar ve sonuçları.</h4>
            <h2>Sınavlar</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img4.jpg');" data-href="index.php?modul=ogrenciMakaleleri">
        <img class="card-img d-none" src="img/img4.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Uzmanlık eğitimi süresince yayınlanan bilimsel makaleler.</h4>
            <h2>Makaleler</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img5.jpg');" data-href="index.php?modul=ogrenciBilimselToplantilar">
        <img class="card-img d-none" src="img/img5.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Uzmanlık eğitimi boyunca katıldığınız Bilimsel Toplantılar.</h4>
            <h2>Bilimsel Toplantılar</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img6.jpg');" data-href="index.php?modul=ogrenciKlinikSunulari">
        <img class="card-img d-none" src="img/img6.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Uzmanlık eğitimi süresince klinikte yapılan sunular.</h4>
            <h2>Klinik Sunuları</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img7.jpg');" data-href="index.php?modul=ogrenciTezleri">
        <img class="card-img d-none" src="img/img7.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Öğrencinin yürütmüş olduğu tezler ile ilgili bilgileri görebilirsiniz.</h4>
            <h2>Tezler</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
      <div class="card text-white card-has-bg click-col card_menu_git" style="background-image:url('img/img8.jpg');" data-href="index.php?modul=ogrenciler">
        <img class="card-img d-none" src="img/img8.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
        <div class="card-img-overlay d-flex flex-column">
          <div class="card-body">
            <h4 class="card-title card-meta mt-0 ">Kişisel Bilgiler görülebilir ve düzenlenebilir.</h4>
            <h2>Kişisel Bilgiler</h2>
          </div>
          <div class="card-footer">
            <div class="media">
              <img class="mr-3 rounded-circle" src="resimler/<?php echo $_SESSION[ 'kullanici_resim' ]; ?>" alt="Generic placeholder image" style="max-width:50px">
              <div class="media-body">
                <h6 class="my-0 text-white d-block"><?php echo $_SESSION['adi']." ".$fn->ilkHarfleriBuyut($_SESSION['soyadi']); ?></h6>
                <small><?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?></small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>



<!--div class="col-sm-12 col-md-6 col-lg-4 mb-4">
  <div class="card text-white card-has-bg click-col" style="background-image:url('img/img6.jpg');">
    <img class="card-img d-none" src="img/img6.jpg" alt="Goverment Lorem Ipsum Sit Amet Consectetur dipisi?">
    <div class="card-img-overlay d-flex flex-column">
      <div class="card-body">
        <small class="card-meta mb-2">Thought Leadership</small>
        <h4 class="card-title mt-0 "><a class="text-white" herf="#">Goverment Lorem Ipsum Sit Amet Consectetur dipisi?</a></h4>
        <small><i class="far fa-clock"></i> October 15, 2020</small>
      </div>
      <div class="card-footer">
        <div class="media">
          <img class="mr-3 rounded-circle" src="https://assets.codepen.io/460692/internal/avatars/users/default.png" alt="Generic placeholder image" style="max-width:50px">
          <div class="media-body">
            <h6 class="my-0 text-white d-block">Oz Coruhlu</h6>
            <small>Director of UI/UX</small>
          </div>
        </div>
      </div>
    </div>
  </div>
</div-->
  
</div>
  
</div>
</section>
  
  
  
  

</body>
<script>
		$('.card_menu_git').on("click", function(e) { 
	        var url 	        = $(this).data("href");
	        window.location.href = url; 
	    });
</script>
</html>
 
