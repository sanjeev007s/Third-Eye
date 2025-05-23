

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <h2 style="color: #484095;">Find Data</h2>
        <form method="get" action="memberdata.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"value="Find"></td></tr>
                
                
            </table>
            <%
            String m=request.getParameter("msg");
            if(m!=null)
                out.println("<p style='color:red'>"+m+"</p>");
            %>
            </form>
            
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
