<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Calculator</title>
        <style>
            body { font-family: 'Segoe UI', Arial, sans-serif; display: flex; justify-content: center; margin-top: 60px; background-color: #f4f6f9; }
            .calc-container { background: white; padding: 30px 40px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); width: 380px; }
            h2 { color: #1b2a7a; text-align: center; margin-bottom: 25px; }
            fieldset { border: 1px solid #ddd; border-radius: 6px; padding: 20px; }
            legend { font-weight: bold; color: #1b2a7a; padding: 0 10px; }
            .form-group { margin-bottom: 15px; }
            label { display: block; font-weight: bold; margin-bottom: 5px; color: #333; }
            input[type="number"], select { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; font-size: 14px; }
            button { background-color: #1b2a7a; color: white; padding: 12px 20px; border: none; border-radius: 4px; cursor: pointer; width: 100%; font-weight: bold; font-size: 16px; margin-top: 10px; }
            button:hover { background-color: #121c54; }
        </style>
    </head>
    <body>
        <div class="calc-container">
            <form action="calculate" method="POST">
                <fieldset>
                    <legend>Simple Calculator</legend>
                    <div class="form-group">
                        <label for="first-operand">First operand:</label>
                        <input type="number" id="first-operand" name="first-operand" placeholder="Toán h?ng d?u tiên" step="any" required autofocus />
                    </div>
                    <div class="form-group">
                        <label for="operator">Operator:</label>
                        <select id="operator" name="operator">
                            <option value="+">Addition (+)</option>
                            <option value="-">Subtraction (-)</option>
                            <option value="*">Multiplication (*)</option>
                            <option value="/">Division (/)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="second-operand">Second operand:</label>
                        <input type="number" id="second-operand" name="second-operand" placeholder="Toán h?ng th? hai" step="any" required />
                    </div>
                    <button type="submit">Calculate</button>
                </fieldset>
            </form>
        </div>
    </body>
</html>
