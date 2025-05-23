

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Third Eye - Crime Prevention Bot</title>
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
        body {
            background: white !important;
            color: black;
            font-family: Arial, sans-serif;
        }
        #chat-box {
            width: 60%;
            margin: 20px auto;
            background-color: #f1f1f1;
            padding: 10px;
            border-radius: 10px;
            overflow-y: auto;
            height: 400px;
        }
        #chat-box p {
            padding: 10px;
            margin: 5px 0;
            border-radius: 10px;
        }
        #chat-box .user-message {
            background-color: #d1f7c4;
            text-align: right;
        }
        #chat-box .bot-message {
            background-color: #e4e4e4;
            text-align: left;
        }
        #chat-box .bot-typing {
            text-align: left;
            font-style: italic;
            color: #ccc;
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .option-button {
            margin: 5px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .option-button:hover {
            background-color: #45a049;
        }
        .options-container {
            margin-top: 10px;
            text-align: center;
        }
        #map-container {
            margin-top: 20px;
            width: 100%;
            height: 400px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .back-button {
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
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
            </ul>
        </nav>
    </div>
</header>

<div style="padding: 30px;">
    <h2>👮‍♀ Crime Prevention Bot</h2>
    <div id="chat-box"></div>

    <form method="post" onsubmit="return handleUserInput();">
        <input type="text" id="user-input" placeholder="How can I help you today?" required>
        <input type="submit" value="Send">
    </form>

    <script type="text/javascript">
        function appendMessage(message, sender) {
            const chatBox = document.getElementById('chat-box');
            const newMessage = document.createElement('p');
            newMessage.classList.add(sender + '-message');
            newMessage.textContent = message;
            chatBox.appendChild(newMessage);
            chatBox.scrollTop = chatBox.scrollHeight;
        }

        function botTyping() {
            const chatBox = document.getElementById('chat-box');
            const typingIndicator = document.createElement('p');
            typingIndicator.classList.add('bot-typing');
            typingIndicator.textContent = '...typing';
            chatBox.appendChild(typingIndicator);
            chatBox.scrollTop = chatBox.scrollHeight;
        }

        function stopTyping() {
            const typingIndicator = document.querySelector('.bot-typing');
            if (typingIndicator) {
                typingIndicator.remove();
            }
        }

        function showOptions(options, type = 'normal') {
            const chatBox = document.getElementById('chat-box');
            const optionsDiv = document.createElement('div');
            optionsDiv.className = 'options-container';

            options.forEach(option => {
                const button = document.createElement('button');
                button.textContent = option;
                button.className = 'option-button';

                button.onclick = function(event) {
                    event.preventDefault();
                    appendMessage(option, 'user');

                    if (type === 'crime-type') {
                        if (option.toLowerCase() === 'citizen') {
                            window.location.href = "CitizenRegistration.jsp";
                        } else if (option.toLowerCase() === 'hostel') {
                            window.location.href = "HostelRegistration.jsp";
                        } else if (option.toLowerCase() === 'hotel') {
                            window.location.href = "HotelRegistration.jsp";
                        }
                    } else {
                        processInput(option.toLowerCase());
                    }
                };

                optionsDiv.appendChild(button);
            });

            chatBox.appendChild(optionsDiv);
            chatBox.scrollTop = chatBox.scrollHeight;
        }

        function handleUserInput() {
            const userInput = document.getElementById('user-input').value.trim();
            if (userInput) {
                appendMessage(userInput, 'user');
                processInput(userInput.toLowerCase());
                document.getElementById('user-input').value = '';
            }
            return false;
        }

        function processInput(userInput) {
            botTyping();
            setTimeout(function() {
                stopTyping();
                let botResponse = '';

                switch (userInput) {
                    case 'report a crime':
                        botResponse = 'Please specify the type of crime:';
                        appendMessage(botResponse, 'bot');
                        showOptions(['Citizen', 'Hostel', 'Hotel'], 'crime-type');
                        break;

                    case 'get safety tips':
                        botResponse = 'Here are some advanced safety tips:\n\n' +
                            '- Always be aware of your surroundings, especially in unfamiliar areas.\n' +
                            '- Avoid walking alone at night. Stick to well-lit areas.\n' +
                            '- Use personal safety apps like "bSafe" and "Life360" to alert others if you feel unsafe.\n' +
                            '- Keep your phone fully charged and have emergency contacts saved.\n' +
                            '- Carry self-defense items like pepper spray or a whistle.\n' +
                            '- Trust your instincts—if something feels off, leave the area immediately.';
                        appendMessage(botResponse, 'bot');
                        break;

                    case 'emergency contact numbers':
                        botResponse = 'Here are important emergency contacts:\n\n' +
                            '- Police: 100\n\n' +
                            '- Ambulance: 102\n' +
                            '- Fire Brigade: 101\n' +
                            '- Women’s Helpline: 1091\n' +
                            '- Child Helpline: 1098\n' +
                            '- National Helpline for Mental Health: 9152987821\n' +
                            '- Domestic Violence Helpline: 181';
                        appendMessage(botResponse, 'bot');
                        break;

                    case 'self-defense training':
                        botResponse = 'Here are some options for self-defense training:\n\n' +
                            '- Attend free workshops at community centers and gyms.\n' +
                            '- You can also explore online training platforms like "Udemy" and "Skillshare" for martial arts and self-defense courses.\n' +
                            '- Consider taking classes in Krav Maga, Kickboxing, or Brazilian Jiu-Jitsu, which are all great for self-defense.\n' +
                            '- Apps like "bSafe" allow you to practice self-defense techniques and provide real-time alerts.';
                        appendMessage(botResponse, 'bot');
                        break;

                    case 'nearest police station':
                        botResponse = 'Here is the map to find the nearest police station:';
                        appendMessage(botResponse, 'bot');
                        displayMap();
                        break;

                    case 'exit':
                        botResponse = 'Thank you for using Crime Prevention Bot. Stay safe!';
                        appendMessage(botResponse, 'bot');
                        break;

                    default:
                        botResponse = 'I\'m sorry, I didn\'t quite get that. Please choose an option below:';
                        appendMessage(botResponse, 'bot');
                        showOptions([ 
                            'Report a crime',
                            'Get safety tips',
                            'Emergency contact numbers',
                            'Self-defense training',
                            'Nearest police station',
                            'Exit'
                        ]);
                        break;
                }
            }, 800);
        }

        function displayMap() {
            const mapContainer = document.createElement('div');
            mapContainer.id = 'map-container';
            const mapFrame = document.createElement('iframe');
            mapFrame.width = '100%';
            mapFrame.height = '100%';
            mapFrame.style.border = '0';
            mapFrame.loading = 'lazy';
            mapFrame.allowFullscreen = '';
            mapFrame.referrerPolicy = 'no-referrer-when-downgrade';

            mapFrame.src = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987725.6586814378!2d78.0569975754791!3d26.84414369908007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3993465b6fdb3dd5%3A0x944627f77b9ac1d!2sUttar%20Pradesh!5e0!3m2!1sen!2sin!4v1626224704873!5m2!1sen!2sin";

            mapContainer.appendChild(mapFrame);
            document.getElementById('chat-box').appendChild(mapContainer);
        }
    </script>

    <!-- Back Button -->
    <div style="text-align: center; margin-top: 20px;">
        <a href="index.jsp">
            <button class="back-button">
                Back to Home
            </button>
        </a>
    </div>

</div>

<footer style="background-color: black; color: white;">
    <div class="container" style="text-align: center; padding: 20px 0;">
        <div class="footerlink">
            <p style="margin: 0;">
                Copyright &copy; 2025 
                <a href="#" style="text-decoration: none; color: inherit;">Domain Name</a> - All Rights Reserved
            </p>
        </div>
    </div>
</footer>

<script type="text/javascript">
    Cufon.now();
</script>

</body>
</html>
