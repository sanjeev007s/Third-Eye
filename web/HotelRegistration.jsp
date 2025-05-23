
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel Registration</title>
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
<script type="text/javascript" src="js/validateuserid.js"></script>


<script type="text/javascript">

    function abc()
    {
    if(document.frm.t1.value=="")
        {
             alert("Please fill hotel name");
             return false;
        }
        if(document.frm.t2.value=="")
            {
             alert("please fill city");
             return false;
             
            }
            if(document.frm.t3.value=="")
                {
              alert("Pleass fill Registration number");  
              return false;
                }
                if(document.frm.p.value=="")
                {
              alert("Pleass fill Pin number");  
              return false;
                }
                if(document.frm.t7.value=="")
                {
              alert("Pleass fill Phone number");  
              return false;
                }
          
              else
                  {
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
    
           
    
    <div style="width:1000px;height: 750px;background-color: white;">
 <form method="post" action="HotelRegistration" name="frm" onsubmit="return abc();">
     <fieldset style="width: 650px; padding: 20px;">
        <legend><br><a href="UserRegistration.jsp"style="display: inline-block; margin-bottom: 10px; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Back</a></legend>
        
        <h2 style="text-align:center;">Registration Hotel Member</h2>

        <table style="width:100%; background-color:white; border-collapse:collapse;">
            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Hotel Name*</td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Category*</td><td width="20px"></td>
                <td>
                    <select name="c" style="height: 25px; width: 100%;">
                        <option>Select hotel category</option>
                        <option value="Deluxe">Deluxe</option>
                        <option value="Super Deluxe">Super Deluxe</option>
                        <option value="Three star">Three Star</option>
                        <option value="Five Star">Five star</option>
                    </select>
                </td>
            </tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">City*</td><td width="20px"></td><td><input type="text" name="t2" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Total Room*</td><td width="20px"></td><td><input type="number" name="t3" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Registration number*</td><td width="20px"></td><td><input type="text" name="t4" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">State*</td><td width="20px"></td><td><input type="text" name="t5" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Address*</td><td width="20px"></td>
                <td><textarea name="t6" style="height: 70px; width: 100%;"></textarea></td>
            </tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Pin*</td><td width="20px"></td><td><input type="number" name="p" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Phone No*</td><td width="20px"></td><td><input type="number" name="t7" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Fax No*</td><td width="20px"></td><td><input type="number" name="t8" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Email_id*</td><td width="20px"></td><td><input type="email" name="t9" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px"><td align="right" style="padding-bottom: 10px;">Web_site*</td><td width="20px"></td><td><input type="text" name="t10" style="height: 20px; width: 100%;" /></td></tr>

            <tr height="30px">
                <td align="right" style="padding-bottom: 10px;">Captcha*</td><td width="20px"></td>
                <td>
                    <img src="Cap_Img.jsp" alt="Captcha" />
                    <input type="button" value="Ref" onClick="window.location.href=window.location.href" style="width: 60px; height: 30px; margin-left: 10px;padding: 8px 20px;font-size: 14px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;" />
                    <br />
                    <input name="code" id="code" type="text" onblur="checkcode(document.frm.code.value);" style="margin-top: 5px; width: 100%;" />
                    <span id="msgAreaCaptcha"></span>
                </td>
            </tr>

            <tr height="30px"><td colspan="3" align="center" style="padding-top: 20px;">
                <input type="submit" value="Submit" style="width:90px;height: 30px; margin-left: 10px;padding: 8px 20px;font-size: 14px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;" />
            </td></tr>

            <tr><td colspan="3" align="center">
                <% String m=request.getParameter("msg");
                   if(m!=null)
                       out.println("<p style='color:red;'>"+m+"</p>");
                %>
            </td></tr>
        </table>
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
