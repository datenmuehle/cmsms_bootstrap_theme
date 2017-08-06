{process_pagedata}
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{sitename} - {title}</title>
    <link rel="alternate" type="application/rss+xml" title="{sitename} RSS Feed" href="{bs_rss_url}" />

    <!-- Bootstrap -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="lib/fontawesome/css/font-awesome.min.css">

    <style>
      .vcenter {
            display: inline-block;
            vertical-align: middle;
            float: none;
      }
      .footer {
            bottom: 0;
            /*width: 100%;*/
            height: 90px;
            line-height: 60px;
            background-color: #ffffff;
            background-image: url('{bs_img_footer}');
      }
      .highlight {
            padding: 9px 14px;
            margin-bottom: 14px;
            background-color: #f7f7f9;
            border: 1px solid #e1e1e8;
            border-radius: 4px;
      }
    
    /* START - Bootstrap dropdown submenu by Ajay Patel, https://codepen.io/ajaypatelaj/pen/prHjD  */
    .dropdown-submenu {
            position: relative;
    }
    
    .dropdown-submenu>.dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -6px;
            margin-left: -1px;
            -webkit-border-radius: 0 6px 6px 6px;
            -moz-border-radius: 0 6px 6px;
            border-radius: 0 6px 6px 6px;
    }
    
    .dropdown-submenu:hover>.dropdown-menu {
            display: block;
    }
    
    .dropdown-submenu>a:after {
            display: block;
            content: " ";
            float: right;
            width: 0;
            height: 0;
            border-color: transparent;
            border-style: solid;
            border-width: 5px 0 5px 5px;
            border-left-color: #ccc;
            margin-top: 5px;
            margin-right: -10px;
    }
    
    .dropdown-submenu:hover>a:after {
            border-left-color: #fff;
    }
    
    .dropdown-submenu.pull-left {
            float: none;
    }
    
    .dropdown-submenu.pull-left>.dropdown-menu {
            left: -100%;
            margin-left: 10px;
            -webkit-border-radius: 6px 0 6px 6px;
            -moz-border-radius: 6px 0 6px 6px;
            border-radius: 6px 0 6px 6px;
    }
    /* END - Bootstrap dropdown submenu by Ajay Patel, https://codepen.io/ajaypatelaj/pen/prHjD  */


    </style>
    {Statistics2}
    {cms_stylesheet}
    {metadata}
    {cms_selflink dir="start" rellink=1}
    {cms_selflink dir="prev" rellink=1}
    {cms_selflink dir="next" rellink=1}
</head>

<body>
    
    <div class="container">
      <div class="row">
            <div class="col-xs-1 col-md-2 col-lg-2 vcenter">
                  <img class="img-responsive" src="{bs_img_logo}" alt="Logo {sitename}"/>
            </div><!--
            --><div class="col-xs-10 col-md-10 col-lg-10 vcenter">
                  <h1>{sitename}</h1>
            </div>
      </div>
      <div>
         <nav class="navbar navbar-inverse">
            {menu template="bootstrap // menuinverse"}
          </nav>
      </div>
      <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">
            <h2 class="title">{title}</h2>
            {content}
        </div>
      </div>
      <div class="row">
            <div class="col-md-12">
                  <div class="footer"></div>
            </div>
      </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>