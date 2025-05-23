

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student</title>
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
            <h2 style="color:darkmagenta;">Find Student Details</h2>
            <form method="get" action="FindStudentData.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter Student Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Submit"></td></tr>
                
                
            </table>
            </form>
            
            <%
           
            String cus_id=request.getParameter("t1");
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select name,college,gender,phone,course,room,rdate from newstudentdata where id='"+cus_id+"' and member_id='"+user+"'");
             db.rst= db.pstmt.executeQuery();
             if(db.rst.next())
             {
           
             String name=db.rst.getString(1);
             String lname=db.rst.getString(2);
             String gender=db.rst.getString(3);
             String phone=db.rst.getString(4);
             String pnumber=db.rst.getString(5);
             String room=db.rst.getString(6);
             String date=db.rst.getString(7);
             
            
             session.setAttribute("cus_id", cus_id);
             
            
            out.println("<frameset widht=700px height=500px>");
           
            out.println("<table width=600px height=370px bgcolor=#C5E8CD>");
            out.println("<tr width=400px><td align=right>Customer name:-</td><td width=80px></td><td>"+name+"</td></tr>");
            out.println("<tr width=400px><td align=right>Last name:-</td><td width=80px></td><td>"+lname+"</td></tr>");
            out.println("<tr width=400px><td align=right>Gender:-</td><td width=80px></td><td>"+gender+"</td></tr>");
            out.println("<tr width=400px><td align=right>Phone no:-</td><td width=80px></td><td>"+phone+"</td></tr>");
            out.println("<tr width=400px><td align=right>Total person:-</td><td width=80px></td><td>"+pnumber+"</td></tr>");
            out.println("<tr width=400px><td align=right>Room no:-</td><td width=80px></td><td>"+room+"</td></tr>");
            out.println("<tr width=400px><td align=right>Registration Date:-</td><td width=80px></td><td>"+date+"</td></tr>");
            out.println("</table><br></br>");
            
            out.println("</frameset>");
           
                       }
             else
                                 {
             
             }
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
