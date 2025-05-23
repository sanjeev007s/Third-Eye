
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conform H_registration</title>
    </head>
    <body bgcolor="#FFFED7">
        <center>
            <form action="HotelRegistration.jsp" method="post">
                <%
                String id=(String)session.getAttribute("user");
           String pass=(String)session.getAttribute("pass");
           String hname=(String)session.getAttribute("hname");
           String reg=(String)session.getAttribute("reg");
           if(id!=null||pass!=null)
               //out.println("<h1>User Id:-"+id+"</h1>");
           out.println("<h1>Password:-"+pass+"</h1>");
           
         
                             
                                   
            /*out.println("<p>Thanks for registration on crime Prevention web portal  </p>");
            out.println("<p> login Id and password send on your email id....pleas note id and password  </p>");
            out.println("<div style='width:900px; height:500px; padding:20px; text-align:center; border: 10px solid #787878;background-color:red;'>");
        out.println("<div style='width:850px; height:450px; padding:20px; text-align:center; border: 5px solid #787878;background-color:white;background-image:url(images/aaa.jpg);'>");
        //out.println("<div style='width:850px; height:450px; padding:20px; text-align:center;'>");
    
        out.println("<span style='font-size:50px; font-weight:bold;color:darkblue;' >Certificate of Crime Prevention India</span>");
     
      
       out.println("<br><br>");
       
       out.println("<p><h1>M/s.</h1><h1>"+hname+"</h1><h2>Registration number is <h2 style='color:blue;'>"+reg+"</h2></h2>you are complete registration on the crime prevention India and Member Id for login to crime prevention is <p style='color:blue;'>"+id+"</p></h2></p>");    
     //  out.println("<span style='font-size:30px'><b>User_id no:-</b><b>"+id+"</b></span><br/><br/>");
       //out.println("<span style='font-size:25px'><i>has completed the Registration</i></span> <br/><br/>");
       //out.println("<span style='font-size:30px'><b>Registration no:-</b><b>"+reg+"</b></span> <br/><br/>");
       //out.println("<span style='font-size:20px'>Registration Date<b></b></span> <br/><br/><br/><br/>");
       //out.println("<span style='font-size:25px'><i></i></span><br>");
              
* 
* */
      
//out.println("<body bgcolor='#FFFED7'>");
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
      
  </div>   
            </div><p style="font-size: x">
</div>

            
            <input type="submit" value="Confirm">
            </form>
        </center>
    </body>

</html>
