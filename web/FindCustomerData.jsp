
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>customer data</title>
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
            <div style="width:900px;height: 120px;background-image: url('images/checkin.jpeg');">
            </div>
            <h3><p align="left"> <a href="HotelHome.jsp" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Back</a></p></h3>
            <h2 style="color:darkmagenta;"> Find Customer Details</h2>
            <form method="post" action="FindCustomer.jsp">
            <table>  
                <tr><td><h3 style="color: blueviolet;">Enter customer Id_no</h3></td><td></td><td><input type="text" name="t1"></td><td></td><td><input type="submit" value="Find" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;"></td></tr>
                
                
            </table>
            <%
            String m=request.getParameter("msg");
            if(m!=null)
                out.println("<p style='color:red'>"+m+"</p>");
            %>
            </form>
            
        </center>
    </body>
</html>
