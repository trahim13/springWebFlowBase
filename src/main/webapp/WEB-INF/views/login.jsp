<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11.06.2018
  Time: 0:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="post" modelAttribute="user">
    <form:label path="name"><spring:message code="username"/></form:label>
    <form:input path="name"/>
    <form:errors path="name"/>


    <form:label path="password"><spring:message code="password"/></form:label>
    <form:password path="password"/>
    <form:errors path="password"/>

    <input type="submit" value="<spring:message code="submit"/>" name="_eventId_submit"/>

</form:form>

</body>
</html>
