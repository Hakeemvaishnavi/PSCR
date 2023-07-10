


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Providing services to city residents with registered unorganized workers</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation -->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top"><i class="fa fa-moon-o fa-rotate-90"></i> PSCR</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#page-top" class="page-scroll">Home</a></li>
        <li><a href="#services" class="page-scroll">Services</a></li>
        <li><a href="#about" class="page-scroll">About</a></li>
		<li><a href="admin.html">Admin</a></li>
		<li><a href="worker.html">Worker Login</a></li>
		<li><a href="user.html">Use r</a></li>
        <li><a href="#contact" class="page-scroll">Contact</a></li>

	  </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<!-- Header -->
<header id="header">
  <div class="intro text-center">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
       
		
	<h1 style="font-size:20px;float:right;">Welcome to Customer,<%= session.getAttribute("UserName") %><Br><a href="userhome.jsp">Back</a></h1>
			<br><br><h2>Worker Requests</h2><Br><br>
<table align="center" style="font-size:20px;" border=2 width=70%>
<tr><th colspan=2>Rating</th></tr>
  <form action="sendfeedback1.jsp" method="post">
  <Tr><th>WorkerName</th><th><select name="workername" style="color:black;">
  <%@include file="DBConn.jsp" %>
  <%
    PreparedStatement pst=con.prepareStatement("select workername from accpted_requests where customername=? and status=?");
	String user=(String)session.getAttribute("UserName");
	pst.setString(1,user);
	pst.setInt(2,1);
  	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
  %>
      <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
  <%
	}
    %>
	</select></th></tr>
	<tr><th>Rating </th><th><input type="number" min=1 max=5 name="rating" required style="color:black;" name="rating" /></th></tr>
	<tr><th>Message</th><th><textarea name="message" rows=5 cols=20 style="color:black;">
	</textarea></th></tr>
	<tr><th><input type="submit" value="submit" style="color:black;"/></th><th><input style="color:black;" type="Reset" value="Reset" /></th></tr>
  </form>
</table>

		</div>
      </div>
    </div>
  </div>
</header>
<!-- Services Section -->
<div id="services" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
      <h2>Our Services</h2>
      <p>The Objective of this system is to provide a work to worker. The system focuses on the workers of unorganized sector that includes masons, carpenters, electricians, gardeners, painters and others. The system allows interaction between organized and unorganized sectors..</p>
    </div>
    <div class="row">
      <div class="col-xs-6 col-md-3"> <i class="fa fa-desktop"></i>
        <h4>Responsive mobile</h4>
        <p>The proposed system is a web-based solution through which workers register their details. Using this system general public or organized sector user can select the workers as per their need.</p>
      </div>
      <div class="col-xs-6 col-md-3"> <i class="fa fa-gears"></i>
        <h4>Features</h4>
        <p>Organized sector user or general public can rate worker skill, charges, particularity about time, dedication, behavior, habits etc through this system. Users can put their demands regarding particular skill workers along with project location, and project details.</p>
      </div>
      <div class="col-xs-6 col-md-3"> <i class="fa fa-rocket"></i>
        <h4>Users</h4>
        <p>Admin<p></p>.Worker<p></p>Normal User<p></p>
		</p>
      </div>
      <div class="col-xs-6 col-md-3"> <i class="fa fa-line-chart"></i>
        <h4>Worker-Customer communication</h4>
        <p>Workers accept the customers applications, accessories and receive the requests from the customers by online booking facility .Workers interract with customers in friendly way and make customers satisfy them.</p>
      </div>
    </div>
  </div>
</div>
<!-- About Section -->
<div id="about">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title text-center">
      <h2>About Us</h2>
      <p>The Objective of this system is to provide a work to worker. The system focuses on the workers of unorganized sector that includes masons, carpenters, electricians, gardeners, painters and others. The system allows interaction between organized and unorganized sectors.</p>
    </div>
    <div class="row">
      <div class="col-xs-12 col-md-6"> <img src="img/about.PNG" class="img-responsive" alt=""> </div>
      <div class="col-xs-12 col-md-6">
        <div class="about-text">
          <h4>Admin</h4>
          <p>Administrator is responsible for overall management of application. Administrator generates various reports in different formats. The reports contain details about workers, services, users and customers.

</p>
          <h4>Workers</h4>
          <p>            Workers must register with the system with a centralized security mechanism. Workers are classified into various groups and categorized as skilled, semiskilled etc,. The state can be modified by feedback system & workers rating evaluation algorithms. Profile management facility is also available. Worker can view details and information about a project (organized sector) in particular location. Worker can maintain the work calendar.</p>
          <h4>Customers</h4>
          <p>Customers include general public and organized sector user. Customers must register with the system with a centralized security mechanism. Customers are allowed to manage their profiles. Customers can make a community for reference purpose etc. Customers can give their feedback for worker(s) who worked for them. </p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="contact" class="text-center">
  <div class="overlay">
    <div class="container">
      <div class="col-md-8 col-md-offset-2 section-title">
        <h2>Get In Touch</h2>
        <p>The Objective of this system is to provide a work to worker. The system focuses on the workers of unorganized sector that includes masons, carpenters, electricians, gardeners, painters and others. The system allows interaction between organized and unorganized sectors.</p>
      </div>
      <div class="col-md-8 col-md-offset-2">
        <form name="sentMessage" id="contactForm" novalidate>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <input type="text" id="name" class="form-control" placeholder="Name" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <input type="email" id="email" class="form-control" placeholder="Email" required="required">
                <p class="help-block text-danger"></p>
              </div>
            </div>
          </div>
          <div class="form-group">
            <textarea name="message" id="message" class="form-control" rows="4" placeholder="Message" required></textarea>
            <p class="help-block text-danger"></p>
          </div>
          <div id="success"></div>
          <button type="submit" class="btn btn-default">Send Message</button>
        </form>
        <div class="social">
          <ul>
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a href="#"><i class="fa fa-github"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="footer">
  <div class="container text-center">
    <div class="fnav">
      <p>Copyright &copy; 2018  Designed by <a href="#" rel="nofollow">SIIT</a></p>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
<script type="text/javascript" src="js/jquery.isotope.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>