<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Corlate</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
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

<body class="homepage">

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
                        <li class="active"><a href="Home.aspx">Home</a></li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="drodown">Departments <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                 <li><a href="officeOfTheMunicipalManagerDocuments.aspx">Office Of The Municipal Manager</a></li>
                            </ul>
                        </li>
                        <%--<li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Departments <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="pricing.html">Office Of The Muncipal Manager</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li>--%>
                        <li class=""><a href="Council.aspx">Council</a></li>
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

<div>
     <div class="row">
<%--                <div class="col-md-4 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                    <div class="clients-comments text-center">
                        <img src="images/client1.png" class="img-circle" alt="">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</h3>
                        <h4><span>-John Doe /</span>  Director of corlate.com</h4>
                    </div>
                </div>--%>
                <div class="col-md-offset-4 col-md-4 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                    <div class="clients-comments text-center">
                        <img src="images/management/zebo tshetlho - municipal manager.jpg" class="img-circle" alt="">
                        <h3>"I stand to serve you."</h3>
                        <h4><span>Zebo Tshetlho / </span>Municipal Manager</h4>
                    </div>
                </div>
              <%--  <div class="col-md-4 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                    <div class="clients-comments text-center">
                        <img src="images/client3.png" class="img-circle" alt="">
                        <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt</h3>
                        <h4><span>-John Doe /</span>  Director of corlate.com</h4>
                    <8/div>
                </div>--%>
           </div>
     <div class="container">
         <div class="center wow fadeInUp"><p class="lead">As the head of administration the Municipal Manager is responsible for the following tasks according to the Municipal Systems Act
                       The formation and development of an economical, effective, efficient and accountable administration. The management of the municipality’s administration in accordance with legislation applicable to the municipality. The implementation of the municipality’s integrated development plan. The management of the provision of services to the local community in a sustainable and equitable manner. The appointment of staff subject to the Employment Equity Act, 1998. The management, effective utilisation and training of staff. The maintenance of discipline of staff. The promotion of sound labour relations and compliance with labour legislation. Advising the political structures and political office bearers of the municipality. Managing communications between the municipality’s administration and its political structures and political office bearers. Carrying out the decisions of the political structures and political office bearers of the municipality. The administration and implementation of the municipality’s by-laws and other legislation. The exercise of any powers and the performance of any duties delegated by the municipal council. Facilitating participation by the local community in the affairs of the municipality. The implementation of national and provincial legislation.
 
                   </p></div>

<%--                    --%>
<%--                        <p >Duties of the Municipal Manager</p>--%>
<%-- --%>
<%--                        <p >Beginning of council’s term and by-elections</p>--%>
<%--                        <p >Municipal manager’s accountability</p>--%>
<%--                        <p >Performance agreement</p>--%>
<%--                        <p >Employment contract</p>--%>
<%--                        <p >Terms of reference</p>--%>
<%--                        <p >Responsive administration</p>--%>
<%--                        <p >Public participation mechanisms</p>--%>
<%--                        <p >Communication to the public</p>--%>
<%--                        <p >Service delivery</p>--%>
<%--                        <p >Manage Municipal Finances</p>--%>
<%--                        <p >Municipal manager as head of the administration</p>--%>
<%--                        <p >Communication between council and administration</p>--%>
<%--                        <p >Communication between political structures</p>--%>
<%--                        <p >Advising the political structures</p>--%>
<%--                        <p >Implementation of legislation</p>--%>
<%--                        <p >Integrated Development Planning</p>--%>
<%--                        <p >Performance management</p>--%>
<%--                        <p >Implementation of performance management</p>--%>
<%--                        <p >Delegations</p>--%>
<%--                        <p >Compiling of Annual report</p>--%>

                </div>

    <section id="services" class="service-item">
	   <div class="container">
            <div class="center wow fadeInDown">
                <h2>Quick Links</h2>
            </div>
                           <div class="row">

                <div class="col-sm-6 col-md-4">
                <a href="">
                  <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services1.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Planning & Development</h3>

                        </div>
                    </div>  
                </a>    
                </div>
                
                <div class="col-sm-6 col-md-4">
                    <a href="internalAudit.aspx">
                        <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services2.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Internal Audit Shared Service</h3>
                        </div>
                    </div>
                    </a>
                </div>

                <div class="col-sm-6 col-md-4">
                    <a href="">
                        <div class="media services-wrap wow fadeInDown">
                        <div class="pull-left">
                            <img class="img-responsive" src="images/services/services3.png">
                        </div>
                        <div class="media-body">
                            <h3 class="media-heading">Risk Management</h3>
                        </div>
                    </div>
                    </a>
                </div>  
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#services-->
    <!--/#content-->

</div> 

<footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
              
                <div class="col-sm-12">
                    <ul class="center">
                        <li><a href="#">Home</a></li>
                        <li><a href="#"> Vacancies</a></li>
                        <li><a href="InformationLibrary.aspx">Information Library</a></li>
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