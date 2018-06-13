<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<c:if test="${not empty check_user}">
    <span style="float: right">${check_user}</span>
</c:if>

<c:if
        test="${not empty flowRequestContext.messageContext.allMessages}">
    <ul class="red_messages">
        <c:forEach items="${flowRequestContext.messageContext.allMessages}"
                   var="message">

            <li>${message.text}</li>

        </c:forEach>

    </ul>
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



    <a href="${flowExecutionUrl}&_eventId=createUser"><spring:message code="create-user"/></a>


    <input type="submit" value="<spring:message code="submit"/>" name="_eventId_submit"/>

</form:form>

</body>
</html>
