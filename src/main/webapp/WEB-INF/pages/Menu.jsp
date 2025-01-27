


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">

#mySidenav a {
    margin-top:0px;
    position: absolute;
   left: -60px;   
    transition: 0.3s; 
    padding: 10px;
    
     width: 150px; 
    text-decoration: none;
    
    text-align:right;
   
    color: white;
    border-radius: 0 5px 5px 0; 
}

#mySidenav a:hover {
    left: 0;
}

#user {
    top: 120px;
    background-color: #4CAF50;
}

#college {
    top: 180px;
    background-color: #2196F3;
}

#student {
    top: 240px;
    background-color: #f44336;
}

#course {
    top: 300px;
    background-color: #555
}
#subject {
    top: 360px;
    background-color: #4CAF50;
}

#role {
    top: 420px;
    background-color: #2196F3;
}

#timetable {
    top: 480px;
    background-color: #f44336;
}

#faculty {	
    top: 535px;
    background-color: #555
}
#marksheet {
    top: 590px;
    background-color: #4CAF50
}

</style> 
 <style type="text/css">
@media (min-width: 200px) and (max-width: 1024px) {
.dis{

display:block; 
display:none;
text-decoration:none;  

}
}

</style>
 

</head>
<body>

<div id="mySidenav" class="sidenav dis">
 <c:if test="${not empty sessionScope.user && sessionScope.user.roleId==1}">
  
  
  <a href="<c:url value="/ctl/User/search"></c:url>" id="user" ><s:message	code="header.userList"/> </a>
  <a href="<c:url value="/ctl/Role/search"></c:url>" id="role"><s:message	code="header.roleList"/> </a>
  <a href="<c:url value="/ctl/College/search"></c:url>" id="college"><s:message	code="header.collegeList"/> </a>
  <a href="<c:url value="/ctl/Student/search"></c:url>" id="student"><s:message	code="header.studentList"/> </a>
  <a href="<c:url value="/ctl/Faculty/search"></c:url>" id="faculty"><s:message	code="header.facultyList"/> </a>
  <a href="<c:url value="/ctl/Course/search"></c:url>" id="course"><s:message	code="header.courseList"/> </a>
  <a href="<c:url value="/ctl/Subject/search"></c:url>" id="subject"><s:message	code="header.subjectList"/> </a>
  <a href="<c:url value="/ctl/Marksheet/search"></c:url>" id="marksheet"><s:message	code="header.marksheetList"/> </a>
  <a href="<c:url value="/ctl/TimeTable/search"></c:url>" id="timetable"><s:message	code="header.timetableList"/> </a>
</c:if>
</div>

</body>
</html> 
    
    