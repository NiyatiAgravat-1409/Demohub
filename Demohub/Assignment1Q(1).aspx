<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1Q(1).aspx.cs" Inherits="Demohub.Assignment1Q_1_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #fff);
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #f4f4f9;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #e0e0e0;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            color: #333;
        }

        input[type="text"]::placeholder {
            color: #aaa;
        }

        button {
            background-color: #ff7e5f;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        button:hover {
            background-color: #f4f4f9;
            transform: scale(1.05);
        }

        .message {
            margin-top: 20px;
            font-size: 18px;
            color: #ffffff;
            font-weight: bold;
        }
    </style>
</head>
<body>
     <form id="form2" runat="server">
        <div>
            <h2>Welcome Page</h2>
            <asp:Label ID="lblName" runat="server" Text="Enter your name:" />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Blue" />
        </div>
    </form>
</body>
</html>
<script runat="server">
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        lblMessage.Text = $"Welcome, {name}!";
    }
</script>

