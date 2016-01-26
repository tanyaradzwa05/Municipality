<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>About Us | Corlate</title>
	
	<!-- core CSS -->
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
                        <li class=""><a href="Council.aspx">Council</a></li>
                        <li class=""><a href="Management.aspx">Management</a></li>
                        <li class=""><a href="InformationLibrary.aspx">Information Library</a></li>
                        <li class="active"><a href="AboutUs.aspx">About Us</a></li>
                        <li><a href="Notices/Events.aspx">Notices/Events</a></li>
                        <li class="active"><a href="ContactUs.aspx">Contact Us</a></li>                         
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
	</header><!--/header-->

    <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>Introduction</h2>
				<p class="lead">Dr Ruth Segomotsi Mompati District Municipality (formerly known as Bophirima District Municipality) is one of the 4 districts in North West province of South Africa.

The Municipality was renamed after one of South Africa's freedom fighter and activist, <a href="#" style="color:#0000EE">Dr Ruth Segomotsi Mompati</a>. The offices of Dr Ruth Segomotsi Mompati District Municipality are located in Vryburg. The majority of its 439 637 people speak Setswana according to 2001 Census.

The District is South Africa's largest beef producing district, with Hereford cattle the most popular. It is sometimes called "the Texas of South Africa". Maize and peanuts are important crops produced in the district.</p>
			<div class="center wow fadeInDown">
				<h2>Geography</h2>
             
                <div class="row">
				 <h5>Mompati District is surrounded by:</h5>
                   
                </div>
                            <p>The republic of Botswana to the north.</p>
                            <p >Ngaka Modiri Molema District Municipality to the north-east.</p>
                            <p>Dr Kenneth Kaunda District Municipality to the south-east.</p>
                            <p>Lejweleputswa District Municipality (Free State province) to the south-east.</p>
                            <p>Frances Baard District Municipality (Northern Cape province) to the south.</p>
                            <p>Kgalagadi District Municipality (Northern Cape province) to the west.</p>
                       
                </div><!--/.col-md-3-->
            </div>
			
			<!-- about us slider -->
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/about-introduction images/herefordcattle.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="images/about-introduction images/maize.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="images/about-introduction images/peanuts.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div>
            
            <!--/#about-slider-->
			
			    
			<!-- Our Skill -->
			<div class="skill-wrap clearfix" id="drruth">
			
				<div class="center wow fadeInDown">
					<h2>Dr Ruth Segomotso Mompati</h2>
                    <h4>This district was renamed after South African icon Dr Ruth Segomotsi Mompati</h4>
                    	<div class="row">
					 <div class="col-md-12 col-sm-12">
						<div class="wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<img src="images/drruth-herself/dr ruth image 2013.png"/>
						</div>
					</div>
					
				</div>
	
					<p class="lead">Dr Ruth Segomotsi Mompati was born in Tlapeng Village, few kilometres from Ganyesa in Kagisano-Molopo area within the district of Bophirima, now called Dr Ruth Mompati District Municipality after it (the district) being named after her. Born on the 14 September  1925, she grew up in a thoroughly rural environment. Between 1933 and 1940 she attended Vryburg United Primary Schools, where she completed Standard six (6). Two years later, she continued her schooling at Tigerkloof Institution of Education where she received her Native Lower Primary Certificate. In 1944 she started her teaching career at the age of nineteen in Dithakwaneng Primary School near Vryburg.
                        "She is passionately known as "Mama Ruta" within her community"
                        She got married in 1952 and lost her job due to apartheid laws regulated that black female teachers were not supposed to get married. Immediately after, she moved to Johannesburg and became an active member of the ANC Orlando branch. In the same year, she studied short-hand typing.
                        In 1953 she was employed by Mandela and Tambo Attorneys as a short-hand typist. She became a member of the National Executive Committee of the ANC Women’s League and become one of the founder members of the Federation of South African  Women the following year. She was one of the organisers and leaders of the Anti Pass Law march in Pretoria on the 9th August 1956.
                        In 1962, she left the country for Military training with MKhondo We Sizwe in the then Soviet Union.  She could not return to the Country to do her underground work because her colleague had given evidence against the ANC leadership. She had to become the full-time cadre of the underground movement in exile.
                        In 1966 she was elected to the National Executive Committee and during the same year she was transferred to the ANC‘s office in Zambia, but continued between Tanzania and Zambia during the course of her work in the ANC President’s office. In 1966, she was sent to Germany by the movement as the ANC Women’s League secretary to represent the Federation of South African Women in its secretariat.
                        In 1990, she was chosen to be part of the ANC delegation that negotiated the peaceful transition with the government at Groote Schuur. In 1994 she was elected to the National Assembly of the Republic of South Africa and served as a Member of Parliment from 1994-1996 before she seconded to become an Ambassador to Switzerland until 2000.
                        In 1996, Mama Ruth was awarded an Honorary Masters Degree in Education by the University of the North West in Mahikeng. The scholarship was named after her by Huston-Tillotson University, in Austin, Texas, USA. In 1998, the Medical University of South Africa awarded her an Honorary Doctorate. She has been the Mayor of Naledi Local Municipality from June 2000 until May 2010. In consolidating the vision of the society and the country she liberated, this true activist and daughter of the soil continues to serve community in various capacities. She serves on many Boards, including being Chairperson of the Swiss-South Africa Corporative Initiative Trust.</p>
				</div>
				
			
            </div><!--/.our-skill-->
		</div><!--/.container-->
    </section><!--/about-us-->
	
    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->
    

    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $('.carousel').carousel()
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
</body>
</html>