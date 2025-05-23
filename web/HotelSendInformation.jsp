<%-- 
    Document   : HotelSendInformation
    Created on : Mar 31, 2015, 10:25:04 AM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send_information</title>
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
           <div style="width: 600px;height: 250px;background-color: white;">
            <form method="post" action="SendInformation" enctype="multipart/form-data">
            <fieldset width="100px" height=200px">
                <legend><h1><p style="color:brown;">Information</p></h1></legend>
                <table>
                    <br></br>
                    <tr height="30px"><td>Subject </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td> Message </td><td width="20px"></td><td><textarea name="t2"style="width:300px;height: 70px;"> </textarea></td></tr>
                    <tr height="40px"><td> Document </td><td width="20px"></td><td><input type="file" name="t3"style="height: 30px;"></td></tr>
                   
                    <tr height="30px"></tr><tr height="30px"><td><input type="submit"value="Send"style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;"> </td><td width="20px"></td><td><input type="reset" value="Clear" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;"></td></tr>
                    <tr height="50px"><td>
                            
                </table>
                <%
                            String abc=request.getParameter("msg");
                            if(abc!=null)
                            out.println("<h4 style='color:green;'>"+abc+"</h4>");
                            
                            %>
            </fieldset>
            </form>
        </div>
            
        </center>
    </body>
</html>
