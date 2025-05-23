<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/Humanst521_BT_400.font.js"></script>
    <script type="text/javascript" src="js/Humanst521_Lt_BT_400.font.js"></script>
    <script type="text/javascript" src="js/cufon-replace.js"></script>
    <script type="text/javascript" src="js/roundabout.js"></script>
    <script type="text/javascript" src="js/roundabout_shapes.js"></script>
    <script type="text/javascript" src="js/gallery_init.js"></script>
</head>
<body>
    <!-- START PAGE SOURCE -->
    <header>
        <div class="container">
            <h1>Crime Prevention</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="About.jsp">About</a></li>
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
                <div class="wrapper" style="display: flex; gap: 30px; justify-content: space-between;">
                    <!-- Contact Info (Left Side) -->
                    <div style="flex: 1; max-width: 50%; padding: 20px; background-color: #f9f9f9; border-radius: 8px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);">
                        <h2 style="text-align: center; font-size: 2em; color: #333;">Our <span style="color: #009688;">Contacts</span></h2>
                        <ul class="contacts" style="list-style-type: none; padding: 0; text-align: center;">
                            <li style="font-size: 1.1em; margin-bottom: 10px;"><strong>Zip Code:</strong> 266201</li>
                            <li style="font-size: 1.1em; margin-bottom: 10px;"><strong>Country:</strong> India</li>
                            <li style="font-size: 1.1em; margin-bottom: 10px;"><strong>City:</strong> Lucknow</li>
                            <li style="font-size: 1.1em; margin-bottom: 10px;"><strong>Telephone 1:</strong> +91 **********</li>
                            <li style="font-size: 1.1em; margin-bottom: 10px;"><strong>Fax:</strong> +354 5635620</li>
                            <li style="font-size: 1.1em; margin-bottom: 10px;">
                                <strong>Email:</strong>
                                <a href="#" style="color: #009688; text-decoration: none;">
                                    informationtechnoloy2025@gmail.com
                                </a>
                            </li>
                        </ul>
                    </div>

                    <!-- Contact Form (Right Side) -->
                    <div style="flex: 1; padding: 20px; background-color: #f9f9f9; border-radius: 8px; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);">
                        <section id="content">
                            <article>
                                <h2 style="font-size: 2em; color: #333; margin-bottom: 20px; text-align: center;">Contact <span style="color: #009688;">Form</span></h2>
                                <form id="contacts-form" action="#" method="post" style="width: 100%; max-width: 500px; margin: 0 auto; background-color: #f9f9f9; padding: 15px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); display: flex; flex-direction: column; align-items: center;">
                                    <fieldset style="border: none; padding: 0;">
                                        <div class="field" style="margin-bottom: 20px; width: 100%;">
                                            <label for="name" style="font-size: 1.1em; color: #555; display: block; margin-bottom: 10px;">Your Name:</label>
                                            <input id="name" type="text" placeholder="Enter your name" style="width: 100%; max-width: 400px; padding: 10px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px; height: 30px; box-sizing: border-box;"/>
                                        </div>
                                        <div class="field" style="margin-bottom: 20px; width: 100%;">
                                            <label for="email" style="font-size: 1.1em; color: #555; display: block; margin-bottom: 10px;">Your E-mail:</label>
                                            <input id="email" type="email" placeholder="Enter your email" style="width: 100%; max-width: 400px; padding: 10px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px; height: 30px; box-sizing: border-box;"/>
                                        </div>
                                        <div class="field" style="margin-bottom: 20px; width: 100%;">
                                            <label for="website" style="font-size: 1.1em; color: #555; display: block; margin-bottom: 10px;">Your Website:</label>
                                            <input id="website" type="url" placeholder="Enter your website" style="width: 100%; max-width: 400px; padding: 10px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px; height: 30px; box-sizing: border-box;"/>
                                        </div>
                                        <div class="field" style="margin-bottom: 20px; width: 100%;">
                                            <label for="message" style="font-size: 1.1em; color: #555; display: block; margin-bottom: 10px;">Your Message:</label>
                                            <textarea id="message" placeholder="Enter your message" style="width: 100%; max-width: 400px; padding: 10px; font-size: 1em; border: 1px solid #ddd; border-radius: 4px; height: 50px; box-sizing: border-box;"></textarea>
                                        </div>

                                        <!-- Centered Button -->
                                        <div style="text-align: center;">
                                            <button type="submit" style="margin-left: -60%;
                                                    background-color: #009688; color: #fff; padding: 12px 20px; font-size: 1.1em; border: none; border-radius: 4px; cursor: pointer; transition: all 0.3s ease;">
                                                Send the message!
                                            </button>
                                        </div>
                                    </fieldset>
                                </form>
                            </article>
                        </section>
                    </div>
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
