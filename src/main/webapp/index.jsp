
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException, java.sql.DriverManager" %>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Page</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Cala</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <!-- @import url("https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap"); -->
    <link rel="stylesheet" href="style.css">
<style>
@import url("https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap");

#offCanvasCart {
            position: fixed;
            top: 0;
            right: -400px;
            width: 300px;
            height: 100%;
            background-color: #fff;
            box-shadow: -4px 0 10px rgba(0, 0, 0, 0.2);
            transition: 0.3s ease;
            overflow-y: auto;
            z-index: 1000;
            padding: 20px;
        }
        #offCanvasCart.open {
            right: 0;
        }
        #offCanvasCart h3 {
            margin-bottom: 20px;
        }
        #offCanvasCart .cart-item {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        #offCanvasCart .cart-item img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
        }
        #offCanvasCart .cart-item h5 {
            flex-grow: 1;
        }
        #offCanvasCart .cart-item h4 {
            margin: 0;
        }

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Spartan', sans-serif;
}

h1{
    font-size: 50px;
    line-height: 64px;
    color: #222;
}

h2{
    font-size: 46px;
    line-height: 54px;
    color: #222;
}

h3{
    font-size: 30px;
    line-height: 44px;
    color: #222;
}

h4{
    font-size: 20px;
    color: #222;
}

h6{
    font-weight: 700;
    font-size: 12px;
}

p{
    font-size: 16px;
    color: #465b52;
    margin: 15px 0 20px 0;
}

.section-p1{
    padding: 40px 80px;
}

.section-m1{
    padding: 40px 40px 40px 40px;
}

button.normal{
    font-size: 14px;
    font-weight: 600;
    padding: 15px 30px;
    color: black;
    background-color: white;
    border-radius: 4px;
    cursor: pointer;
    border: none;
    outline: none;
    transition: 0.2s;
}

body{
    width: 100%;
}

/* Header Start */

#header{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 80px;
    background: #E3E6F3;
    box-shadow: 0 5px 15px rgb(o, o, o , o.06);
    z-index: 999;
    position: sticky;
    top: 0;
    left: 0;
}

#navbar {
    display: flex;
    align-items: center;
    justify-content: center;
}

#navbar li{
    list-style: none;
    padding: 0 20px;
}

#navbar li a{
    text-decoration: none;
    font-size: 16px;
    font-weight: 600;
    color: #1a1a1a;
    transition: 0.3s ease;
}

#navbar li a:hover{
    color: #088178;
}

/* Home Page */
#hero{
    background-image: url("img/hero4.png");
    height: 91vh;
    width: 100%;
    background-size: cover;
    background-position: top 25% right 0;
    padding: 0 80px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
}

#hero h4{
    padding-bottom: 15px;
}

#hero h1{
    color: #088178;
}

#hero button{
    background-image: url("img/button.png");
    background-color: transparent;
    color: #088178;
    border: 0;
    padding: 14px 80px 14px 65px;
    background-repeat: no-repeat;
    cursor: pointer;
    font-weight: 700;
    font-size: 15px;
}

#feature{
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
    padding-top: 50px;
    padding-bottom: 50px;
}

#feature .fe-box{
    width: 180px;
    text-align: center;
    padding: 25px 15px;
    box-shadow: 20px 20px 34px rgba(0, 0, 0, 0.03);
    border: 1px solid #ccc7d0;
    border-radius: 4px;
    margin: 15px 0;
}

#feature .fe-box h6{
    margin-top: 10px;
    padding: 9px 8px 6px 8px;
    line-height: 1;
    border-radius: 4px;
    color: #088178;
    background-color: #fddde4;
}

#product1{
    text-align: center;
}

#product1 .pro-container {
    display: flex;
    justify-content: space-between;
    padding: 20px;
    flex-wrap: wrap;
}

#product1 .pro {
    width: 23%;
    min-width: 250px;
    padding: 10px 12px;
    border: 1px solid #cce7d0;
    border-radius: 20px;
    margin: 15px 0;
    position: relative;
}

#product1 .pro img {
    width: 100%;
    border-radius: 20px;
}

#product1 .pro .des {
    text-align: start;
    padding: 10px 0;
    padding-bottom: 10px;
}

#product1 .pro .des span {
    color: #606063;
    font-size: 12px;
}

#product1 .pro .des h5 {
    padding-top: 7px;
    padding-bottom: 7px;
    color: #1a1a1a;
    font-size: 13px;
}

#product1 .pro .des .star {
    color: rgb(243, 181, 25);
    font-size: 12px;
    padding-bottom: 7px;
}

#product1 .pro .des h4 {
    padding-top: 7px;
    color: #088178;
    font-size: 15px;
}

#product1 .pro .cart {
    width: 40px;
    height: 40px;
    line-height: 40px;
    border-radius: 50px;
    background-color: #e8f6ea;
    font-weight: 700;
    color: #088178;
    position: absolute;
    bottom: 20px;
    right: 10px;
}

#banner{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    background-image: url("img/banner/b2.jpg");
    width: 100%;
    height: 40vh;
    background-size: cover;
    background-position: center;
}

#banner h4{
    color: #fff;
    font-size: 14px;
}

#banner h2{
    color: #fff;
    font-size: 30px;
    padding: 10px 0;
}

#banner span{
    color: red;
}

#sm-banner {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    padding: 0 90px;
}

#sm-banner .banner-box {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    background-image: url("img/banner/b17.jpg");
    height: 400px;
    min-width: 48%;
    background-size: cover;
    background-position: center;
    padding: 30px;
    margin-bottom: 20px;
}

#sm-banner .banner-box2{
    background-image: url("img/banner/b10.jpg");
}

#sm-banner h4{
    color: white;
    font-size: 20px;
    font-weight: 300;
}

#sm-banner h2{
    color: white;
    font-size: 28px;
    font-weight: 800;
}

#sm-banner span{
    color: white;
    font-size: 16px;
    font-weight: 300;
    padding-bottom: 15px;
}

#banner3 .banner-box {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
    background-image: url("img/banner/7.jpg");
    height: 400px;
    min-width: 48%;
    background-size: cover;
    background-position: center;
    padding: 30px;
    margin-bottom: 20px;
}

footer {
    display:flex;
    flex-wrap:wrap;
    justify-content: space-between;
}

footer .Col {
    display:flex;
    flex-direction:column;
    align-items: flex-start;
    margin-bottom: 20px;
}

footer .logo{
    margin-bottom: 30px;
}

footer h4{
    font-size: 14px;
    padding-bottom: 20px;
}

footer p{
    font-size: 13px;
    margin: 0 0 8px 0;
}

footer a{
    font-size: 13px;
    text-decoration: none;
    color: black;
    margin-bottom: 10px;
}

footer .install .row inmg{
    border: 1px solid #088178;
    border-radius: 6px;
}

footer .install img{
    margin: 10px 0 10px 0;
}
</style>
</head>

<body>
    <script src="main.js"></script>
      
    <section id="header">
        <a href="index.html"><img src="img/logo.png" class="logo" alt=""></a>

        <div>
            <ul id="navbar">
                <li><a class="active" href="index.html">Home</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="cart.html"><i class="fa fa-shopping-bag" aria-hidden="true"></i>                </a></li>
					
                <li><a href="logout">Logout</a></li>
                <li class="nav-item mx-0 mx-lg-1 bg-danger"><a
                    class="nav-link py-3 px-0 px-lg-3 rounded" href="index.jsp"><%=session.getAttribute("name") %></a></li>
            </ul>
        </div>
    </section>
    
    
 
    <section id="hero">
        <h4>Trade-in-offer</h4>
        <h2>Super value deals</h2>
        <h1>On all produts</h1>
        <p>Save more with coupons & up to 70% off! </p>
        <button>Shop Now</button>
    </section>

    <section id="feature" class="section-p1">
        <div class="fe-box">
            <img src="img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f2.png" alt="">
            <h6>Online Order</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f3.png" alt="">
            <h6>Save Money</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f4.png" alt="">
            <h6>Promotion</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f5.png" alt="">
            <h6>Happy Sell</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f6.png" alt="">
            <h6>Support</h6>
        </div>
    </section>
    
   <section id="product1" class="section-p1">
    <h2>Featured Products</h2>
    <p>Summer Collection New Modern Design</p>
    <div class="pro-container">
        <%
            // JDBC connection details
            String jdbcURL = "jdbc:mysql://localhost:3306/youtube?useSSL=false";
            String dbUser = "root";
            String dbPassword = "admin";

            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Connect to the database
                con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

                // Query to fetch products
                String query = "SELECT itemName, description, itemImage, price FROM products";
                pst = con.prepareStatement(query);
                rs = pst.executeQuery();

                // Loop through the result set
                while (rs.next()) {
                    String itemName = rs.getString("itemName");
                    String description = rs.getString("description");
                    String itemImage = rs.getString("itemImage");
                    double price = rs.getDouble("price");
            %>
                <div class="pro" data-item-name="<%= itemName %>" data-description="<%= description %>" data-item-image="<%= itemImage %>" data-price="<%= price %>">
                    <img src="<%= itemImage %>" alt="<%= itemName %>">
                    <div class="des">
                        <span><%= description %></span>
                        <h5><%= itemName %></h5>
                        <div class="star">
                            <li class="fas fa-star"></li>
                            <li class="fas fa-star"></li>
                            <li class="fas fa-star"></li>
                            <li class="fas fa-star"></li>
                            <li class="fas fa-star"></li>
                        </div>
                        <h4>$<%= price %></h4>
                    </div>
                    <a href="javascript:void(0);" class="add-to-cart"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
        %>
                <p>Error loading products. Please try again later.</p>
        <%
            } finally {
                // Close resources
                if (rs != null) try { rs.close(); } catch (SQLException ignored) {}
                if (pst != null) try { pst.close(); } catch (SQLException ignored) {}
                if (con != null) try { con.close(); } catch (SQLException ignored) {}
            }
        %>
    </div>
</section>
   
    <section id="banner" class="section-m1">
    	<h4>Repair Services</h4>
    	<h2>Up to <span>70% off</span> _All t-shirts % accessories</h2>
    	<button class="normal">Explore More</button>
    </section>

    <section id="sm-banner" style="margin-top: 100px;">
    <div class="banner-box">
        <h4>Crazy Deals</h4>
        <h2>Buy 1 Get 1 Free</h2>
        <span>The best deals</span>
        <button class="normal">Learn More</button>
    </div>
    <div class="banner-box banner-box2">
        <h4>Spring Summer</h4>
        <h2>Upcoming Summer</h2>
        <span>The best deals</span>
        <button class="normal">Learn More</button>
    </div>
    </section>

    <footer class="section-p1">
        <div class="col">
            <img class="logo" src="img/logo.png" alt="">
            <h4>Contact</h4>
            <p><strong>Address</strong> : No/45 Flower Road Colombo 7</p>
            <p><strong>Phone</strong> : +94705044899 / +94705044899</p>
            <p><strong>Hours</strong> : 10.00 am - 18 pm</p>
        </div>

        <div class="col">
            <h4>Quick Links</h4>
            <ul style="list-style-type: none; margin: 0; padding: 0;">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Term & Condition</a></li>
            </ul>
        </div>

        <div class="col">
            <h4>About Us</h4>
            <ul style="list-style-type: none; margin: 0; padding: 0;">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Term & Condition</a></li>
            </ul>
        </div>

        <div class="col install">
    		<h4>Install App</h4>
    		<p>From app store or google store</p>
    		<div class="row">
       			 <img src="img/pay/app.jpg" style="border: 2px solid #088178; border-radius: 8px;">
        		<img src="img/pay/play.jpg" style="border: 2px solid #088178; border-radius: 8px;">
    		</div>
    		<p>Secure payment gateway</p>
    		<img src="img/pay/pay.png">
		</div>

    </footer>

</body>
</html>