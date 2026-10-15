<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Result</title>
        <style>
            body { font-family: 'Segoe UI', Arial, sans-serif; display: flex; justify-content: center; margin-top: 60px; background-color: #f4f6f9; }
            .result-container { background: white; padding: 30px 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 420px; }
            h2 { color: #1b2a7a; text-align: center; margin-bottom: 25px; }
            fieldset { border: 1px solid #ddd; border-radius: 6px; padding: 20px; }
            legend { font-weight: bold; color: #1b2a7a; padding: 0 10px; }
            .result-text { font-size: 20px; font-weight: bold; color: #27ae60; text-align: center; margin: 15px 0; }
            .error-text { font-size: 18px; font-weight: bold; color: #c0392b; text-align: center; margin: 15px 0; }
            .btn-back { display: block; text-align: center; margin-top: 20px; padding: 10px 20px; background-color: #1b2a7a; color: white; text-decoration: none; border-radius: 4px; font-weight: bold; }
            .btn-back:hover { background-color: #121c54; }
        </style>
    </head>
    <body>
        <div class="result-container">
            <fieldset>
                <legend>Result</legend>
                <%
                    String error = (String) request.getAttribute("error");
                    if (error != null) {
                %>
                    <div class="error-text">Error: <%= error %></div>
                <%
                    } else {
                        Float firstOperand = (Float) request.getAttribute("firstOperand");
                        Float secondOperand = (Float) request.getAttribute("secondOperand");
                        Character operator = (Character) request.getAttribute("operator");
                        Float result = (Float) request.getAttribute("result");
                %>
                    <div class="result-text">
                        <%= firstOperand %> <%= operator %> <%= secondOperand %> = <%= result %>
                    </div>
                <%
                    }
                %>
                <a href="index.jsp" class="btn-back">Quay l?i</a>
            </fieldset>
        </div>
    </body>
</html>
