<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chat With Us - DreamTrail</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #fff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .chat-container {
            width: 400px;
            max-width: 90%;
            height: 600px;
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }

        .chat-header {
            background-color: #007cf0;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
        }

        .chat-messages {
            flex-grow: 1;
            padding: 15px;
            overflow-y: auto;
            font-size: 14px;
        }

        .chat-input-section {
            display: flex;
            padding: 10px;
            background-color: #f1f1f1;
            border-top: 1px solid #ddd;
        }

        .chat-input {
            flex-grow: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
        }

        .chat-send-btn {
            margin-left: 10px;
            padding: 10px 16px;
            background-color: #007cf0;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .user-msg {
            text-align: right;
            margin: 5px 0;
            color: #333;
        }

        .bot-msg {
            text-align: left;
            margin: 5px 0;
            color: #007cf0;
        }
    </style>
</head>
<body>

<div class="chat-container">
    <div class="chat-header">Chat With DreamTrail</div>
    <div class="chat-messages" id="chatMessages">
        <div class="bot-msg">👋 Hi there! How can I help you today?</div>
    </div>
    <div class="chat-input-section">
        <input type="text" id="chatInput" class="chat-input" placeholder="Type your message...">
        <button class="chat-send-btn" onclick="sendChat()">Send</button>
    </div>
</div>

<script>
    function sendChat() {
        const input = document.getElementById("chatInput");
        const chatBox = document.getElementById("chatMessages");
        const msg = input.value.trim();

        if (msg !== "") {
            const userMsg = document.createElement("div");
            userMsg.className = "user-msg";
            userMsg.textContent = "You: " + msg;
            chatBox.appendChild(userMsg);

            input.value = "";

            setTimeout(() => {
                const botReply = document.createElement("div");
                botReply.className = "bot-msg";
                botReply.textContent = "Bot: " + getBotReply(msg.toLowerCase());
                chatBox.appendChild(botReply);
                chatBox.scrollTop = chatBox.scrollHeight;
            }, 500);

            chatBox.scrollTop = chatBox.scrollHeight;
        }
    }

    function getBotReply(message) {
        if (message.includes("hello") || message.includes("hi")) {
            return "Hello! 👋 How can I assist you with your career path?";
        } else if (message.includes("quiz")) {
            return "You can take our career quiz to discover the right stream for you!";
        } else if (message.includes("contact")) {
            return "You can reach us anytime at support@dreamtrail.com 📧";
        } else if (message.includes("register")) {
            return "Click on the Register button on the homepage to get started!";
        } else if (message.includes("bye")) {
            return "Goodbye! 😊 Feel free to reach out anytime!";
        } else if (message.includes("medical")) {
            return "Interested in the medical field? We offer detailed information about medical careers!";
        } else if (message.includes("non-medical")) {
            return "The non-medical stream opens up several exciting career options like engineering and technology!";
        } else if (message.includes("commerce")) {
            return "Commerce students can explore various fields such as finance, marketing, and entrepreneurship!";
        } else if (message.includes("arts")) {
            return "The arts stream offers a creative and diverse range of career opportunities in design, literature, and media!";
        } else if (message.includes("career")) {
            return "Not sure which career to pursue? Take our quiz to find the best fit for your skills and interests!";
        } else if (message.includes("stream")) {
            return "Our website offers career insights across various streams, including Medical, Non-Medical, Commerce, and Arts!";
        } else if (message.includes("help")) {
            return "I'm here to assist you! What do you need help with? Feel free to ask!";
        } else if (message.includes("details")) {
            return "For detailed information on any stream or career, check out the corresponding section on the website!";
        } else if (message.includes("team")) {
            return "Meet our team of experts! We’re here to guide you on your educational and career journey!";
        } else if (message.includes("guidance")) {
            return "Looking for career guidance? Our platform can help you make informed decisions about your future!";
        } else if (message.includes("confused") || message.includes("huh") || message.includes("what")) {
            return "I'm sorry, I didn't quite catch that. Our platform can help you make informed decisions about your future!";
        } else {
            return "I'm here to help! Could you tell me more about your question?";
        }
    }


    document.getElementById("chatInput").addEventListener("keypress", function(e) {
        if (e.key === "Enter") {
            sendChat();
        }
    });
</script>

</body>
</html>
