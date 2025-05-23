<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin</title>

    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
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
    <header>
        <div class="container">
            <h1>Third Eye</h1>
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
        <div style="width: 1000px; height:250px; background-image:url('images/idxx.jpeg');">
        </div>
    </center>

    <div class="main-box">
        <div class="container">
            <div class="inside">
                <div class="wrapper">
                    
                    <aside>
                        <!-- Styled Home Button -->
                        <a href="index.jsp" style="display: inline-block; background-color: #4CAF50; color: white; padding: 10px 20px; margin-bottom: 15px; border: none; border-radius: 5px; text-decoration: none; font-weight: bold;">Home</a>
                        
                        <h2>Administrator <span>LogIn</span></h2>

                        <form method="post" action="AdminLogin">
                            <table>
                                <tr>
                                    <td colspan="2" align="center">
                                        <select name="t1" style="width: 100%; max-width: 250px; padding: 10px; font-size: 1em; border-radius: 5px; border: 1px solid #ccc; background-color: #f1f1f1;">
                                            <option>Select user type..</option>
                                            <option value="police">Police Officer</option>
                                            <option value="Admin">Administrator</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr><td colspan="2" height="10px"></td></tr>

                                <tr>
                                    <td>User_Id:</td>
                                    <td><input type="text" name="t2" style="width: 100%; max-width: 250px; padding: 8px; border-radius: 5px; border: 1px solid #ccc;"></td>
                                </tr>
                                <tr><td colspan="2" height="10px"></td></tr>

                                <tr>
                                    <td>Password:</td>
                                    <td><input type="password" name="t3" style="width: 100%; max-width: 250px; padding: 8px; border-radius: 5px; border: 1px solid #ccc;"></td>
                                </tr>
                                <tr><td colspan="2" height="10px"></td></tr>

                                <tr>
                                    <td colspan="2" align="center">
                                        <input type="submit" value="LogIn" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 1em;">
                                    </td>
                                </tr>

                                <%
                                    String m=request.getParameter("msg");
                                    if(m!=null)
                                        out.println("<tr><td colspan='2' style='color:red; text-align:center;'>" + m + "</td></tr>");
                                %>
                            </table>
                        </form>
                        <br>
                        <img src="images/logo.ico">
                    </aside>

                    <section id="content">
                        <article>
                            <h2>Welcome to <span>Crime Prevention Web Portal</span></h2>
                            <figure><img src="images/policex1.jpeg" alt=""></figure>
                            <h2>About Application</h2>
                            <marquee direction="up">
                                <p>
                                    Web Based Application for a Police department is automation of the complete work of chartered e-cops.
                                    Along with automation of the work of chartered police it also provides various services to the cops, local police and citizen.
                                    They can find any criminal person and get their arrest done easily. 
                                    To deliver next generation police and law enforcement reporting tools, and setting up intelligence platforms
                                    that agencies use to take incoming incident reports, lessen live employee resources and allow these enforcement agencies
                                    to reallocate resources to much needed community areas.
                                    An online solution is very useful as the solution is inherently distributive.
                                    This distributive characteristic helps different police stations to share information and get in contact.
                                    The administrative work required to maintain records reduces greatly as the paperwork is minimal.
                                    Its primary task includes securing continuous needs of the public in an efficient manner.
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
    </footer>
</body>
</html>
