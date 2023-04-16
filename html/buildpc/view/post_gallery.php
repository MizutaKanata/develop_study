<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>HomemadePC-研修web site-</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="ここにサイト説明を入れます">
  <meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/print.css" media="print">
  <script src="js/openclose.js"></script>
  <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<style>
.menu1 a {background-position: -10px -10px;}
.menu2 a {background-position: -10px -130px;}
.menu3 a {background-position: -10px -250px;}
.menu4 a {background-position: -10px -370px;}
.menu5 a {background-position: -10px -490px;}
</style>
<![endif]-->
</head>
<body class="company">
  <div id="container">
    <!--PC用（801px以上端末）で表示させるブロック-->
    <header class="pc">
      <h1 class="logo"><a href="index.html"><img src="images/logo.png" alt="SAMPLE SITE"></a></h1>
      <!--PC用（801px以上端末）メニュー-->
      <nav id="menubar">
        <ul>
          <li class="menuimg menu1"><a href="index.html"><span>Home</span></a></li>
          <li class="menuimg menu2 current"><a href="about.html"><span>About</span></a></li>
          <li class="menuimg menu3"><a href="Works.html"><span>Works</span></a></li>
          <li class="menuimg menu4"><a href="link.html"><span>How to</span></a></li>
          <li class="menuimg menu5"><a href="contact.html"><span>Contact</span></a></li>
        </ul>
      </nav>
      <ul class="icon">
        <li><a href="#"><img src="images/icon_facebook.png" alt="Facebook"></a></li>
        <li><a href="#"><img src="images/icon_twitter.png" alt="Twitter"></a></li>
        <li><a href="#"><img src="images/icon_instagram.png" alt="Instagram"></a></li>
        <li><a href="#"><img src="images/icon_youtube.png" alt="YouTube"></a></li>
      </ul>
    </header>
    <!--/.pc-->
    <!--小さな端末用（800px以下端末）で表示させるブロック-->
    <header class="sh">
      <h1 class="logo"><a href="index.html"><img src="images/logo.png" alt="SAMPLE SITE"></a></h1>
      <!--小さな端末用（800px以下端末）メニュー-->
      <div id="menubar-s">
        <nav>
          <ul>
            <li class="menuimg menu1"><a href="index.html"><span>Home</span></a></li>
            <li class="menuimg menu2 current"><a href="about.html"><span>About</span></a></li>
            <li class="menuimg menu3"><a href="Works.html"><span>Works</span></a></li>
            <li class="menuimg menu4"><a href="link.html"><span>How to</span></a></li>
            <li class="menuimg menu5"><a href="contact.html"><span>Contact</span></a></li>
          </ul>
        </nav>
        <ul class="icon">
          <li><a href="#"><img src="images/icon_facebook.png" alt="Facebook"></a></li>
          <li><a href="#"><img src="images/icon_twitter.png" alt="Twitter"></a></li>
          <li><a href="#"><img src="images/icon_instagram.png" alt="Instagram"></a></li>
          <li><a href="#"><img src="images/icon_youtube.png" alt="YouTube"></a></li>
        </ul>
      </div>
      <!--/#menubar-s-->
    </header>
    <!--/.sh-->
    <div id="contents">
      <div id="main"> <span id="pagetop"></span>
        <section class="box">
          <h2 class="title">投稿フォーム</h2>
          <h3><strong class="color2">画像は必ず正方形にしてください。</strong></h3>
          <form action="Works.html" method="post">
            <table class="ta1">
              <tr>
                <th>お名前</th>
                <td><input type="text" name="お名前" size="30" class="ws"></td>
              </tr>
              <tr>
                <th>タイトル</th>
                <td><input type="text" name="posttitle" size="30" class="ws"></td>
              </tr>
              <tr>
                <th>画像(複数可)</th>
                <td><input type="file" name="postimage" size="30" class="ws"></td>
              </tr>
              <tr>
                <th>URL(SNS等)</th>
                <td><textarea name="url" cols="30" rows="2" class="wl"></textarea></td>
              </tr>
            </table>
            <p class="c"> <input type="submit" value="内容を確認する" class="btn"> </section>
        <footer> <small>Copyright&copy; <a href="index.html">SAMPLE SITE</a> All Rights Reserved.</small> <span class="pr"><a href="https://template-party.com/" target="_blank">《Web Design:Template-Party》</a></span> </footer>
      </div>
      <!--/#main-->
    </div>
    <!--/#contents-->
  </div>
  <!--/#container-->
  <!--ページの上部に戻る「↑」ボタン-->
  <p class="nav-fix-pos-pagetop"><a href="#pagetop">↑</a></p>
  <!--メニュー開閉ボタン-->
  <div id="menubar_hdr" class="close"></div>
  <!--メニューの開閉処理条件設定　800px以下-->
  <script>
    if (OCwindowWidth() <= 800) {
    	open_close("menubar_hdr", "menubar-s");
    }
  </script>
</body>
</html>