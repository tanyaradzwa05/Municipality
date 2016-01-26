<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Council.aspx.cs" Inherits="Council" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Council</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <%-- <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>--%>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                          <li class=""><a href="Home.aspx">Home</a></li>
                        <li class=""><a href="Departments.aspx">Departments</a></li>
                        <li class="active"><a href="Council.aspx">Council</a></li>
                        <li class=""><a href="Management.aspx">Management</a></li>
                        <li class=""><a href="InformationLibrary.aspx">Information Library</a></li>
                        <li><a href="AboutUs.aspx">About Us</a></li>
                        <li><a href="Notices/Events.aspx">Notices/Events</a></li>
                        <li><a href="ContactUs.aspx">Contact</a></li>                          
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->
    <section id="portfolio">
        <div  class="container wow fadeInUp" >
            <div class="center">
               <h2>Council</h2>
            </div>
        

            <ul class="portfolio-filter text-center">
                <li><a class="btn btn-default active" href="#" data-filter="*">Everyone</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".mmc">MMC</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".bootstrap">Executive Mayor</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".html">Councillors</a></li>
                <li><a class="btn btn-default" href="#" data-filter=".wordpress">Execute Directors</a></li>
                
            </ul><!--/#portfolio-filter-->

            <div class="row">
                <div class="portfolio-items">
                    <div class="portfolio-item apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr ce tladinyane - executive mayor.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item  mmc col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr k mojanaga - budget  treasury portfolio.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                    <%--<a class="preview" href="images/portfolio/full/item2.png" rel="prettyPhoto"><i class="fa fa-eye"></i> View</a>--%>
                                </div> 
                            </div>
                        </div>          
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item bootstrap wordpress col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr k sereko - corp serv  special prog portfolio.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>        
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item joomla wordpress apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr p kgosieng - planning  dev portfolio.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                   <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>           
                    </div><!--/.portfolio-item-->
          
                    <div class="portfolio-item joomla html bootstrap col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr s kgodumo - engineering  tech serv.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                   <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>      
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item wordpress html apps col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr s montshioagae - economic dev tourism  agric portfolio.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>         
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item wordpress html col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr s moyakhe - community services portfolio.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                    <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>          
                    </div><!--/.portfolio-item-->

                    <div class="portfolio-item wordpress html bootstrap col-xs-12 col-sm-4 col-md-3">
                        <div class="recent-work-wrap">
                            <img class="img-responsive" src="images/council/cllr n skalk - speaker.jpg" alt="">
                            <div class="overlay">
                                <div class="recent-work-inner">
                                  <h3><a href="#">Name Surname</a></h3>
                                    <p>Position</p>
                                </div> 
                            </div>
                        </div>          
                    </div><!--/.portfolio-item-->
                   
                </div>
            </div>
        </div>
    </section><!--/#portfolio-item-->
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
              
                <div class="col-sm-12">
                    <ul class="center">
                        <li><a href="#">Home</a></li>
                        <li><a href="#"> Vacancies</a></li>
                        <li><a href="#">Information Library</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                  <div class="col-sm-12 center">
                    &copy; 2016 - Dreamscene Solutions.
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>

