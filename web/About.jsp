<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>About_Us</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/Humanst521_BT_400.font.js"></script>
    <script type="text/javascript" src="js/Humanst521_Lt_BT_400.font.js"></script>
    <script type="text/javascript" src="js/cufon-replace.js"></script>
    <script type="text/javascript" src="js/roundabout.js"></script>
    <script type="text/javascript" src="js/roundabout_shapes.js"></script>
    <script type="text/javascript" src="js/gallery_init.js"></script>
    <script type="text/javascript" src="js/loopedslider.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#loopedSlider').loopedSlider({
                container: ".wrap",
                containerClick: false
            });
        });
    </script>
</head>
<body>
    <!-- START PAGE SOURCE -->
    <header>
        <div class="container">
            <h1>Third Eye</h1>
            <nav>
                <ul>
                    <li>
                        <a href="index.jsp" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Home</a>
                    </li>
                    <li><a href="Contect.jsp">Contact</a></li>
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
                        <a href="index.jsp" style="display: inline-block; margin-bottom: 10px; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Home</a>
                        <h2>Crime Prevention <span>Members</span></h2>
                        <div id="loopedSlider">
                            <div class="wrap">
                                <div class="slides" style="display: flex; justify-content: center; gap: 30px;">
    <div style="position: relative; text-align: center; display: inline-block;">
        <img src="images/idx1.ico" alt="" style="display: block;">
        <a href="#">
            <h1 style="position: absolute; top: 0; left: 50%; transform: translateX(-50%);
                       color: white; margin: 0; padding: 10px 0; white-space: nowrap;">
                Indian Hotel
            </h1>
        </a>
    </div>
    <div style="position: relative; text-align: center; display: inline-block;">
        <img src="images/idx2.ico" alt="" style="display: block;">
        <a href="#">
            <h1 style="position: absolute; top: 0; left: 50%; transform: translateX(-50%);
                       color: white; margin: 0; padding: 10px 0; white-space: nowrap;">
                Indian Citizen
            </h1>
        </a>
    </div>
    <div style="position: relative; text-align: center; display: inline-block;">
        <img src="images/idx3.ico" alt="" style="display: block;">
        <a href="#">
            <h1 style="position: absolute; top: 0; left: 50%; transform: translateX(-50%);
                       color: white; margin: 0; padding: 10px 0; white-space: nowrap;">
                Indian Police
            </h1>
        </a>
    </div>
</div>

                            </div>
                            <ul class="nav-controls" style="list-style: none; padding: 0; display: flex; gap: 100px; margin-top: 15px;">
    <li>
        <a href="#" class="previous" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Previous </a>
    </li>
    <li>
        <a href="#" class="next" style="display: inline-block; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;">Next </a>
    </li>
</ul>


                        </div>
                    </aside>

                    <section id="content">
                        <article>
                            <h2>About <span>Web Application</span></h2>
                            <p>Web Based Application for a Police department is automation of the complete work of chartered e-cops. Along with automation of the work of chartered police it also provides various services to the cops, local police and citizen. They can find at any criminal person and can get their arrest done easily.</p>
                            <p>To deliver next generation police and law enforcement reporting tools, and setting up intelligence platforms that agencies use to take incoming incident reports, lessen live employee resources and allow these enforcement agencies to reallocate resources to much needed community areas.</p>
                        </article>
                        <p>An online solution is very useful as the solution is inherently distributive. This distributive characteristic of the online solution helps in getting the different police stations to share information and get in contact with one another. The administrative work required to maintain records reduces greatly as the paperwork is almost minimal and the data is stored in an organized. Its primary task includes securing continuous needs of the public in an efficient manner.</p>
                        <p>The introduction to the Guidelines for the Third Eye indicates that: "There is clear evidence that well-planned crime prevention strategies not only prevent crime and victimization, but also promote community safety and contribute to sustainable development of countries. Effective, responsible crime prevention enhances the quality of life of all citizens.</p>
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
