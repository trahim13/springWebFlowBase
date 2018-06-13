<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12.06.2018
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create user state</title>
</head>
<body>

<c:if test="${not empty user_exist}">
    <span style="float: right">${user_exist}</span>
</c:if>

<form:form method="post" modelAttribute="user">

        <span>
            <a href="?lang=ru"><spring:message code="ru"/></a>
            <a href="?lang=en"><spring:message code="en"/></a>
        </span>

    <form:label path="name"><spring:message code="username"/></form:label>
    <form:input path="name"/>
    <form:errors path="name"/>

    <form:label path="password"><spring:message code="password"/></form:label>
    <form:password path="password"/>
    <form:errors path="password"/>

    <input type="submit" value="<spring:message code="create"/>" name="_eventId_create"/>
    <input type="submit" value="<spring:message code="cancel"/>" name="_eventId_cancel"/>

</form:form>

</body>
</html>
