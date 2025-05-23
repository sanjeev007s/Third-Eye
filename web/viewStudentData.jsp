

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student data</title>
    </head>
    <body>
       <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user2");
        String pass=(String)st.getAttribute("pass2");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/prev.jpg');">
            </div>
            <h3><p align="left"> <a href="HostelHome.jsp"style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Back</a></p></h3>
            <h2 style="color:darkmagenta;">Current Student data</h2>            
            <%
           
           
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select name,college,id,gender,phone,course,room,city,pin,address,email,rdate from newstudentdata where member_id='"+user+"'");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=1200   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Student Name</p></td><td align=center><p style=color:#F66755;>college Name</p></td><td align=center><p style=color:#F66755;>Id</p></td><td align=center><p style=color:#F66755;>Gender</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Course</p></td><td align=center><p style=color:#F66755;>Room No</p></td><td align=center><p style=color:#F66755;>City</p></td><td align=center><p style=color:#F66755;>Pin</p></td><td align=center><p style=color:#F66755;>Address</p></td><td align=center><p style=color:#F66755;>Email_Id</p></td><td align=center><p style=color:#F66755;>Registration date</p></td>");
out.println("</tr>");
             
             while(db.rst.next())
             {
           String name=db.rst.getString(1);
             String cname=db.rst.getString(2);
             String id=db.rst.getString(3);
             String gender=db.rst.getString(4);
             String phone=db.rst.getString(5);
             String course=db.rst.getString(6);
             String room=db.rst.getString(7);
             String city=db.rst.getString(8);
             String pin=db.rst.getString(9);
             String address=db.rst.getString(10);
             String email=db.rst.getString(11);
             String rdate=db.rst.getString(12);
             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+name+"</td><td>"+cname+"</td><td>"+id+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+course+"</td><td>"+room+"</td><td>"+city+"</td><td>"+pin+"</td><td>"+address+"</td><td>"+email+"</td><td>"+rdate+"</td>");
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
