
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Third Eye</title>
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
</head>
<body>
<!-- START PAGE SOURCE -->
<%
    session.removeAttribute("user");
    session.removeAttribute("pass");
%>
<header>
    <div class="container">
        <h1>Third Eye</h1>
        <nav>
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>
                <li><a href="About.jsp">About</a></li>
                <li><a href="Contect.jsp">Contact</a></li>
                <li><a href="AdminLogin.jsp">Admin LogIn</a></li>
                <li><a href="CrimePreventioChatBot.jsp">Chat Bot</a></li>
            </ul>
        </nav>
    </div>
</header>

<section id="gallery">
    <div class="container">
        <ul id="myRoundabout">
            <li><img src="images/image.jpeg" alt=""></li>
            <li><img src="images/image2.jpeg" alt=""></li>
            <li><img src="images/image1.jpeg" alt=""></li>
            <li><img src="images/image3.jpeg" alt=""></li>
            <li><img src="images/image4.jpeg" alt=""></li>
        </ul>
    </div>
</section>

<div class="main-box">
    <div class="container">
        <div class="inside">
            <div class="wrapper">
                <aside>
                    <h2>Recent <span>News</span></h2>
                    <ul class="news">
                        <li>
                            <figure><strong>22</strong>June</figure>
                            <h3><a href="#">Violence in Murshidabad Over Waqf Act</a></h3>
                            Protests against the Waqf (Amendment) Act in West Bengal's Murshidabad district turned violent, resulting in three deaths and over 270 arrests. <a href="#">...</a>
                        </li>
                        <li>
                            <figure><strong>09</strong>June</figure>
                            <h3><a href="#">Uttar Pradesh Woman Murders Husband</a></h3>
                            A woman in Uttar Pradesh poisoned and strangled her husband with her lover's help, attempting to disguise it as a suicide. <a href="#">...</a>
                        </li>
                        <li>
                            <figure><strong>31</strong>May</figure>
                            <h3><a href="#">Haryana Woman Alleges Rape Involving 'Black Magic'</a></h3>
                            A 22-year-old woman in Haryana reported being raped by two men who allegedly used 'black magic' to trap her. <a href="#">...</a>
                        </li>
                        
                    </ul>
                </aside>

                <section id="content">
                    <article>
                        <h2>Welcome to <span>Crime Prevention Web Portal</span></h2>
                        <figure><img src="images/bannerx.jpg" alt=""></figure>
                    </article>

                    <!-- ENHANCED LOGIN FORM START -->
                    <center>
                        <div style="width:300px; padding: 20px; margin-top: 20px; border: 1px solid #ccc; border-radius: 15px; background-color: #f9f9f9; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
                            <form method="get" action="login">
                                <fieldset style="border: none;">
                                    <table style="width:100%; font-family: Arial, sans-serif; font-size: 14px;">
                                        <tr>
                                            <td colspan="2" style="padding-bottom: 15px;">
                                                <select name="t1" style="width: 100%; padding: 10px; font-size: 14px; border-radius: 5px; border: 1px solid #ccc; background-color: #e0f7f5;">
                                                    <option>Select user type..</option>
                                                    <option value="Hotel">Hotel Member</option>
                                                    <option value="Hostel">Hostel Member</option>
                                                    <option value="Citizen">Citizen</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>User_Id:</td>
                                            <td><input type="text" name="t2" style="width: 100%; padding: 8px; border-radius: 5px; border: 1px solid #ccc;"></td>
                                        </tr>
                                        <tr>
                                            <td>Password:</td>
                                            <td><input type="password" name="t3" style="width: 100%; padding: 8px; border-radius: 5px; border: 1px solid #ccc;"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center; padding-top: 15px;">
                                                <input type="submit" value="LogIn" style="padding: 8px 20px; font-size: 14px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center; padding-top: 10px;">
                                                <a href="UserRegistration.jsp" style="font-weight: bold; text-decoration: none; color: #007BFF;">New Registration..</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center;">
                                                <%
                                                    String m = request.getParameter("msg");
                                                    if (m != null)
                                                        out.println("<p style='color:red'>" + m + "</p>");
                                                %>
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                            </form>
                        </div>
                    </center>
                    <!-- ENHANCED LOGIN FORM END -->

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
</footer>


<!-- END PAGE SOURCE -->

</body>
</html>
