<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Web A2N</a>
      </div>
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li class="<?php if ($page == 'about') {
                        echo 'active';
                      } ?>"><a href="about.php">Utama</a></li>
          <li class="<?php if ($page == 'chat') {
                        echo 'active';
                      } ?>"><a href="<?=(isset($_COOKIE['userid']))?"user.php":"chatindex.php";?>">Ruang Chat</a></li>
          <li class="<?php if ($page == 'grafik_sampah') {
                        echo 'active';
                      } ?>"><a href="grafik_sampah.php">Grafik Sampah</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>