

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Info</title>
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
        <div style="width:1000px;height: 170px;background-image: url('images/CR.jpg');">
        </div>
        <p align="left"><a href="HostelHome.jsp"style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Back</a></p>
        <h2 style="color: #484095;">View Information</h2>
       <%
        DBconnection db=new DBconnection();
            db.stmt=db.con.createStatement();
           
            db.rst=db.stmt.executeQuery("select sub,msg,infodata from admininformation");
           
          
           out.println("<center>");
           

  
out.println("<table width=900");

out.println("<tr height=70 bgcolor=#68D3D4>");
out.println("<td>Subject</id><td>Massege</td><td>Download File</td>");
out.println("</tr>");
while(db.rst.next())
{
            String sub=db.rst.getString(1);
            String msg=db.rst.getString(2);
             String file=db.rst.getString(3);
            
out.println("<tr height=50px bgcolor=#D0FACE><td width=70px>"+sub+"</td><td width=300px>"+msg+"</td><td width=300px><a href='"+file+"'>Document</a></td></tr>");
out.println("</tr>");
}
 out.println("</table>");
    out.println("</center>");
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
