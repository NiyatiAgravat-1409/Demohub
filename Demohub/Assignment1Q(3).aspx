<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1Q(3).aspx.cs" Inherits="Demohub.Assignment1Q_3_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #a18cd1, #fbc2eb); /* Purple to light pink gradient */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .calculator {
        max-width: 400px;
        width: 100%;
        padding: 20px;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    .calculator h2 {
        color: #7a1fa2; /* Deep purple */
        margin-bottom: 10px;
        font-size: 24px;
    }

    .calculator h4 {
        color: #b276c8; /* Light purple */
        margin-bottom: 20px;
        font-size: 18px;
    }

    .calculator input, .calculator select, .calculator button {
        width: calc(100% - 20px);
        margin: 10px 0;
        padding: 10px;
        font-size: 16px;
        border: 2px solid #b276c8; /* Light purple border */
        border-radius: 5px;
        outline: none;
    }

    .calculator input:focus, .calculator select:focus {
        border-color: #7a1fa2; /* Deep purple focus */
        box-shadow: 0 0 5px rgba(122, 31, 162, 0.5);
    }

    .calculator button {
        background-color: #7a1fa2; /* Deep purple */
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .calculator button:hover {
        background-color: #5e137e; /* Darker purple */
        transform: scale(1.05); /* Slight hover effect */
    }

    .result {
        font-size: 18px;
        margin-top: 20px;
        color: #7a1fa2; /* Deep purple */
        font-weight: bold;
    }
</style>

</head>
<body>
   
        <div>
             <div class="calculator">
        <h2>Web Form Calculator</h2>
        <h4>Niyati Agravat</h4>
        <form id="calcForm">
            <input type="number" id="number1" placeholder="Enter first number" required>
            <input type="number" id="number2" placeholder="Enter second number" required>
            <select id="operation" required>
                <option value="">Select Operation</option>
                <option value="add">Addition</option>
                <option value="subtract">Subtraction</option>
                <option value="multiply">Multiplication</option>
                <option value="divide">Division</option>
            </select>
            <button type="submit">Calculate</button>
        </form>
        <div class="result" id="result"></div>
    </div>

    <script>
        document.getElementById('calcForm').addEventListener('submit', function(event) {
            event.preventDefault();

            const number1 = parseFloat(document.getElementById('number1').value);
            const number2 = parseFloat(document.getElementById('number2').value);
            const operation = document.getElementById('operation').value;
            const resultDiv = document.getElementById('result');

            let result;
            if (operation === 'add') {
                result = number1 + number2;
            } else if (operation === 'subtract') {
                result = number1 - number2;
            } else if (operation === 'multiply') {
                result = number1 * number2;
            } else if (operation === 'divide') {
                if (number2 !== 0) {
                    result = number1 / number2;
                } else {
                    result = 'Error: Division by zero';
                }
            } else {
                result = 'Please select a valid operation.';
            }

            resultDiv.textContent = `Result: ${result}`;
        });
    </script>
</body>
</html>

