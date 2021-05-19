<html>
    <head>
    <title>Online Food Delivery</title>
    
    </head>
    
    
  <style>
          @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');

        .wholebody
        {
            background-image: url(orderbg.jpg);
            position: relative; 
color : white;
            height: 100vh;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Poppins', sans-serif;
    font-weight: 400;
            
        }
h3
{
position : fixed;
margin-top : 10%;

}
        
        .navbar-nav {
            margin-left: auto;
        }
        .navbar
        {
             background-color: rgba(0,0,0,0.5);
        }
        .wd
        {
            position: relative;
            color: black;  
            font-size:2rem;
            text-align: center;
            width : 1000px;
            height: 695px;
            padding-left: 50px;
            font-family:'Times New Roman', Times, serif;
        }
        
        </style>
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    </head>
<body>

    <div class="wbody">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
                 <img src="roy.jpg" alt="" width="90" height="34" class="d-inline-block align-text-top">
                Royal Hotels
              </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse d-flex" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active navitems" aria-current="page" href="home.html">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link navitems active" href="Aboutus.html">About-Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link navitems active" href="bookorder.html">Book-Order</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link navitems active" href="myorders.jsp">My-Orders</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link navitems active" href="contactus.html">Contact-Us</a>
                </li>
              </ul>
            </div>
          </nav>
		<div class="jumbotron text-center" style="opacity = 0.8;">
<h1>My-Orders</h1>
</div>
              <div class="container-fluid wholebody">
<%@page import="java.sql.*" %>
     
       <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.23.144:1521:orcl","userid","pwd");    
System.out.println("connection established");
    PreparedStatement Stmt=con.prepareStatement("SELECT * from delivery.oder");
    
    Stmt.executeQuery();
    ResultSet rs=Stmt.getResultSet();
    
String name= null;
String ph=null;
String mail=null;
String city=null;
String selected=null;
	%>

<div class="row">
<div class="col">
<table class="table table-striped table-dark" style="background-color : white;">
  <th>Name</th>
<th>Phone</th>
<th>Email</th>
<th>City</th>
<th>Selected</th>
<%    
while(rs.next())
    { 
name=rs.getString(1);
ph=rs.getString(2);
mail=rs.getString(3);
city=rs.getString(4);
selected=rs.getString(5);
%>

<tr>
<td><%=name %></td>
<td><%=ph %></td>
<td><%=mail %></td>
<td><%=city%></td>
<td><%=selected %></td>
</tr>




</div>
</div>

  <%  }
    rs.close();Stmt.close();con.close();
    

    %>
</table>
                
    </div>
    </body>
    </html>
