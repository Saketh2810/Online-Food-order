<html>
    <head>
    <title>Online Food Delivery</title>
    
    </head>
    <body>
    
    <%@page import="java.sql.*" %>
     
       <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.23.144:1521:orcl","userid","pwd");    
System.out.println("connection established");
    
		String t1=request.getParameter("Custname");
		String t2 = request.getParameter("Custphn");
		String t3 =request.getParameter("Custemail");
		String t4 = request.getParameter("Custcity");
String t5 = request.getParameter("Custselect");			
//System.out.println("be fore insert"+t1);
//System.out.println("be fore insert"+t2);
//System.out.println("be fore insert"+t3);
//System.out.println("be fore insert"+t4);
//System.out.println("be fore insert"+t5);
			String query ="insert into delivery.oder values (?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, t1);
			System.out.println("name entered");
			ps.setString(2, t2);
				System.out.println("name entered");
			ps.setString(3, t3);
System.out.println("name entered");
			ps.setString(4, t4);
System.out.println("name entered");
ps.setString(5, t5);
System.out.println("name entered");
			
			int nub=ps.executeUpdate();
//con.commit();
			System.out.println("updated");
	
			ps.close();
		//st.close();

  
   con.close();
    
     
    %>
  <style>
          @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700;900&display=swap');
        .wholebody
        {
            
            position: relative; 
            height: 100vh;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Poppins', sans-serif;
    font-weight: 400;
            
        }
        .wholebody::before
        {
            content: "";
            background-image: url(create-food-website.jpg);
            background-size: cover;
            position: absolute;
            top: 0px;
            right: 0px;
            bottom: 0px;
            left: 0px;
            /* opacity: 1.0; */
      
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
            <a class="navbar-brand" href="#"> <img src="roy.jpg" alt="" width="90" height="34" class="d-inline-block align-text-top">
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
              <div class="container-fluid wholebody">
                <div class="card border-dark border border-white" style="width:25rem; height: 35rem; background-color: black; color: white;">
                  <div class="row mt-2">
                    <div class="col" style="padding-left: 70px; padding-right: 70px; font-size: 1.5rem;">
                      Book Your Order
                    </div>
                  </div>
                  <div class="row mt-2">
                    <div class="col" style="padding-left: 70px; padding-right: 70px;font-size: 1.25rem;">
                      Fill in the data below
                    </div>
                  </div>
                  <hr/>
                  <form action="./for.jsp" method="post">
                    <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                            <input type="name" class="form-control" placeholder="Enter Your Name" name="Custname" >
                        </div>
                      </div>
                      <hr/>
                      <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                            <input type="number" class="form-control" placeholder="Enter Your Phone Number" name="Custphn">
                        </div>
                      </div>
                      <hr/>
                      <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                            <input type="email" class="form-control"placeholder="Enter Your Email" name="Custemail">
                        </div>
                      </div>
                      <hr/>
                      <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                            <input type="text" class="form-control" id="Custcity" placeholder="Enter Your City">
                        </div>
                      </div>
                      <hr/>
                      <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                          <select class="form-control" name="Custselect">
                            <option name="Custselect">Select Your Dish</option>
                            <option name="Custselect">Veg-Biryani - 120/-</option>
                            <option name="Custselect">Egg-Biryani - 130/-</option>
                            <option name="Custselect">Chicken-Biryani - 140/-</option>
                            <option name="Custselect">Mutton-Biryani - 160/-</option>
                            <option name="Custselect">Fish-Biryani - 200/-</option>
                          </select>
                        </div>
                      </div>
                      <hr/>
                      <div class="row mt-2">
                        <div class="col" style="padding-left:70px; padding-right: 70px;">
                            <button type="submit" class="btn btn-primary form-control active">Place Your Order</button>
                          </div>
                       
                      </div>
                  </div>
                </form>
                
              </div>
    </div>

</a>

    </body>
    </html>
