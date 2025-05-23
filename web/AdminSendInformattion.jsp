
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Information</title>
    </head>
    <body>
       <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user5");
        String pass=(String)st.getAttribute("pass5");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
        <center>
            <div style="width:900px;height: 120px;background-image: url('images/CR.jpg');">
            </div>
            <h3><p align="left"> <a href="AdminHome.jsp"style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></p></h3>
           <div style="width: 600px;height: 300px;background-color: white;">
            <form method="post" action="AdminSendInfo" enctype="multipart/form-data">
            <fieldset width="100px" height=200px">
                <legend><h1><p style="color:brown;">Information</p></h1></legend>
                <table>
                    <br></br>
                    <tr height="30px"><td>Subject </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td> Message </td><td width="20px"></td><td><textarea name="t2"style="width:300px;height: 70px;"> </textarea></td></tr>
                    <tr height="30px"><td> File Up_load </td><td width="20px"></td><td><input type="file" name="t3" style="width:330px;height: 30px;"></td></tr>
          
                    <tr height="30px"></tr><tr height="30px"><td><input type="submit"value="Send"style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"> </td><td width="20px"></td><td><input type="reset" value="Clear" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"></td></tr>
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
