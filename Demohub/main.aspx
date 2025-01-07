<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Demohub.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <style>
   body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #a18cd1, #fbc2eb); /* Purple and Light Pink Gradient */
    color: #333;
    margin: 0;
    padding: 0;
    height: 100vh; /* Ensures full-screen height */
}


    nav.navbar {
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    .navbar-brand {
        font-size: 1.5rem;
        font-weight: bold;
        color: #333;
    }

    .navbar-brand:hover {
        color: #0056b3;
    }

    .container {
        background: #ffffff;
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.2);
    }

    h2 {
        color: #444;
        margin-bottom: 20px;
        text-align: center;
        font-weight: bold;
    }

    .table {
        margin-top: 20px;
        border-radius: 10px;
        overflow: hidden;
    }

    .table thead {
        background: #6a11cb;
        color: white;
    }

    .table tbody tr:hover {
        background: #f0f8ff;
    }

    .form-select {
        border: 1px solid #ddd;
        border-radius: 5px;
        padding: 8px;
    }

    .form-select:focus {
        outline: none;
        border-color: #6a11cb;
        box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
    }

    .btn-outline-success {
        color: #fff;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        border: none;
    }

    .btn-outline-success:hover {
        background: linear-gradient(to right, #5c0ba1, #1b4d9f);
    }

    .form-control {
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    .form-control:focus {
        border-color: #6a11cb;
        box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
    }

    .form-select:hover {
        cursor: pointer;
    }

    footer {
        text-align: center;
        padding: 15px;
        background: #6a11cb;
        color: white;
        margin-top: 30px;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Niyati Agravat</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
            
      <li class="nav-item">
        <a class="nav-link" href="Assignment1Q(1).aspx">Assignment Link</a>
      </li>
       
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
        </div>
         <div>
            <h2>Assignment Details</h2>
            <table border="1" style="width: 100%; text-align: left;">
                <tr>
                    <th>SR NO</th>
                    <th>Assignment</th>
                    <th>Question</th>
                   
                </tr>
                <tr>
                    <td>1</td>
                    <td>Assignment 1</td>
                    <td>              
  <div style="margin-top: 10px;">
    <select id="question" class="form-select" onchange="navigateToPage(this.value)">
    <option value="" selected disabled>Select...</option>
    <option value="Assignment1Q(1).aspx">Question 1</option>
    <option value="Assignment1Q(2).aspx">Question 2</option>
    <option value="Assignment1Q(3).aspx">Question 3</option>
        <option value="Assignment1Q(4).aspx">Question 4</option>




</select>
      </td>
  </div>
</div>
  </tr>

  </div>
</div>
  </tr>
                
                <!-- Add more rows as needed -->
            </table>

            <br />
            
        </div>
    </form>
    <script>
    function navigateToPage(value) {
        if (value) {
            window.location.href = value; // Navigate to the selected page
        }
    }
</script>
</body>
</html>
