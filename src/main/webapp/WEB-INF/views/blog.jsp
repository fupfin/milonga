<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>In The Clouds - Template by Bryant Smith</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/blog.css" />
</head>
<body>

<div id="container">
	<div id="header">
	    <div id="picture">
            <h1>In The Clouds</h1>
            <h2>${sessionScope["userId"]}</h2>
        </div>
    </div>
    <div id="main">
    <div id="leftcol_container">
    	<div class="leftcol">
        	<h2>Articles</h2>
        	<ul>
            	<li><a href="#">Designing websites </a></li>
            	<li><a href="#">XHTML for dummies</a></li>
            	<li><a href="#">How CSS works</a></li>
            	<li><a href="#">SEO Marketing</a></li>
            	<li><a href="#">Search Submission</a></li>
            	<li><a href="#">All about CMS</a></li>
                <li><a href="#">Designing for Joomla</a></li>
                <li><a href="#">Google Adsense help</a></li>
                <li><a href="#">Marketing Online</a></li>
                <li><a href="#">Pay Per Click</a></li>
                <li><a href="#">Designing XHTML 1.1</a></li>
                <li><a href="#">Making Money Online</a></li>
                <li><a href="#">Web Templates</a></li>
                <li><a href="#">Javascript for all</a></li>
                <li><a href="#">Why jQuery is Great</a></li>
                <li><a href="#">What is Ajax</a></li>
            </ul>
        	<p>&nbsp;</p>
        	<h2>Most Popular</h2>
            <ul>
	            <li><a href="#">Web Templates</a></li>
                <li><a href="#">Javascript for all</a></li>
                <li><a href="#">Why jQuery is Great</a></li>
                <li><a href="#">All about CMS</a></li>
                <li><a href="#">Designing for Joomla</a></li>
                <li><a href="#">Google Adsense help</a></li>
                <li><a href="#">Marketing Online</a></li>
                <li><a href="#">What is Ajax</a></li>
            	<li><a href="#">Designing websites </a></li>
            	<li><a href="#">XHTML for dummies</a></li>
            	<li><a href="#">How CSS works</a></li>
            	<li><a href="#">SEO Marketing</a></li>
            	<li><a href="#">Search Submission</a></li>
                <li><a href="#">Pay Per Click</a></li>
                <li><a href="#">Designing XHTML 1.1</a></li>
                <li><a href="#">Making Money Online</a></li>
            </ul>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <a href="#">Contact Us</a>
      </div>
      <div class="leftcol_bottom"></div>
      </div>
      
        <div id="maincol_container">
        <div class="maincol">
        
        <c:forEach var="blog" items="${bloggs}" varStatus="i">
        <h2><spring:eval expression="blog.title"/></h2>
        <p>${blog.content}<br />
          <br />
        </p>
        </c:forEach>
        
                  
        <h2>Template Usage</h2>
        <p>You may use this template in any way you please, <strong>just leave the link at the bottom of the page</strong> back to me.  I love to see how and where my templates are used, so feel free to email me from my site <a href="http://bryantsmith.com">BryantSmith.com</a>.  I also offer professional design, programming, and marketing services, so if you need something a bit more complex, or need help with this template, I'd be happy to help.  I design these templates for free to help those you may not have the time or budget for a full scale custom site, but always appreciate small donations for my services (paypal: paypal@bryantsmith.com).   Thank you, and enjoy the template!<br />
          <br />
        </p>
        
        <h2>Customizing the columns</h2>
        <p>All of the left and right columns have been created so that you can either have one continues box that goes all the way to the bottom, or several different boxes in each column, however you like it.  To make multiple columns, <strong>select the divs 'leftcol' and 'leftcol_bottom'</strong>, copy, and paste the below the current ones (still inside of the 'leftcol_container' div).   This will create an exact copy of your column directly underneath your current one.  The left menu is an example of a long single div, while the right is multiple divs using the above method. 
        <p>   This process is exactly the same for the main column (replace 'maincol' for 'leftcol') and the right as well ('rightcol' instead of 'leftcol').  The site looks good either way you do it, so experiment around with what works best for you.  The box below this one shows what an additional main column looks like (as opposed to a long single one)
        </p>
        <p>&nbsp;</p>
        
        <h2>More Template Information</h2>
        <p>If you want to change the picture at the top to something else, the easiest way to do this would be to overwrite the current image (located at: /images/picture.jpg) with your own JPEG image.  Just make sure to keep the same dimensions of 900x237.  The headings in all the columns are &lt;h2&gt; tags, and are automatically formatted for you.</p>
        </div>
        <div class="maincol_bottom"></div>
        
        <div class="maincol">          
        <h2>Customizing the columns</h2>
<p>All of the left and right columns have been created so that you can either have one continues box that goes all the way to the bottom, or several different boxes in each column, however you like it.  To make multiple columns, select the divs 'leftcol' and 'leftcol_bottom', copy, and paste the below the current ones (still inside of the 'leftcol_container' div).   This will create an exact copy of your column directly underneath your current one.  The left menu is an example of a long single div, while the right is multiple divs using the above method. <p>   This process is exactly the same for the main column (replace 'maincol' for 'leftcol') and the right as well ('rightcol' instead of 'leftcol').  The site looks good either way you do it, so experiment around with what works best for you.  The box below this one shows what an additional main column looks like (as opposed to a long single one)</p>
        </div>
        <div class="maincol_bottom"></div>
        </div>
        
        
     <div id="rightcol_container">
        
        
        <div class="rightcol">
        <h2>Categories</h2>
        	<ul>
            	<li><a href="#">Design</a></li>
            	<li><a href="#">Marketing</a></li>
            	<li><a href="#">SEO</a></li>
            	<li><a href="#">Graphics</a></li>
            	<li><a href="#">Flash</a></li>
            	<li><a href="#">Animation</a></li>
            </ul>
        </div>
        <div class="rightcol_bottom"></div>
        
        <div class="rightcol">
        <h2>Blogs</h2>
        	<ul>
            	<li><a href="#">John's Web design</a></li>
            	<li><a href="#">The Design Blog</a></li>
            	<li><a href="#">Designs4all</a></li>
            	<li><a href="#">Free XHTML Templates</a></li>
            	<li><a href="#">WebGraphics</a></li>
            	<li><a href="#">HowToWeb</a></li>
            </ul>
        </div>
        <div class="rightcol_bottom"></div>
        
        <div class="rightcol">
        <h2>Links</h2>
        	<ul>
            	<li><a href="#">Google</a></li>
            	<li><a href="#">Yahoo</a></li>
            	<li><a href="#">Bing</a></li>
            	<li><a href="#">Ask</a></li>
            	<li><a href="#">Dogpile</a></li>
            	<li><a href="#">Altavista</a></li>
            </ul>
        </div>
        <div class="rightcol_bottom"></div>
        
       <div class="rightcol">
        <h2>Most Recent</h2>
        	<ul>
            	<li><a href="#">Web Designers</a></li>
            	<li><a href="#">Internet Marketing</a></li>
            	<li><a href="#">Easy SEO</a></li>
            	<li><a href="#">Web Graphics</a></li>
            	<li><a href="#">Flash Animation</a></li>
            </ul>
        </div>
        <div class="rightcol_bottom"></div>
        
        
        </div>
        <div class="clear"></div>
        
         <div id="footer"><h3><a href="http://www.bryantsmith.com">web design florida</a></div>
  </div>

</div>
</body>
</html>
