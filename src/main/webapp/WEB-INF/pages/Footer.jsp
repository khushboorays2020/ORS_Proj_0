<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Footer</title>
<style type="text/css">
html {
	position: relative;
	min-height: 100%;
}
body{
position: relative;
margin: 0;
padding-bottom: 1rem;
min-height: 100%

}


.footer{
position: absolute;
right: 0;
bottom: 0;
color: white;
left: 0;
display: block;
box-shadow:0px 0px 0px 0px #244a4a;
background-color: #808080;
text-align: center;
z-index: 2500;


}
</style>
</head>
<body>


	<div class="footer">
		
			<p color:white;>
				<i> &copy;<s:message code="footer.label"></s:message> </i>
			</p>

		</div>

</body>
</html>