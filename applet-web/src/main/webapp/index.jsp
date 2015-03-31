<%--
  Created by IntelliJ IDEA.
  User: dagon
  Date: 01.04.2015
  Time: 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Applet test page</title>
</head>
<body>

<div>
    <p>You should see applet running below</p>
</div>

<!--  в codebase пишешь путь к папке в которой лежат все jar файлы апплета(т.е. сам апплет + либы)
Это на деле URL
т.е. к примеру захожу я на страницу http://localhost:8080/example-applet/
в codebase у меня стоит applet и все это дает URL http://localhost:8080/example-applet/applet ,
в нашем случае это директория src/main/webapp в сорцах(ну а вообще это корень WAR файла)

в archive через запятую все JAR файлы относительно codebase которые нужны для работы апплета
либы к слову тоже надо подписывать
 -- >
<jsp:plugin type="applet"
            align="middle"
            code="org.apimenov.applet.ui.HelloApplet"
            codebase="applet"
            archive="applet-signed.jar"
            jreversion="1.6">

    <jsp:params>
        <jsp:param name="permissions" value="sandbox"/>
        <jsp:param name="requestUrl" value="${pageContext.request.requestURL}"/>
    </jsp:params>
    <jsp:fallback>
        <p>Applet initialization failed</p>
    </jsp:fallback>
</jsp:plugin>
</body>
</html>
