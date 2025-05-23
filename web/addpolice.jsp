<%-- 
    Document   : addpolice
    Created on : May 8, 2016, 5:16:40 PM
    Author     : AJAY YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <center>					
    <div style="width: 1000px;height:250px;background-image:url('images/idxx.jpeg');">
    
      	</div>	
    
           
    
    <div style="width:1000px;height: 750px;background-color: white;">
        <form method="post" action="addpolice" name="frm" onsubmit="return abc();">
       <fieldset width="100px" height=200px">
           <legend> <a href="AdminHome.jsp" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></legend>
                <table style="width:600px;height:500px; background-color: white;"><br>
                    <h2>Police Officer Information</h2>
                    <marquee> <p style="color:red;">E-Mail id is user id and police officer name is password</p></marquee>
                    <tr height="30px"><td align="right">Name* </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr><br>
                    <tr height="30px"><td align="right">Post* </td><td width="20px"></td><td><select name="c"><option>Select Post of police</option><option value="subinspector">Sub Inspector</option><option value="CO">CO</option><option value="constable">Constable</option><option value="so">SO</option></select></td></tr><br>

                    <tr height="30px"><td align="right">Batch Number* </td><td width="20px"></td><td><input type="text" name="t2" style="height: 20px"></td></tr>
                       <tr height="30px"><td align="right">Police Station* </td><td width="20px"></td><td><input type="text" name="t3" style="height: 20px"></td></tr>
                    
                    <tr height="30px"><td align="right"> State*</td><td width="20px"></td><td><input type="text" name="t4" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Address*</td><td width="20px"></td><td><textarea name="t5" style="height: 70px;width: 220px;"></textarea></td></tr>
                    <tr height="30px"><td align="right">Pin* </td><td width="20px"></td><td><input type="number" name="p" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Phone No* </td><td width="20px"></td><td><input type="number" name="t6" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Fax No* </td><td width="20px"></td><td><input type="number" name="t7" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right">Email_id* </td><td width="20px"></td><td><input type="email" name="t8" style="height: 20px"></td></tr>
                   
                 </table>
            <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Submit" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;"> </td><td width="20px"></td><td></td></tr>
              <br></br>  <% 
                            String m=request.getParameter("msg");
                            if(m!=null)
                                out.println("<p style='color:red';>"+m+"</p>");
                            %>    
            </fieldset>
            </form>
        </div>    
   
    </center>
            <br>
            <br>
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
