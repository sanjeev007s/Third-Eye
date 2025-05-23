<%-- 
    Document   : HotelCurrentCustomer
    Created on : Mar 28, 2015, 5:42:46 AM
    Author     : AJAY YADAV
--%>

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer details</title>
    </head>
    <body>
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/66.jpg');">
            </div>
            <h3><p align="left"> <a href="HotelHome.jsp" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Back</a></p></h3>
            <h2 style="color:darkmagenta;">Current Customer data</h2>            
            <%
           int a=0;
            String cus_id=request.getParameter("t1");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select name,last_name,gender,phone,number_p,room_n,cdate from customerCheckIn where status='"+a+"' and member_id='"+user+"'");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=900   bgcolor=#B9E1F5>");

out.println("<tr height=10 bgcolor=#5DD0CF>");
out.println("<td align=center><p style=color:#F66755;>Customer Name</p></td><td align=center><p style=color:#F66755;>Last Name</p></td><td align=center><p style=color:#F66755;>Gender</p></td><td align=center><p style=color:#F66755;>Phone</p></td><td align=center><p style=color:#F66755;>Total person</p></td><td align=center><p style=color:#F66755;>Room No</p></td><td align=center><p style=color:#F66755;>Check_in Date</p></td>");
out.println("</tr>");
             
             while(db.rst.next())
             {
           String name=db.rst.getString(1);
             String lname=db.rst.getString(2);
             String gender=db.rst.getString(3);
             String phone=db.rst.getString(4);
             String pnumber=db.rst.getString(5);
             String room=db.rst.getString(6);
             String date=db.rst.getString(7);
             
   out.println("<tr bgcolor=#DFF5E1 height=30px><td align=center>"+name+"</td><td>"+lname+"</td><td>"+gender+"</td><td>"+phone+"</td><td>"+pnumber+"</td><td>"+room+"</td><td>"+date+"</td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
               
                
        </center>
 
    </body>
</html>
