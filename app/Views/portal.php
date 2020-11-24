
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Website Smarcity Kabupaten Probolinggo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet"> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- <link rel="stylesheet" type="text/css" href="{{asset('/tema/kominfo_kab_situbondo/portal/css/default.css')}}" /> -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/component.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/skeleton.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/style copy.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url() ?>/assets/css/portal.css" />
  <script src="<?php echo base_url() ?>/assets/js/custom.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="shortcut icon" href="<?php echo base_url() ?>/assets/images/logo.png">
<link rel="apple-touch-icon" href="<?php echo base_url() ?>/assets/images/logo.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url() ?>/assets/images/logo.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url() ?>/assets/images/logo.png">
<meta property="og:image" content="<?php echo base_url() ?>/assets/images/logo.png">
  
</head>
<body class="container">
<link itemprop="thumbnailUrl" href="<?php echo base_url() ?>/assets/images/logo.png"> <span itemprop="thumbnail" itemscope itemtype="http://schema.org/ImageObject"> <link itemprop="url" href="<?php echo base_url() ?>/assets/images/logo.png"> </span>

<header>
  <div>
    <div class="logo">
      <img class="logo img-responsive" src="<?php echo base_url() ?>/assets/images/logo.png">
    </div>
    
  <h1 style="font-weight: bold;"><span class="gradient" color="#07A3B2">SmartCity</span></h1></a>
  <p class="ket" style="margin-top: 20px;"> <a id="website" href="<?php echo base_url() ?>/login/"><button type="button" class="btn btn-primary active">Go to Website </button></a></p>
  </div>
</header>

<div>
        <ul id="og-grid" class="og-grid">
        <?php foreach ($home as $u) : ?>
        <li>
                <a href="#" data-largesrc="<?php echo base_url() ?>/assets/img/modal/<?= $u['gambar_modal']; ?>" data-title="<?= $u['judul_modal']; ?>" data-description="
                  <p><?= $u['deskripsi']; ?></p>
                  <ul class='daftar'>
                    <li><i class='fa fa-check-square'></i><?= $u['link_modal']; ?></li>
                  </ul>">
                  <img class="img-fluid" src="<?php echo base_url() ?>/assets/img/modal/<?= $u['gambar_modal']; ?>" width="200px" alt="SMART BRANDING">
                  <button class="btn btn-outline-primary btn-user btn-block" ><?= $u['judul_kategori']; ?></button>
                </a>
            </li>
            <?php endforeach; ?>
        </ul>

</div>

<video autoplay muted loop id="myVideo">
  <source src="<?php echo base_url() ?>/assets/video.mp4" type="video/mp4">
</video>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="<?php echo base_url() ?>/assets/js/grid.js"></script>
<script>
    $(function() {
        Grid.init();
    });
</script>

</body>