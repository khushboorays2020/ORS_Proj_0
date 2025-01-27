<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<div class="container">
	<div class="card card-container">
		<div align="center" style="font-style: italic; color: white">
			<h2 style="color: white">
				<c:choose>

					<c:when test="${form.id>0}">
						<font color="black"><b><s:message
									code="student.label.updateStudent"></s:message> </b></font>
					</c:when>
					<c:otherwise>
						<font color="black"><b><s:message
									code="student.label.addStudent"></s:message> </b></font>
					</c:otherwise>
				</c:choose>

			</h2>
		</div>
		<br>
		<div class=alert-success align="center" style="font-size: 150%;background: transparent;" >
			<b class="success">${success}</b>
		</div>



		<div class="alert-danger" align="center" style="font-size: 150%">

			<b class="error">${error}</b>
		</div>
<br>
		<sf:form method="POST" commandName="form">


			<sf:hidden path="id" />
			<sf:hidden path="createdBy" />
			<sf:hidden path="modifiedBy" />
			<sf:hidden path="createdDatetime" />
			<sf:hidden path="modifiedDatetime" />
<s:message code="user.placeholder.firstName" var="firstName"></s:message>

			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="firstName">
						<s:message code="user.label.firstName" />
					</sf:label>
					<font color="red">*</font>
				</div>
				<div class="col-sm-8">
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<sf:input path="firstName" placeholder="${firstName }"
							class="form-control" />
					</div>
					<sf:errors path="firstName" cssClass="error" />
					<br>
				</div>
			</div>
<s:message code="user.placeholder.lastName" var="lastName"></s:message>

			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="lastName">
						<s:message code="user.label.lastName" />
					</sf:label>
					<font color="red">*</font>
				</div>
				<div class="col-sm-8">

					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
						</div>
						<sf:input path="lastName" placeholder="${lastName }"
							class="form-control" />
					</div>
					<sf:errors path="lastName" cssClass="error" />
					<br>
				</div>
			</div>
<s:message code="user.placeholder.dob" var="dob"></s:message>

			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="dob">
						<s:message code="user.label.dob" />
					</sf:label>

					<font color="red">*</font>
				</div>
				<div class="col-sm-8">
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-calendar"></span>
						</div>
						<sf:input path="dob" readonly="true" placeholder="${dob }"
							class="form-control" />
					</div>
					<sf:errors path="dob" cssClass="error" />
					<br>
				</div>
			</div>
<s:message code="user.placeholder.mobileNo" var="mobileNo"></s:message>


			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="mobileNo">
						<s:message code="user.label.mobileNo" />
					</sf:label>

					<font color="red">*</font>
				</div>
				<div class="col-sm-8">
					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-phone"></span>
						</div>
						<sf:input path="mobileNo" placeholder="${mobileNo }"
							class="form-control" />
					</div>
					<sf:errors path="mobileNo" cssClass="error" />
					<br>
				</div>
			</div>
<s:message code="student.placeholder.email" var="email"></s:message>

			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="email">
						<s:message code="label.email" />
					</sf:label>
					<font color="red">*</font>
				</div>
				<div class="col-sm-8">

					<div class="input-group">
						<div class="input-group-addon">
							<span class="glyphicon glyphicon-envelope"></span>
						</div>
						<sf:input path="email" placeholder="${email}"
							class="form-control" />
					</div>
					<sf:errors path="email" cssClass="error" />
					<br>
				</div>
			</div>

			<div class="form_group row">
				<div class="col-sm-4">
					<sf:label path="collegeId">
						<s:message code="label.collegeName" />
					</sf:label>
					<font color="red">*</font>
				</div>
				<div class="col-sm-8">

					<div class="input-group">
						<div class="input-group-addon">
							<span class="fa fa-institution" style="font-size: 13px"></span>
						</div>
						<sf:select STYLE="width: 100%" size="0" path="collegeId"
							class="form-control">
							<sf:option value="" label="Select" >
							------------------<s:message code="label.select"></s:message>------------------
							</sf:option>
							<sf:options items="${collegeList}" itemValue="id"
								itemLabel="name" />
						</sf:select>
					</div>
					<sf:errors path="collegeId" cssClass="error" />
					<br>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-2">
					<c:choose>
						<c:when test="${form.id>0}">
							<button type="submit" class="btn btn-success" name="operation"
								value="Update">
								<span class="glyphicon glyphicon-ok-sign"></span>
								<s:message code="op.update"></s:message>
							</button>
						</c:when>
						<c:otherwise>

							<button type="submit" class="btn btn-success" name="operation"
								value="Save">
								<span class="glyphicon glyphicon-ok-sign"></span>
								<s:message code="op.save"></s:message>

							</button>
						</c:otherwise>
					</c:choose>
				</div>

				<div class="col-sm-offset-1 col-sm-2">
					<c:choose>
						<c:when test="${form.id>0}">

							<button type="submit" class="btn btn-warning" name="operation"
								value="Cancel">
								<span class="glyphicon glyphicon-remove-sign"></span>
								<s:message code="op.cancle"></s:message>
							</button>

						</c:when>
						<c:otherwise>
							<button type="submit" class="btn btn-info" name="operation"
								value="Reset">
								<span class="glyphicon glyphicon-refresh"></span>
								<s:message code="op.reset"></s:message>
							</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</sf:form>
	</div>
</div>
<script>
	$(function() {
		$("#dob").datepicker();
	});

	
</script>