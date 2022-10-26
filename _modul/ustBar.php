
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item ">
        <a href="index.php" class="nav-link">AnaSayfa</a>
      </li>
      <li class="nav-item ">
        <form class="form-inline"  method="POST">
          <div class="input-group input-group-sm">
                <?php
                if( $_SESSION[ 'kullanici_turu' ] == "ogrenci" ){
                  $pasif = "disabled";
                }else{
                  $pasif = "";
                }
                ?>
            <select <?php echo $pasif; ?> class="form-control select2 aktifYilSec"  data-url="./_modul/ajax/ajax_data.php" data-islem="aktifFakulte" data-uzmanlik_adi = "<?php echo $_SESSION[ 'uzmanlik_dali_adi' ]; ?>" class="form-control">
              <?php 
                foreach ( $_SESSION[ 'uzmanlik_dallari' ] as $uzmanlik_dallari) {
                  echo '<option value="'.$uzmanlik_dallari[ "uzmanlik_dali_id" ].'" '.( $uzmanlik_dallari[ "uzmanlik_dali_id" ] == $_SESSION[ "uzmanlik_dali_id" ] ? "selected" : null ).'>
                  '.$uzmanlik_dallari[ "uzmanlik_dali_adi" ].
                  '</option>'; 
                }
              ?>
            </select>
          </div>
        </form>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a href="_modul/cikis.php" class="nav-link">
          <h6><i class="fas fa-sign-in-alt"></i></h6>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
