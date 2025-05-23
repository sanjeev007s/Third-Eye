

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conform H_registration</title>
    </head>
    <body>
        <center>
            <form action="UserRegistration.jsp">
            
            <p> login Id and password send on your email id....pleas note id and password  </p>
            <%
           String id=(String)session.getAttribute("user");
           String pass=(String)session.getAttribute("pass");
             String hname=(String)session.getAttribute("hname");
           if(id!=null||pass!=null)
               out.println("<h1>User Id:-"+id+"</h1>");
           out.println("<h1>Password:-"+pass+"</h1>");
           out.println("<div style='width:1300px; height:770px; background-image:url(images/crimep.png)'>");
out.println("<table width='900px;'>");
out.println("<tr><tr><h2 style=' marks:crop'><br /><br>Cartification MemberShip</h2></tr></tr>");

out.println("<tr><td></td><td></td><td></td><td><h2 style='color:#FF0000'>Registration No:-"+id+"</h2></td></tr>");

out.println("<tr><td></td><td></td><td></td><br /><td><h2 style='color:#FF0000'>User Name:-"+hname+"</h2></td></tr>");

out.println("<tr><td></td><td></td><td></td><br /><td><h2 style='color:#0000FF'>You Are Complete Registration On The Crime Prevention India & Member Id For <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login To Crime Prevention Is Completed The Registration</h2></td></tr>");



out.println("<tr><td></td><td></td><td></td><br /><td><h2 style='color:#FF0000'>Registration Date:-</h2></td></tr>");

out.println("<tr><td></td><td></td><td></td><br /><td><h2 style='color: #CC0000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered By CBI India</h2></td></tr><br />");

out.println("</table>");
out.println("<p style='color:#FF0000; font-family:Verdana, Arial, Helvetica, sans-serif'><br /><br />-:Thanks For Registration On Crime Prevention Web Portal :- </p>");
out.println("</div>");
out.println("</body>");

           

           
           
            %>
            <input type="submit" value="Conform">
            </form>
        </center>
    </body>

</html>
