<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    String result = null;

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        Map<String, Integer> scores = new HashMap<>();
        scores.put("Medical", 0);
        scores.put("Non-Medical", 0);
        scores.put("Commerce", 0);
        scores.put("Arts", 0);

        String[] answers = new String[8];
        for (int i = 0; i < 8; i++) {
            answers[i] = request.getParameter("q" + (i + 1));
            if (answers[i] != null && scores.containsKey(answers[i])) {
                scores.put(answers[i], scores.get(answers[i]) + 1);
            }
        }

        String topStream = "";
        int maxScore = 0;
        for (Map.Entry<String, Integer> entry : scores.entrySet()) {
            if (entry.getValue() > maxScore) {
                maxScore = entry.getValue();
                topStream = entry.getKey();
            }
        }

        if (!topStream.isEmpty()) {
            result = "Based on your answers, the recommended stream is <strong>" + topStream + "</strong>.";
        } else {
            result = "Please answer the questions to get your result.";
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Career Quiz | DreamTrail</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f9ff;
            margin: 0;
        }
        .container {
            max-width: 850px;
            margin: 40px auto;
            background: #fff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        .question {
            margin-bottom: 25px;
        }
        .question label {
            display: block;
            margin: 10px 0 5px;
            font-weight: 600;
        }
        .question .option {
            margin: 4px 0;
        }
        .submit-btn {
            background-color: #00c3ff;
            color: white;
            padding: 14px 25px;
            border: none;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }
        .submit-btn:hover {
            background-color: #00a0cc;
        }
        .result {
            background: #e6f9ff;
            border-left: 5px solid #00c3ff;
            padding: 20px;
            margin-top: 30px;
            font-size: 18px;
            border-radius: 8px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Career Stream Quiz</h2>
    <form method="post">
        <div class="question">
            <label>1. Which of the following excites you the most?</label>
            <div class="option"><input type="radio" name="q1" value="Medical"> Studying the human body and diseases</div>
            <div class="option"><input type="radio" name="q1" value="Non-Medical"> Building gadgets and solving tech problems</div>
            <div class="option"><input type="radio" name="q1" value="Commerce"> Understanding how businesses make money</div>
            <div class="option"><input type="radio" name="q1" value="Arts"> Creating stories, poems, or art</div>
        </div>

        <div class="question">
            <label>2. What subject do you enjoy the most?</label>
            <div class="option"><input type="radio" name="q2" value="Medical"> Biology</div>
            <div class="option"><input type="radio" name="q2" value="Non-Medical"> Physics</div>
            <div class="option"><input type="radio" name="q2" value="Commerce"> Business Studies</div>
            <div class="option"><input type="radio" name="q2" value="Arts"> Literature</div>
        </div>

        <div class="question">
            <label>3. Which activity would you choose for a school project?</label>
            <div class="option"><input type="radio" name="q3" value="Medical"> Health and wellness campaign</div>
            <div class="option"><input type="radio" name="q3" value="Non-Medical"> Robotics or AI demo</div>
            <div class="option"><input type="radio" name="q3" value="Commerce"> Startup business plan</div>
            <div class="option"><input type="radio" name="q3" value="Arts"> Stage play or art exhibition</div>
        </div>

        <div class="question">
            <label>4. What kind of movies/shows do you usually enjoy?</label>
            <div class="option"><input type="radio" name="q4" value="Medical"> Medical dramas</div>
            <div class="option"><input type="radio" name="q4" value="Non-Medical"> Sci-fi or tech documentaries</div>
            <div class="option"><input type="radio" name="q4" value="Commerce"> Business/Entrepreneurship</div>
            <div class="option"><input type="radio" name="q4" value="Arts"> Historical or romantic stories</div>
        </div>

        <div class="question">
            <label>5. What motivates you the most?</label>
            <div class="option"><input type="radio" name="q5" value="Medical"> Helping others with care</div>
            <div class="option"><input type="radio" name="q5" value="Non-Medical"> Solving logical problems</div>
            <div class="option"><input type="radio" name="q5" value="Commerce"> Becoming financially successful</div>
            <div class="option"><input type="radio" name="q5" value="Arts"> Expressing thoughts creatively</div>
        </div>

        <div class="question">
            <label>6. What kind of books would you prefer?</label>
            <div class="option"><input type="radio" name="q6" value="Medical"> Medical science books</div>
            <div class="option"><input type="radio" name="q6" value="Non-Medical"> Tech and innovation books</div>
            <div class="option"><input type="radio" name="q6" value="Commerce"> Financial literacy books</div>
            <div class="option"><input type="radio" name="q6" value="Arts"> Novels and creative writing</div>
        </div>

        <div class="question">
            <label>7. Which career would you find most fulfilling?</label>
            <div class="option"><input type="radio" name="q7" value="Medical"> Doctor or Nurse</div>
            <div class="option"><input type="radio" name="q7" value="Non-Medical"> Engineer or Scientist</div>
            <div class="option"><input type="radio" name="q7" value="Commerce"> Entrepreneur or Analyst</div>
            <div class="option"><input type="radio" name="q7" value="Arts"> Writer or Designer</div>
        </div>

        <div class="question">
            <label>8. How do you usually solve problems?</label>
            <div class="option"><input type="radio" name="q8" value="Medical"> Empathize and support others</div>
            <div class="option"><input type="radio" name="q8" value="Non-Medical"> Analyze technically and logically</div>
            <div class="option"><input type="radio" name="q8" value="Commerce"> Evaluate profit and loss</div>
            <div class="option"><input type="radio" name="q8" value="Arts"> Think outside the box creatively</div>
        </div>

        <button class="submit-btn" type="submit">Submit Quiz</button>
    </form>

    <% if (result != null) { %>
        <div class="result"><%= result %></div>
    <% } %>
</div>
</body>
</html>
