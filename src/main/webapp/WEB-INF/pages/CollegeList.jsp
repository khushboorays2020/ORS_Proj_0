
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

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
	color: white;
	text-align: center;
}

td {
	text-align: center;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>College List</title>
</head>
<body>
	<div class="container text-center">
		<h2 class="text-primary" style="color: black; font-style: italic;">
			<b><s:message code="college.label.collegeList"></s:message> </b>
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
					<div class="col-sm-2"></div>
					<label class=" col-sm-1" style="text-align: right;"><b><s:message
								code="label.name"></s:message>: </b></label>
					<div class="col-sm-2">
					<s:message code="college.placeholder.name" var="name"></s:message>
					
						<sf:input path="name" class="form-control" id="name"
							style="width: 100%" name="name" placeholder="${name }" />
					</div>
					<label class=" col-sm-1" for="Name" style="text-align: right;"><b><s:message
								code="label.city"></s:message>: </b></label>
					<div class="col-sm-2">
					<s:message code="college.placeholder.city" var="city"></s:message>
	
						<sf:input path="city" class="form-control" id="city"
							style="width: 100%" name="city" placeholder="${city }" />
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
				<br>

				<c:url var="editUrl" value="/ctl/College?id=" />
				<div class="table-responsive">
					<table class="table" height="40%" bgcolor="" border="1"
						style="border-collapse: collapse; width: 100%;">
						<c:if test="${!empty list}">
							<tr align="center" bgcolor="teal">
								<th align="center" width="90" style="padding: 4px; color: white"><input
									type="checkbox" onclick="selectAll(this)"></th>
								<th><s:message code="button.sNo" /></th>
								<th><s:message code="label.name" /></th>
								<th><s:message code="label.address" /></th>
								<th><s:message code="label.state" /></th>
								<th><s:message code="label.city" /></th>
								<th><s:message code="label.phoneNo" /></th>
								<th><s:message code="button.edit" /></th>
							</tr>

							<c:forEach items="${list}" var="college" varStatus="ct">
								<tr>
									<td><input type="checkbox" name="ids"
										value="${college.id}"></td>
									<td><c:out
											value="${(form.pageSize * (form.pageNo-1))+ct.index+1}" /></td>
									<td><c:out value="${college.name}" /></td>
									<td><c:out value="${college.address}" /></td>
									<td><c:out value="${college.state}" /></td>
									<td><c:out value="${college.city}" /></td>
									<td><c:out value="${college.phoneNo}"></c:out></td>
									<td><a href="${editUrl}${college.id}"><span
											class="glyphicon glyphicon-edit"></span> <b> <s:message
													code="button.edit" /></b></a></td>
								</tr>
							</c:forEach>
						</c:if>
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
							<a class="btn btn-info" href='<c:url value="/ctl/College" />'><span
								class="glyphicon glyphicon-plus"></span> <s:message
									code="button.new" /></a>
						</div>


						<c:choose>
							<c:when test="${list.size()==form.pageSize && !((collegeList.size()==form.pageSize*form.pageNo))}">
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
