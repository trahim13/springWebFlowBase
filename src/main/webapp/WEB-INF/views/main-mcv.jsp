<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.06.2018
  Time: 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main MVC</title>
</head>
<body>
        <span>
            <a href="?lang=ru"><spring:message code="ru"/></a>
            <a href="?lang=en"><spring:message code="en"/></a>
        </span>
${message}
</body>
</html>
