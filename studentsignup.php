<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <?php
  	include("connection.php");
	$dery=mysqli_query($con,"select * from clearance_basics");
	$wata=mysqli_fetch_array($dery);
	$copyright=$wata['rights'];
	$developed=$wata['developed'];
	$website=$wata['website'];
	$title=$wata['title'];
	$subtitle=$wata['subtititle'];
  ?>
<title><?php echo $title; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="icon" type="image/ico" href="images/icon.ico" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="topbar" class="clear">
    <ul>
	<h1><a style="color:#FFFFFF;font-size:3em;" href="index.php"><?php echo $title; ?></a></h1>
      <p><?php echo $subtitle; ?></p>
    </ul>
  </div>
</div>
<div class="wrapper col2" >
  <div id="header" class="clear">
    <div id="topnav" style="float:left;">
	  <ul>
        <li class="last"><a href="contact.php">Contact Us</a><span>give us your feedback</span></li>
        <li><a href="about.php">About Us</a><span>More about system</span></li>
        <li><a href="index.php">Homepage</a><span>Clearance Home</span></li>
      </ul>
    </div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container" class="clear"> 
  	<fieldset style="width:80%;">
  	<legend><h1 style="color:#000000;">GRADUATING OR LEAVINGS STUDENTS SIGN UP</h1></legend>
	<center>
	<form action="studentsignupconfirm.php" method="post">
	<font size="4" color="#000000">enter your full name</font><br/>
	<input required="required" type="text" placeholder="full name goes here" name="fullname" style="color:#0000FF;width:40%;border:grey 2px solid;text-align:center;"/><br/><br />
	<font size="4" color="#000000">enter your admission number</font><br/>
	<input required="required" type="text" placeholder="admission number goes here" name="idnumber" style="color:#0000FF;width:40%;border:grey 2px solid;text-align:center;"/><br/><br />
	<font size="4" color="#000000">enter your password</font><br/>
	<input required="required" type="password" placeholder="password goes here" name="password" style="color:#0000FF;width:40%;border:grey 2px solid;text-align:center;"/><br/><br />
	<font size="4" color="#000000">Choose your major</font><br/>
	<select name="major" style="color:#666666;width:40%;border:grey 2px solid;text-align:center;">
	<option>education</option>
	<option>Computer Science and Information Technology</option>
	<option>nutrition</option>
	<option>electrical engineering</option>
	<option>software engineering</option>
	<option>automotive engineering</option>
	</select><br/><br/>
	<font size="4" color="#000000">Choose your residence</font><br/>
	<select name="residence" style="color:#666666;width:40%;border:grey 2px solid;text-align:center;">
	<option>oncampus</option>
	<option>offcampus</option>
	</select><br/><br/>
	<font size="4" color="#000000">Choose your department</font><br/>
	<select name="department" style="color:#666666;width:40%;border:grey 2px solid;text-align:center;">
	<option>mathematics and applied sciences</option>
	<option>information systems and computing</option>
	<option>department of Radigraphy</option>
	<option>department of Nursing</option>
	<option>department of Optometry</option>
	<option>department of Agricultural Engineering</option>
	<option>department of Civil Engineering</option>
	<option>department of Software Engineering</option>
	<option>department of ing</option>
	</select><br/><br/>
	<input type="submit" value="Request SignUp" />
	</form>
	</center>
	</fieldset>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2022-<?php echo date("Y");?> - All Rights Reserved - <a href=""><?php echo $copyright; ?></a></p>
    <p class="fl_right">Designed by <a target="_blank" href="<?php echo $website; ?>" title="<?php echo $developed; ?>"><?php echo $developed; ?></a></p>
  </div>
</div>
</body>
</html>