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
    <link href="<c:url value="/resources/dijit/themes/tundra/tundra.css"/>" rel="stylesheet"/>

    <script type="text/javascript"
            src="<c:url value="/resources/dojo/dojo.js" />">

    </script>

    <script type="text/javascript"
            src="<c:url value="/resources/spring/Spring.js" />">

    </script>

    <script type="text/javascript"
            src="<c:url value="/resources/spring/Spring-Dojo.js" />">

    </script>

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
    <form:input path="name" id="name"/>
    <script type="text/javascript">
        Spring.addDecoration(new Spring.ElementDecoration({
            elementId : "name",
            widgetType : "dijit.form.ValidationTextBox",

            widgetAttrs : {
                promptMessage : "<spring:message code="enter_username" />"
            }
        }));
    </script>
    <form:errors path="name"/>


    <form:label path="password"><spring:message code="password"/></form:label>
    <form:password path="password" id="password"/>
    <script type="text/javascript">
        Spring.addDecoration(new Spring.ElementDecoration({
            elementId : "password",
            widgetType : "dijit.form.ValidationTextBox",

            widgetAttrs : {
                promptMessage : "<spring:message code="enter_password" />"
            }
        }));
    </script>
    <form:errors path="password"/>


    <a href="${flowExecutionUrl}&_eventId=createUser"><spring:message code="create-user"/></a>


    <input type="submit" value="<spring:message code="submit"/>" name="_eventId_submit"/>

</form:form>

</body>
</html>
