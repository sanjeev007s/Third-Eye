

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Data</title>
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
        <p align="left"><a href="AdminHome.jsp"style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></p>
        <h2 style="color: #484095;">All Data Hotels</h2>
         <%
           
           
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select member_id,name,last_name,gender,phone,number_p,room_n,cdate,i_time,out_date,out_time from customercheckin");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200px   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Hotel Id</p></td><td align=center><p style=color:#F66755;>Customer Name</p></td><td align=center><p style=color:#F66755;>Last Name</p></td><td align=center><p style=color:#F66755;>Gender</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Total person</p></td><td align=center><p style=color:#F66755;>Room No</p></td><td align=center><p style=color:#F66755;>Check_in Date</p></td><td align=center><p style=color:#F66755;>Check_in Time</p></td><td align=center><p style=color:#F66755;>Check_out Date</p></td><td align=center><p style=color:#F66755;>Check_out Time</p></td>");
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
             String in_time=db.rst.getString(9);
             String out_date=db.rst.getString(10);
             String out_time=db.rst.getString(11);

             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+h_id+"</td><td align=center>"+name+"</td><td>"+lname+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+pnumber+"</td><td>"+room+"</td><td>"+date+"</td><td align=center>"+in_time+"</td><td align=center>"+out_date+"</td><td align=center>"+out_time+"</td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
        <h2 style="color: #484095;">All Data Hostel</h2>
        <%
           
          
            
            db.pstmt=db.con.prepareStatement("select member_id,name,college,gender,phone,course,room,rdate from newstudentdata");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200px   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Hostel Id</p></td><td align=center><p style=color:#F66755;>Customer Name</p></td><td align=center><p style=color:#F66755;>College Name</p></td><td align=center><p style=color:#F66755;>Gender</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Cource</p></td><td align=center><p style=color:#F66755;>Room No</p></td><td align=center><p style=color:#F66755;>Registration Date</p></td>");
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
             

             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+h_id+"</td><td align=center>"+name+"</td><td>"+lname+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+pnumber+"</td><td>"+room+"</td><td>"+date+"</td>");
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
