<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1Q(4).aspx.cs" Inherits="Demohub.Assignment1Q_4_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>AutoPostBack Demonstration</title>
   <style>
    body {
        font-family: 'Arial Rounded MT', sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #9b59b6, #f8a5c2); /* Gradient from Purple to Light Pink */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    h2 {
        text-align: center;
        color: #9b59b6; /* Purple */
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #9b59b6; /* Purple */
    }

    select, input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #f8a5c2; /* Light Pink Border */
        border-radius: 4px;
        font-size: 16px;
        color: #333;
    }

    select:focus, input[type="text"]:focus {
        border-color: #9b59b6; /* Purple Focus Border */
        box-shadow: 0 0 5px rgba(155, 89, 182, 0.5); /* Purple Glow */
    }

    .result-label {
        margin-top: 20px;
        font-size: 18px;
        font-weight: bold;
        color: #9b59b6; /* Purple */
    }

    .greeting-label {
        margin-top: 20px;
        font-size: 16px;
        color: #9b59b6; /* Purple */
    }

    button {
        background-color: #9b59b6; /* Purple Button */
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #8e44ad; /* Darker Purple Hover */
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>AutoPostBack Property Demonstration</h2>

            <asp:Label ID="Label1" runat="server" Text="Choose a Color:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="-- Select --" Value=""></asp:ListItem>
                <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
            </asp:DropDownList>

            <asp:Label ID="LabelResult" runat="server" Text="" Style="display:block; margin-top:20px;"></asp:Label>

            <hr />

            <asp:Label ID="Label2" runat="server" Text="Enter Your Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            <asp:Label ID="LabelGreeting" runat="server" Text="" Style="display:block; margin-top:20px;"></asp:Label>
        </div>
    </form>
</body>
</html>
