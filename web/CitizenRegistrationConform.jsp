%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conform H_registration</title>
    </head>
    <body>
        <center>
            <form action="UserRegistration.jsp">
            <p>Thanks for registration on crime Prevention web portal  </p>
            <p> login Id and password send on your email id....pleas note id and password  </p>
            <%
           String id=(String)session.getAttribute("user");
           String pass=(String)session.getAttribute("pass");
           if(id!=null||pass!=null)
               out.println("<h1>User Id:-"+id+"</h1>");
           out.println("<h1>Password:-"+pass+"</h1>");
            %>
            <input type="submit" value="Confirm">
            </form>
        </center>
    </body>

</html>