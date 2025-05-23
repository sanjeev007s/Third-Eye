
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citizen Registration</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/Humanst521_BT_400.font.js"></script>
<script type="text/javascript" src="js/Humanst521_Lt_BT_400.font.js"></script>
<script type="text/javascript" src="js/roundabout.js"></script>
<script type="text/javascript" src="js/roundabout_shapes.js"></script>
<script type="text/javascript" src="js/gallery_init.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/clndr/scw.js"></script>

<script type="text/javascript">
                   
          function validate1()
          {
          if(document.frm.t3.value!=document.frm.c.value)    
           {
              alert("Conform Password not match!!!");
              return false;
           }  
           else{
              return true;
           }
          }
       </script>
           
    </head>
    <body>
        <!-- START PAGE SOURCE -->
        <%
        session.removeAttribute("user");
        session.removeAttribute("pass");
        %>
<header>
  <div class="container">
    <h1>Crime Prevention</h1>
    <nav>
      <ul>
        <li><a href="index.jsp" class="current">Home</a></li>
        <li><a href="About.jsp">About</a></li>
        
        
        <li><a href="Contect.jsp">Contact</a></li>
        
      </ul>
    </nav>
  </div>
</header>

    <center>					
    <div style="width: 1000px;height:250px;background-image:url('images/idxx.jpeg');">
    
      	</div>	
      
    
    <div style="width:1000px;height: 700px;background-color: white;">
        <form method="get" action="CitizenRegistration" name="frm" onsubmit="return validate1();">
       <fieldset width="100px" height=200px">
           <legend> <br><a href="UserRegistration.jsp" style="text-decoration: none; padding: 10px; background-color: #4CAF50; color: white; border-radius: 5px;margin-left: 98px">Back</a></legend>
                <table style="width:600px;height:500px; background-color: white;"><br>
                    <h2 style="text-align: center; margin-bottom: 20px;">Registration Citizen</h2>
                    
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Full Name* </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Email_id* </td><td width="20px"></td><td><input type="email" name="t2" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Password* </td><td width="20px"></td><td><input type="password" name="t3" style="height: 20px"></td></tr>
                   
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;"> Conform Password*</td><td width="20px"></td><td><input type="password" name="c" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">DOB* </td><td width="20px"></td><td><input type="text" name="t4" onclick="scwShow(this,event);"onfocus="scwshow(this,event);" style="height: 20px"></td></tr>
                    
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Address*</td><td width="20px"></td><td><textarea name="t5" style="height: 70px;width: 220px;"></textarea></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Pin No* </td><td width="20px"></td><td><input type="number" name="t6" style="height: 20px"></td></tr>

                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Home No* </td><td width="20px"></td><td><input type="text" name="t7" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">City* </td><td width="20px"></td><td><input type="text" name="t8" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">State* </td><td width="20px"></td><td><input type="text" name="t9" style="height: 20px"></td></tr>
                    <tr height="30px"><td align="right" style="padding-bottom: 10px;">Phone No* </td><td width="20px"></td><td><input type="number" name="t10" style="height: 20px"></td></tr>
                    
                      
                      
                    
                    
          </table>
           <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Submit" style="padding: 8px 20px;font-size: 14px; background-color: #4CAF50; color: white; border: none; border-radius: 5px;cursor: pointer;"> </td><td width="20px"></td></tr>
                 <% 
                            String m=request.getParameter("msg");
                            if(m!=null)
                                out.println("<p style='color:red';>"+m+"</p>");
                            %>  
            </fieldset>
            </form>
        </div>    
    </div>
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
