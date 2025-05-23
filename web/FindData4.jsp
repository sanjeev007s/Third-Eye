
<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>find data</title>
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
        <p align="left"><a href="AdminHome.jsp">Back</a></p>
        <h2 style="color: #484095;">Find Data in Hostel</h2>
         <form method="get" action="FindData4.jsp">
            
             <table> 
                
                <tr><td><h3 style="color: blueviolet;">Enter Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Submit"></td></tr>
                
                
            </table>
           
            </form>
            
            <%
           
            String cus_id=request.getParameter("t1");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select member_id,name,college,gender,phone,course,room,rdate from newstudentdata where id='"+cus_id+"'");
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
   
    </body>
</html>
