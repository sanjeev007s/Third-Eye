

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel_Home</title>
       
       
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
<style>
    .btn-link-blue {
            font-weight: bold; text-decoration: none; color: #007BFF;
        }
</style>

    </head>
    <body>
        <!-- START PAGE SOURCE -->
        <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
<header>
  <div class="container">
    <h1>Crime Prevention Hotel Member</h1>
    <nav>
      <ul>
        <li><a href="HotelHome.jsp" class="current">Home</a></li>
        <li><a href="">Profile</a></li>
        
        
        <li><a href="HotelSingout">Sing Out</a></li>
        
      </ul>
    </nav>
  </div>
</header>

    <center>					
    <div style="width: 1000px;height:250px;background-image:url('images/idxx.jpeg');">
    
      	</div>	
        
    </center>

<div class="main-box">
  <div class="container">
    <div class="inside">
      <div class="wrapper">
          
        <aside>
          
          <h2>Hotel Member <span>Tasks</span></h2>
          <ol style="type:numeric;">
            <li>
               
                 <p ><a href="CustomerCheckin.jsp" class="btn-link-blue">New Customer Check_In</a></p>
              </li>
            <li>
              
                <p ><a href="CustomerChickout.jsp" class="btn-link-blue">Customer Check_out</a></p>
               </li>
            <li>
              
                <p > <a href="HotelCurrentCustomer.jsp" class="btn-link-blue">View Current Customer Details</a></p>
              </li>
              <li>
              
                <p > <a href="FindCustomerData.jsp" class="btn-link-blue">Find Customer Details</a></p>
              </li>
              
              <li>
              <p > <a href="HotelSendInformation.jsp" class="btn-link-blue">Send Information to Police</a></p>
              </li><li>
              <p ><a href="HotelMemberViewInfo.jsp" class="btn-link-blue">Check Information</a></p>
              </li><li>
              <p ><a href="HotelMemberFeedback.jsp" class="btn-link-blue">Send Feedback</a></p>
              </li><li>
            <p ><a href="HotelChangePass.jsp" class="btn-link-blue">Change Password</a></p>
              </li>
          </ol><br></br>
          <img src="images/idxxlogo.ico">
         
        </aside>
       
        <section id="content">
          <article>
               <%
        
       out.println("<h2>Welcome to <span>"+user+"</span></h2>");
        %>
            
            <figure><img src="images/Hotel.jpeg" alt=""></figure>
            <h2>About Hotels Member</h2>
            <marquee direction="up">
                <p> Web Based Application for a Police department is automation of the complete work of chartered e-cops. Along with automation of the work of chartered police it also provides various services to the cops, local police and citizen. They can find at any criminal person and can get their arrest done easily. 
To deliver next generation police and law enforcement reporting tools, and setting up intelligence platforms that agencies use to take incoming incident reports, lessen live employee resources and allow these enforcement agencies to reallocate resources to much needed community areas.
An online solution is very useful as the solution is inherently distributive. This distributive characteristic of the online solution helps in getting the different police stations to share information and get in contact with one another. The administrative work required to maintain records reduces greatly as the paperwork is almost minimal and the data is stored in an organized. Its primary task includes securing continuous needs of the public in an efficient manner. 
                    </p>
       </marquee>
            </article>
           
 </section>
      </div>
    </div>
  </div>
</div>
<footer>
    <div class="container" style="text-align: center; padding: 20px 0;">
        <div class="footerlink">
            <p style="margin: 0;">Copyright &copy; 2025 
                <a href="#" style="text-decoration: none; color: inherit;">Domain Name</a> - All Rights Reserved
            </p>
        </div>
    </div>
</footer></body>

    </body>
       
   
</html>
