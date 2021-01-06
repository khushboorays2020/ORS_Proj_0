<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


<style>
.error {
	color: red;
	font-weight:600;
}

.success {
	color: green;
	font-weight: 600;
	
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BaseLayout</title>
</head>
<body  >
	<table  cellspacing="2" align="center" width="100%">
		<tr>
			<td colspan="2" height="100px"><tiles:insertAttribute
					name="header">
				</tiles:insertAttribute></td>
		</tr>
		<tr>
			<td colspan="" height="400px" valign="top" width="8%"><tiles:insertAttribute
					name="menu"></tiles:insertAttribute></td>
			<td colspan="1" height="400px" width="100%" valign="top"><tiles:insertAttribute
					name="body"></tiles:insertAttribute></td>

		</tr>
		<tr>
			<td colspan="2" align="center"><tiles:insertAttribute
					name="footer"></tiles:insertAttribute></td>
		</tr>

	</table>

</body>
</html>