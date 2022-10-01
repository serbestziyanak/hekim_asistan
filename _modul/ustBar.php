
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index.php" class="nav-link">AnaSayfa</a>
      </li>
    </ul>
    <span class="nav-link text-red">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ||</span>
    <form class="form-inline"  method="POST">
      <div class="input-group input-group-sm">
        <span class="nav-link">Uzmanlık Alanı</span>        
        <select class="form-control select2 aktifYilSec" style="width: auto;" data-url="./_modul/ajax/ajax_data.php" data-islem="aktifFakulte" class="form-control">
          <?php 
            foreach ( $_SESSION[ 'uzmanlik_dallari' ] as $uzmanlik_dallari) {
              echo '<option value="'.$uzmanlik_dallari[ "uzmanlik_dali_id" ].'" '.( $uzmanlik_dallari[ "uzmanlik_dali_id" ] == $_SESSION[ "aktif_uzmanlik_dali_id" ] ? "selected" : null ).'>
              '.$uzmanlik_dallari[ "universite_adi" ].' - '.$uzmanlik_dallari[ "uzmanlik_dali_adi" ].
              '</option>'; 
            }
          ?>
        </select>&nbsp;
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="sagSidebar" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->
