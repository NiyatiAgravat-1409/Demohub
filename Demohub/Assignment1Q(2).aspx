<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1Q(2).aspx.cs" Inherits="Demohub.Assignment1Q_2_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Temperature Conversion</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #a18cd1, #fbc2eb); /* Purple to light pink gradient */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .conversion-container {
        width: 400px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        padding: 30px;
        text-align: center;
    }

    .conversion-container h1 {
        font-size: 24px;
        color: #7a1fa2; /* Deep purple */
        margin-bottom: 10px;
    }

    .conversion-container h4 {
        font-size: 18px;
        color: #b276c8; /* Light purple */
        margin-bottom: 20px;
    }

    .input-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        color: #7a1fa2; /* Deep purple */
        margin-bottom: 10px;
    }

    input, select, button {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        font-size: 16px;
        border: 2px solid #b276c8; /* Light purple border */
        border-radius: 5px;
    }

    input:focus, select:focus {
        outline: none;
        border-color: #7a1fa2; /* Deep purple focus */
        box-shadow: 0 0 5px rgba(122, 31, 162, 0.5); /* Purple glow */
    }

    button {
        background-color: #7a1fa2; /* Deep purple */
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
        background-color: #5e137e; /* Darker purple */
        transform: scale(1.05); /* Subtle grow effect */
    }

    .result {
        margin-top: 20px;
        font-size: 18px;
        font-weight: bold;
        color: #7a1fa2; /* Deep purple */
    }
</style>

      
</head>
<body>
    <form id="form1" runat="server">
        <div class="conversion-container">
            <h1>Temperature Conversion</h1>
            <h4>Niyati Agravat</h4>
            <div class="input-group">
                <label for="txtTemperature">Enter Temperature:</label>
                <asp:TextBox ID="txtTemperature" runat="server" placeholder="Enter value" CssClass="input"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="ddlConversion">Conversion Type:</label>
                <asp:DropDownList ID="ddlConversion" runat="server" CssClass="input">
                    <asp:ListItem Text="Celsius to Fahrenheit" Value="CtoF"></asp:ListItem>
                    <asp:ListItem Text="Fahrenheit to Celsius" Value="FtoC"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnConvert" runat="server" Text="Convert" CssClass="button" OnClick="btnConvert_Click" />
            <div class="result">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
    
</html>
