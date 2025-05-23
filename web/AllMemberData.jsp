
<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>member Data</title>
    </head>
    <body>
         <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user5");
        String pass=(String)st.getAttribute("pass5");
        if(user==null||pass==null)
          response.sendRedirect("AdminLogin.jsp?msg=Please login first!!!!");  
        %>
        <center>
        <div style="width:1000px;height: 170px;background-image: url('images/CR.jpg');">
        </div>
        <p align="left"><a href="AdminHome.jsp" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></p>
        <h2 style="color: #484095;">All Hotels Members</h2>
         <%
           
           
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select h_name,h_category,city,room,registration,state,address,pin,phone,email,website,rdate from hotelregistration");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200px   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Hotel Name</p></td><td align=center><p style=color:#F66755;>Category</p></td><td align=center><p style=color:#F66755;>City</p></td><td align=center><p style=color:#F66755;>Total Room</p></td><td align=center><p style=color:#F66755;>Registration</p></td><td align=center><p style=color:#F66755;>State</p></td><td align=center><p style=color:#F66755;>Address</p></td><td align=center><p style=color:#F66755;>Pin</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Email</p></td><td align=center><p style=color:#F66755;>Website</p></td><td align=center><p style=color:#F66755;>Registration Date</p></td>");
out.println("</tr>");
             
             while(db.rst.next())
             {
             String h_name=db.rst.getString(1);

           String cote=db.rst.getString(2);
             String city=db.rst.getString(3);
             String room=db.rst.getString(4);
             String reg=db.rst.getString(5);
             String state=db.rst.getString(6);
             String addr=db.rst.getString(7);
             String pin=db.rst.getString(8);
             String phone=db.rst.getString(9);
             String email=db.rst.getString(10);
             String web=db.rst.getString(11);
             String rdate=db.rst.getString(12);

             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+h_name+"</td><td align=center>"+cote+"</td><td>"+city+"</td><td>"+room+"</td><td>"+reg+"</td><td>"+state+"</td><td>"+addr+"</td><td>"+pin+"</td><td align=center>"+phone+"</td><td align=center>"+email+"</td><td align=center>"+web+"</td><td align=center>"+rdate+"</td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
        <h2 style="color: #484095;">All Hostel Members</h2>
        <%
           
          
            
            db.pstmt=db.con.prepareStatement("select hname,ownername,city,reg,room,state,address,pin,phone,email,rdate from hostelregistration");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200px   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Hostel name</p></td><td align=center><p style=color:#F66755;>Owner Name</p></td><td align=center><p style=color:#F66755;>City</p></td><td align=center><p style=color:#F66755;>Registration</p></td><td align=center><p style=color:#F66755;>Total room</p></td><td align=center><p style=color:#F66755;>State</p></td><td align=center><p style=color:#F66755;>Address</p></td><td align=center><p style=color:#F66755;>Pin</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Email</p></td><td align=center><p style=color:#F66755;>Registration Date</p></td>");
out.println("</tr>");
             
             while(db.rst.next())
             {
             String h_id=db.rst.getString(1);

           String name=db.rst.getString(2);
             String lname=db.rst.getString(3);
             String gender=db.rst.getString(4);
             String phone=db.rst.getString(5);
             String pnumber=db.rst.getString(6);
             String room=db.rst.getString(7);
             String date=db.rst.getString(8);
             String pin=db.rst.getString(6);
             String email1=db.rst.getString(7);
             String rdate=db.rst.getString(8);
              

             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+h_id+"</td><td align=center>"+name+"</td><td>"+lname+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+pnumber+"</td><td>"+room+"</td><td>"+date+"</td><td>"+pin+"</td><td>"+email1+"</td><td>"+rdate+"</td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
                  
     
        </center>
                    <footer>
        <div class="container" style="text-align: center; padding: 20px 0;">
            <div class="footerlink">
                <p style="margin: 0;">Copyright &copy; 2025 
                    <a href="#" style="text-decoration: none; color: inherit;">Domain Name</a> - All Rights Reserved
                </p>
            </div>
        </div>
    </footer>
   
    </body>
</html>
