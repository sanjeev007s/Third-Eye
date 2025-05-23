<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Registration</title>
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
    <style>
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 0;
            border-radius: 5px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        .btn-green {
            background-color: #4CAF50;
        }
        .btn-link-blue {
            font-weight: bold; text-decoration: none; color: #007BFF;
        }
        .btn-link-blue:hover {
            
        }
        .btn-default {
            background-color: #555;
        }
    </style>
</head>
<body>
    <%
        session.removeAttribute("user");
        session.removeAttribute("pass");
    %>
    <!-- START PAGE SOURCE -->
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
    </center>

    <div class="main-box">
        <div class="container">
            <div class="inside">
                <div class="wrapper">

                    <aside>
                        <!-- Styled Home Button -->
                        <a href="index.jsp" class="btn btn-green">Home</a>

                        <h2>New Registration <span>Members</span></h2>
                        <img src="images/idxxlogo.ico"><br><br>

                        <ol type="A">
                            <li>
                                <p><a href="HotelRegistration.jsp" class="btn-link-blue">New Registration Hotel Member..</a></p>
                            </li>
                            <li>
                                <p><a href="HostelRegistration.jsp" class="btn-link-blue">New Registration Hostel Member..</a></p>
                            </li>
                            <li>
                                <p><a href="CitizenRegistration.jsp" class="btn-link-blue">New Registration Citizen..</a></p>
                            </li>
                        </ol>

                    </aside>

                    <section id="content">
                        <article>
                            <h2>Welcome to <span>Crime Prevention Web Portal</span></h2>
                            <figure><img src="images/policex1.jpeg" alt=""></figure>
                            <h2>About Application</h2>
                            <marquee direction="up">
                                <p>
                                    Web Based Application for a Police department is automation of the complete work of chartered e-cops. Along with automation of the work of chartered police it also provides various services to the cops, local police and citizen. They can find at any criminal person and can get their arrest done easily. 
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
    </footer>
</body>
</html>
