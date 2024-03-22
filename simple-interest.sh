<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
            outline: none;
        }

        body, html {
            height: 100%;
        }

        .container {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .calculator {
            background-color: #ecf0f3;
            padding: 15px;
            border-radius: 30px;
            box-shadow: inset 5px 5px 12px #ffffff, 5px 5px 12px rgb(0,0,0,.16);
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            max-width: 400px;
            width: 90%;
        }

        input {
            grid-column: span 4;
            height: 70px;
            width: 100%;
            background-color: #ecf0f3;
            box-shadow: inset -5px -5px 12px #ffffff, inset 5px 5px 5px rgb(0,0,0,.16);
            border: none;
            border-radius: 30px;
            color: rgb(70,70,70);
            font-size: 2em;
            text-align: end;
            margin-top: 40px;
            margin-bottom: 30px;
            padding: 20px;
        }

        button {
            height: 60px;
            width: 60px;
            background-color: #ecf0f3;
            box-shadow: inset -5px -5px 12px #ffffff, inset 5px 5px 5px rgb(0,0,0,.16);
            border: none;
            border-radius: 50%;
            margin: 8px;
            font-size: 1.5em;
        }

        .equal {
            border-radius: 40px;
        }

    </style>
</head>
<body>
    <div class="container">
        <div class="calculator">
            <input type="text" placeholder="0" id="output-screen">
            <button onclick="clearScreen()">CL</button>
            <button onclick="del()">DEL</button>
            <button onclick="display('%')">%</button>
            <button onclick="display('/')">/</button>
            <button onclick="display('7')">7</button>
            <button onclick="display('8')">8</button>
            <button onclick="display('9')">9</button>
            <button onclick="display('*')">*</button>
            <button onclick="display('4')">4</button>
            <button onclick="display('5')">5</button>
            <button onclick="display('6')">6</button>
            <button onclick="display('-')">-</button>
            <button onclick="display('1')">1</button>
            <button onclick="display('2')">2</button>
            <button onclick="display('3')">3</button>
            <button onclick="display('+')">+</button>
            <button onclick="display('.')">.</button>
            <button onclick="display('0')">0</button>       
            <button onclick="calculate()" class="equal">=</button>

        </div>
    </div>
   <script>
    let outputScreen = document.getElementById("output-screen");

    function display(num) {
        outputScreen.value += num;
    }

    function calculate() {
        try {
            outputScreen.value = eval(outputScreen.value);
        } catch (err) {
            alert("Error! Please check your calculation.");
        }
    }

    function clearScreen() {
        outputScreen.value = "";
    }

    function del() {
        outputScreen.value = outputScreen.value.slice(0, -1);
    }

   </script>
</body>
</html>
