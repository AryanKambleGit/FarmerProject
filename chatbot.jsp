<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Help Chatbot</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        #chatbox {
            width: 300px;
            height: 400px;
            border: 1px solid #ccc;
            padding: 10px;
            overflow-y: scroll;
            background-color: white;
            margin: 20px auto;
        }
        #user-input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin: 0 auto;
            display: block;
        }
        .message {
            padding: 5px;
            margin: 5px 0;
        }
        .user-message {
            text-align: right;
            background-color: #e0f7fa;
        }
        .bot-message {
            text-align: left;
            background-color: #e8eaf6;
        }
    </style>
</head>
<body>
    <div id="chatbox"></div>
    <input type="text" id="user-input" placeholder="Type a message..." />

    <script>
        const chatbox = document.getElementById('chatbox');
        const userInput = document.getElementById('user-input');

        userInput.addEventListener('keypress', function(event) {
            if (event.key === 'Enter') {
                const message = userInput.value;
                displayMessage(message, 'user');
                userInput.value = '';
                sendMessageToDialogflow(message);
            }
        });

        function displayMessage(message, sender) {
            const messageElement = document.createElement('div');
            messageElement.classList.add('message', `${sender}-message`);
            messageElement.textContent = message;
            chatbox.appendChild(messageElement);
            chatbox.scrollTop = chatbox.scrollHeight;
        }

        function sendMessageToDialogflow(message) {
            fetch('ChatbotServlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ message: message })
            })
            .then(response => response.json())
            .then(data => {
                const botMessage = data.fulfillmentText;
                displayMessage(botMessage, 'bot');
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    </script>
</body>
</html>