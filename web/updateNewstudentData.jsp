

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update student data</title>
        <style type="text/css">
.seqslidestyle{
margin-right: 15px;
}

#sddm
{	margin: 0;
	padding: 0;
	z-index: 30}

#sddm li
{	margin: 0;
	padding: 0;
	list-style: none;
	float: left;
	font: bold 11px arial}

#sddm li a
{	display: block;
	margin: 0 1px 0 0;
	padding: 4px 10px;
	width: 80px;
	background: #5970B2;
	color: #FFF;
	text-align: center;
	text-decoration: none}

#sddm div
{	position: absolute;
	visibility: hidden;
	margin: 0;
	padding: 0;
	background: #EAEBD8;
	border: 1px solid #5970B2}

	#sddm div a
	{	position: relative;
		display: block;
		margin: 0;
		padding: 5px 10px;
		width: auto;
		white-space: nowrap;
		text-align: left;
		text-decoration: none;
		background: #EAEBD8;
		color: #2875DE;
		font: 11px arial}

	</style>

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
            <h2 style="color:darkmagenta;">New Student Details</h2>
            <form method="post" action="NewStudentData">
                <fieldset style="width:880px;height:730px;">
                    <legend><p style="color:darkcyan;">Student Details</p></legend>
                 <table style="text-align:left;" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" height="650px" width="780px">
		<tr>
			<td width="20px">&nbsp;</td>
			<td width="25px">&nbsp;</td>
			<td width="250px"></td>
			<td width="20px">&nbsp;</td>			
			<td width="25px">&nbsp;</td>
			<td width="250px"></td>
			<td width="20px">&nbsp;</td>			
		</tr>
		<tr>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="250px">Student name:<span class="required"> *</span></td>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="250px">College name :<span class="required"> *</span></td>
		  <td width="20px">&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t1" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t2" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td> Identity card :<span class="required"> *</span> (<samp>Eg : Addhar Card, Voter Card,Pen cord</samp>)</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Gender :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t3" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
                  <td><select name="t4" style="width:180px;height: 25px;background-color:#C2E8E7; "><option>--Select Gender--</option><option value="Male">Male</option><option value="Female">Female</option></select></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Contact No :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t5" maxlength="11" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="number" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td width="20px">&nbsp;</td>
		  <td colspan="5">---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
	 	  <td width="20px">&nbsp;</td>
	  </tr>
	  <tr>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="425px">Course:<span class="required"> *</span></td>
		  <td width="20px">&nbsp;</td>
		  <td width="25px">&nbsp;</td>
		  <td width="425px">Room number :</td>
		  <td width="20px">&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t6" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t7" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="number" /></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>City : </td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Pin No:<span class="required"> *</span></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t8" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t9" maxlength="11" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="number" /></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Address :<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><textarea name="t10" cols="20" rows="3" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; width: 350px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);"></textarea></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>State:<span class="required"> *</span></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t11" maxlength="25" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="text" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
	  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>Email_id</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td></td>
		  <td>&nbsp;</td>
	  </tr>
		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td><input name="t12" maxlength="25" style="border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; margin-top: 0px; margin-bottom: 0px; border-top-color: rgb(221, 221, 221); border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; height: 30px; width: 250px; font-family: Arial, Helvetica, sans-serif; font-size: 15pt; color: rgb(128, 128, 128); background-color: rgb(240, 240, 240);" type="email" /></td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
	  	  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
                  <td>&nbsp;</td>
		  
		
		  <td><input name="submit" type="submit" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;" value="SUBMIT" /></td>
		  <td></td>
                  <td><input  type="reset" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;" value="CLEAR" /></td>
		  
                  
		  
		  
		  
	  </tr>
		  		<tr>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
		  <td>&nbsp;</td>
	  </tr>
           
	</table>
              <%
                 String m=request.getParameter("msg");
                 if(m!=null)
                     out.println("<p style='color:red;'>"+m+"</p>");
                 %>  
                    
                    
                </fieldset>
                
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
