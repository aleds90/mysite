<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="<c:url value="/resources/main.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/main.js" />"></script>
    <link href="<c:url value="/resources/popup.css" />" rel="stylesheet">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<style>
</style>
</head>
<body>
 <header id="header">
  <div class="inner">
   <a href="index.html" class="logo">Alessandro DS</a>
   <nav id="nav">
    <a id="home">Home</a>
    <a id="contact">Contact</a>
    <a id="show_login">Login</a>
   </nav>
  </div>
 </header>
 <div id="login" style="display: none;" style="text-align: center;"  tabindex="-1" role="dialog" >
  <form>
                <input style="text-align: center; margin: auto; width:300px;" type = "text" id = "login" placeholder = "Username" name = "uid">
                <input style="text-align: center; margin: auto; width:300px;" type = "text" id = "password" placeholder = "Password">
                <div style="text-align: center; margin: auto; width:300px;">
                 <input type = "submit" id = "close_login" value = "Register"> 
                 <input type = "submit" id = "dologin" value = "Login"> 
                </div>
                
        </form>
 </div>
 <section id="banner">
  <div class="inner">
   <h1>Software & Mobile Developer</h1>
  </div>
 </section>
 <section id="three">
				<div class="inner">
					<article>
						<div class="content">
							<span class="icon fa-laptop"></span>
							<header>
								<h3>Tempus Feugiat</h3>
							</header>
							<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna lorem ullamcorper laoreet, lectus arcu.</p>
							<ul class="actions">
								<li><a href="#" class="button alt">Learn More</a></li>
							</ul>
						</div>
					</article>
					<article>
						<div class="content">
							<span class="icon fa-diamond"></span>
							<header>
								<h3>Aliquam Nulla</h3>
							</header>
							<p>Ut convallis, sem sit amet interdum consectetuer, odio augue aliquam leo, nec dapibus tortor nibh sed.</p>
							<ul class="actions">
								<li><a href="#" class="button alt">Learn More</a></li>
							</ul>
						</div>
					</article>
					<article>
					<div class="content">
							<span class="icon fa-laptop"></span>
							<header>
								<h3>Sed Magna</h3>
							</header>
							<p>Suspendisse mauris. Fusce accumsan mollis eros. Pellentesque a diam sit amet mi ullamcorper vehicula.</p>
							<ul class="actions">
								<li><a href="#" class="button alt">Learn More</a></li>
							</ul>
						</div>
					</article>
				</div>
			</section>
 <section id="footer">
    <div class="inner">
     <header>
      <h2>Contact for any info!</h2>
     </header>
     <form method="post" action="#">
      <div class="field half first">
       <label for="name">Name</label>
       <input type="text" name="name" id="name">
      </div>
      <div class="field half">
       <label for="email">Email</label>
       <input type="text" name="email" id="email">
      </div>
      <div class="field">
       <label for="message">Message</label>
       <textarea name="message" id="message" rows="6"></textarea>
      </div>
      <ul class="actions">
       <li><input type="submit" value="Send Message" class="alt"></li>
      </ul>
     </form>
     <div class="copyright">
      © Untitled Design: <a href="https://templated.co/">TEMPLATED</a>. Images <a href="https://unsplash.com/">Unsplash</a>
     </div>
    </div>
  </section>    
</body>
<script src="<c:url value="/resources/jquery.min.js" />"></script>
<script src="<c:url value="/resources/jquery-ui.min.js" />"></script>
<script>



$(document).ready(function(){
	
	$("#home").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#banner").offset().top
	    }, 2000);
	});
	
	$("#contact").click(function() {
	    $('html, body').animate({
	        scrollTop: $("#footer").offset().top
	    }, 2000);
	});
	
    $("#show_login").click(function(){
     showpopup();
    });
    
    $("#close_login").click(function(){
     hidepopup();
    });

 });


 function showpopup()
 {
	if($("#login").is(":visible")){
		  $("#login").fadeOut();
		  $("#login").css({"visibility":"hidden","display":"none"});
	}else{
		$("#login").fadeIn();
	    $("#login").css({"visibility":"visible","display":"block"});
	}; 
    
 }

</script>
</html>