<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<%@ page isELIgnored="false"%>

<html>
<head>
<style type="text/css">
table {
	border-collapse: collapse;
	width: 100%;
}

tr {
	display: table-row;
}

input[type=text] {
	border: 1px solid #456879;
	border-radius: 3px;
	height: 30px;
	width: 14%;
}

th {
	text-align: center;
	padding: 8px;
	color: white
}

td {
	text-align: center;
}
</style>

<title>Student List</title>
</head>
<body>

	<div class="container text-center">
		<h2 class="text-primary" style="color: black; font-style: italic;">
			<b><s:message code="student.label.studentList"></s:message> </b>
		</h2>
	</div>
	<br>
	<div class=alert-success align="center"
		style="font-size: 150%; width: 40%; margin-left: 30%; background: transparent;">
		<b class="success">${success}</b>
	</div>

	<div class="alert-danger" align="center"
		style="width: 40%; font-size: 150%; margin-left: 30%; background: transparent;">

		<b class="error">${error}</b>
	</div>
	<br>
	<sf:form action="search" commandName="form" method="post">

		<sf:hidden path="pageNo" />
		<sf:hidden path="pageSize" />
		<c:choose>
			<c:when test="${empty list}">
				<center>
					<input type="submit" name="operation" class="btn btn-primary"
						style="width: 5%" value="<s:message code="button.back"></s:message>">
				</center>

			</c:when>
			<c:otherwise>
				<div class="form-inline" align="center">
<s:message code="user.placeholder.firstName" var="firstName"></s:message>

					<label class=" col-sm-1" for="firstName"><b><s:message
								code="label.firstName" /> </b></label>
					<div class="col-sm-2">
						<sf:input path="firstName" class="form-control" id="firstName"
							style="width: 100%" name="firstName"
							placeholder="${firstName}" />
					</div>

<s:message code="user.placeholder.lastName" var="lastName"></s:message>

					<label class=" col-sm-1" for="lastName"><b><s:message
								code="label.lastName" /> </b></label>
					<div class="col-sm-2">
						<sf:input path="lastName" class="form-control" name="lastName"
							id="lastName" style="width: 100%" placeholder="${lastName}" />

					</div>
<s:message code="student.placeholder.email" var="email"></s:message>

					<label class=" col-sm-1" for="email"><b><s:message
								code="label.emailId"></s:message>: </b></label>
					<div class="col-sm-2">
						<sf:input path="email" class="form-control" name="email"
							id="email" style="width: 100%" placeholder="${email }" />

					</div>



					<div class=" col-sm-1">
						<button type="submit" class="btn btn-success" name="operation"
							value="Search">
							<span class="glyphicon glyphicon-search"></span>
							<s:message code="button.search" />
						</button>
					</div>
					<div class="col-sm-1">
						<button type="submit" class="btn btn-info" name="operation"
							value="Reset">
							<span class="glyphicon glyphicon-refresh"></span>
							<s:message code="button.reset" />
						</button>
					</div>

				</div>

				<br>
				<br>
				<br>

				<div class="table-responsive">
					<table class="table" height="40%" border="1"
						style="border-collapse: collapse; width: 100%;">
						<tr align="center" bgcolor="teal">

							<th align="center" width="90" style="padding: 4px; color: white"><input
								type="checkbox" onclick="selectAll(this)"></th>

							<th><s:message code="button.sNo" /></th>
							<th><s:message code="label.firstName" /></th>
							<th><s:message code="label.lastName" /></th>
							<th><s:message code="label.email" /></th>
							<th><s:message code="label.mobileNo" /></th>
							<th><s:message code="label.collegeName" /></th>
							<th><s:message code="label.dob" /></th>
							<th><s:message code="button.edit" /></th>
						</tr>

						<c:url var="editUrl" value="/ctl/Student?id=" />

						<c:forEach items="${list}" var="student" varStatus="ct">
							<tr>
								<td><input type="checkbox" name="ids" value="${student.id}"></td>
								<td><c:out
										value="${(form.pageSize * (form.pageNo-1))+ct.index+1}" /></td>
								<td><c:out value="${student.firstName}" /></td>
								<td><c:out value="${student.lastName}" /></td>
								<td><c:out value="${student.email}" /></td>
								<td><c:out value="${student.mobileNo}" /></td>
								<td><c:out value="${student.collegeName}" /></td>
								<td><fmt:formatDate value="${student.dob}"/> </td>
								
								<td><a href="${editUrl}${student.id}" style="color: blue;"><span
										class="glyphicon glyphicon-edit"></span> <b> <s:message
												code="button.edit" /></b></a></td>

							</tr>
						</c:forEach>
					</table>
					<br>
				</div>
				<div>
					<div class="form-inline" align="center">
						<c:choose>
							<c:when test="${form.pageNo==1}">
								<div class="col-sm-offset col-sm-3">
									<button type="submit" class="btn btn-primary" name="operation"
										disabled="disabled" value="Previous">
										<span class="glyphicon glyphicon-backward"> </span>
										<s:message code="button.previos" />
									</button>
								</div>
							</c:when>
							<c:otherwise>
								<div class="col-sm-offset col-sm-3">
									<button type="submit" class="btn btn-primary" name="operation"
										value="Previous">
										<span class="glyphicon glyphicon-backward"> </span>
										<s:message code="button.previos" />
									</button>
								</div>
							</c:otherwise>

						</c:choose>



						<div class="col-sm-offset col-sm-3">
							<button type="submit" name="operation" class="btn btn-danger"
								value="Delete">
								<span class="glyphicon glyphicon-trash"></span>
								<s:message code="button.delete" />
							</button>
						</div>


						<div class="col-sm-offset col-sm-3">
							<a class="btn btn-info" href='<c:url value="/ctl/Student" />'><span
								class="glyphicon glyphicon-plus"></span> <s:message
									code="button.new" /></a>
						</div>


						<c:choose>
							<c:when test="${list.size()==form.pageSize && !((studentList.size()==form.pageSize*form.pageNo))}">
								<div class="col-sm-offset col-sm-3">
									<button type="submit" class="btn btn-primary" name="operation"
										 value="Next">
										<s:message code="button.next" />
										<span class="glyphicon glyphicon-forward"> </span>
									</button>
								</div>
							</c:when>
							<c:otherwise>
								<div class="col-sm-offset col-sm-3">
									<button type="submit" class="btn btn-primary" name="operation" disabled="disabled"
										value="Next">
										<s:message code="button.next" />
										<span class="glyphicon glyphicon-forward"> </span>
									</button>
								</div>
							</c:otherwise>

						</c:choose>




						<br> <br>
					</div>
				</div>



			</c:otherwise>
		</c:choose>
	</sf:form>
</body>
</html>
