
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change_password</title>
    </head>
    <body>
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user3");
        String pass=(String)st.getAttribute("pass3");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/prev.jpg');">
            </div>
            <h3><p align="left"> <a href="CitizenHome.jsp" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></p></h3>
            <div style="width: 600px;height: 300px;background-color: white;">
            <form method="post" action="changepassword1">
            <fieldset width="100px" height="400px">
                <legend><h1 style="color: orange;">Change Password</h1></legend>
                <table>
                    <br></br>
                    <tr height="30px"><td>Old_Password</td><td width="20px"></td><td><input type="password" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td> New_Password</td><td width="20px"></td><td><input type="password" name="t2"style="height: 20px"></td></tr>
                                    
                    <tr height="30px"></tr><tr height="30px"><td><input type="submit"value="Change"style="width:90px;height: 40px ;display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"> </td><td width="20px"></td><td><input type="reset" value="Clear" style="width:90px;height: 40px ;display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"></td></tr>
                    
                    <tr height="50px"><td>
                            <%
                            String abc=request.getParameter("msg");
                            if(abc!=null)
                            out.println("<h4 style='color:green;'>"+abc+"</h4>");
                            
                            %>
                </table>
            </fieldset>
            </form>
        </div>
            
        </center>
   
    </body>
</html>
