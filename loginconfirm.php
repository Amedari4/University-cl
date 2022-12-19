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
      <li><a href="http://registration.buk.edu.ng">Online registration</a></li>
      <li><a href="http://signout.buk.edu.ng">Online Signout</a></li>
	  <li><a href="http://clearance.buk.edu.ng">Online Clearance</a></li>
    </ul>
	<form action="loginconfirm.php" method="post" style="float:right;text-align:right;">		
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input style="border:solid #999999;background-color:#FFFFFF;color:#0000CC;text-decoration:bold;width:15em;text-align:center;" type="text" name="username" placeholder="enter your username" required="required" />&nbsp;&nbsp;&nbsp;&nbsp;
	<input style="border:solid #999999;background-color:#FFFFFF;color:#0000CC;text-decoration:bold;width:15em;text-align:center;" type="password" name="password" placeholder="enter your password" required="required" />&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="Login" style="background-color:#999999;" /><br /><br />
	Not yet Registered for graduation? <a style="color:#FFFFFF;" href="studentsignup.php">Sign Up Here</a>
	</form>
  </div>
</div>
<div class="wrapper col2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="index.php"><?php echo $title; ?></a></h1>
      <p><?php echo $subtitle; ?></p>
    </div>
    <div id="topnav">
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
  <fieldset style="text-align:center;">
  	<legend><h1 align="center">Login Results</h1></legend>
	<p>
	<?php
	error_reporting(E_ERROR);
	$username=$_POST['username'];
	$password=$_POST['password'];
	if($username && $password)
	{
		//start of series of logins
		$studentquery=mysqli_query($con,"select * from student_details where idnumber='$username' && password='$password'");
		$studentlogin=mysqli_num_rows($studentquery);
		if($studentlogin == 1)
		{
			//go to student home
			session_start();
			$_SESSION['studentlogin']=$username;
			header("location:students/studenthome.php");
			//end of going to student home
		}
		else
		{
			$sportsquery=mysqli_query($con,"select * from login_sports where username='$username' && password='$password'");
			$sportslogin=mysqli_num_rows($sportsquery);
			if($sportslogin==1)
			{
				//go to sports home
				session_start();
				$_SESSION['sportslogin']=$username;
				header("location:sports/sportshome.php");
				//end of going to sports home
			}
			else
			{
				$residencequery=mysqli_query($con,"select * from login_residence where username='$username' && password='$password'");
				$residencelogin=mysqli_num_rows($residencequery);
				if($residencelogin==1)
				{
					//go to residence home
					session_start();
					$_SESSION['residencelogin']=$username;
					header("location:residence/residencehome.php");
					//end of going to residence home
				}
				else
				{
					$physicalplantquery=mysqli_query($con,"select * from login_physicalplant where username='$username' && password='$password'");
					$physicalplantlogin=mysqli_num_rows($physicalplantquery);
					if($physicalplantlogin==1)
					{
						//go to physical plant home
						session_start();
						$_SESSION['physicalplantlogin']=$username;
						header("location:physicalplant/physicalplanthome.php");
						//end of physical plant home
					}
					else
					{
						$foodquery=mysqli_query($con,"select * from login_food where username='$username' && password='$password'");
						$foodlogin=mysqli_num_rows($foodquery);
						if($foodlogin==1)
						{
							//go to food home
							session_start();
							$_SESSION['foodlogin']=$username;
							header("location:food/foodhome.php");
							//end of food home
						}
						else
						{
							$healthquery=mysqli_query($con,"select * from login_health where username='$username' && password='$password'");
							$healthlogin=mysqli_num_rows($healthquery);
							if($healthlogin==1)
							{
								//go to health home
								session_start();
								$_SESSION['healthlogin']=$username;
								header("location:health/healthhome.php");
								//end of health home
							}
							else
							{
								$libraryquery=mysqli_query($con,"select * from login_library where username='$username' && password='$password'");
								$librarylogin=mysqli_num_rows($libraryquery);
								if($librarylogin==1)
								{
									//go to library home
									session_start();
									$_SESSION['librarylogin']=$username;
									header("location:library/libraryhome.php");
									//end of library home
								}
								else
								{
									$financequery=mysqli_query($con,"select * from login_finance where username='$username' && password='$password'");
									$financelogin=mysqli_num_rows($financequery);
									if($financelogin==1)
									{
										//go to finance home
										session_start();
										$_SESSION['financelogin']=$username;
										header("location:finance/financehome.php");
										//end of finance home
									}
									else
									{
										$dosquery=mysqli_query($con,"select * from login_dos where username='$username' && password='$password'");
										$doslogin=mysqli_num_rows($dosquery);
										if($doslogin==1)
										{
											//go to dos home
											session_start();
											$_SESSION['doslogin']=$username;
											header("location:dos/doshome.php");
											//end of dos home
										}
										else
										{
											$registrarquery=mysqli_query($con,"select * from login_registrar where username='$username' && password='$password'");
											$registrarlogin=mysqli_num_rows($registrarquery);
											if($registrarlogin==1)
											{
												//go to registrar home
												session_start();
												$_SESSION['registrarlogin']=$username;
												header("location:registrar/registrarhome.php");
												//end of registrar home
											}
											else
											{
												$bookstorequery=mysqli_query($con,"select * from login_bookstore where username='$username' && password='$password'");
												$bookstorelogin=mysqli_num_rows($bookstorequery);
												if($bookstorelogin==1)
												{
													//go to bookstore home
													session_start();
													$_SESSION['bookstorelogin']=$username;
													header("location:bookstore/bookstorehome.php");
													//end of bookstore home
												}
												else
												{
													echo"Wrong username or password<br/><a href='index.php'>Try Again</a>";
												}
												//end
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		//end of series of logins
	}
	else
	{
		//echo"necessary variables not sent in<br/><a href='index.php'>Try Again</a>";
		header("location:index.php");
	}
	?>
	</p>
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
