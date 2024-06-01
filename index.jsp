<!DOCTYPE html>
<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<%@page import = "java.util.Random"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <!--cookie--> 
    <div class="cookie" id="cookie"><p style="margin:20px;">請允許我們使用cookie</p>
    <button>同意</button>
    <button>拒絕</button>
    </div>
    <nav>
        <a href="index.html"><img src="img/logo.png" alt="logo" style="width: 130px;position:absolute;top: 15px;left: 10px;"></a>
        <a href="#">植栽</a>
        <a href="#">栽問</a>
        <a href="#">植百科</a>
        <a href="#">關於</a>
        <div class="user">
            <button class="user"><img src="img/user.png" alt="user" onclick="openLoginForm()"></button>
        </div>
<!-------------user 跳出視窗(login.html)-------------------->
        <div id="loginForm" class="modal">
            <form class="modal-content animate" action="/action_page.php">
                <span class="close" onclick="closeLoginForm()">&times;</span>
                <div class="container">
                    <label for="uname"><b>帳號</b></label>
                    <input type="text" placeholder="請輸入帳號" name="uname" required>

                    <label for="psw"><b>密碼</b></label>
                    <input type="password" placeholder="請輸入密碼" name="psw" required>
                        
                    <button type="submit">登入</button>
                </div>


            </form>
        </div>

    <script>
        function openLoginForm() {
        document.getElementById("loginForm").style.display = "block";
        }

        function closeLoginForm() {
            event.preventDefault();
            document.getElementById("loginForm").style.display = "none";
        }

    </script>
<!-------------user 跳出視窗(login.html)-------------------->
        <div class="cart">   
            <button class="cart"><img src="img/cart.png" alt="user"></button>
        </div>
        <div class="search">
            <form><input class="search-button" type="image" src="img/search.png"  alt="send" name="searchbutton" id="searchbutton"></form>
            <input class="search-bar" type="text" name="search" id="search" placeholder="在此輸入" style="width: 150px;">
        </div>
    </nav>
    <main>      
        <section class="ad">
			<%String text = "植管人優惠開跑啦~ 全「管」商品滿千送百!只要消費666即可享免運!!心動不如馬上行動!"; %>
            <marquee><%= text %></marquee>
		
			<%
			String[] imgFiles = {"ad01.jpg", "ad02.jpg","ad03.jpg"};
			Random rand = new Random();
			int randomNumber = rand.nextInt(imgFiles.length);
			request.setAttribute("img", imgFiles);
			request.setAttribute("randomNumber", randomNumber);
			%>

			<%
			String[] img = (String[]) request.getAttribute("img");
			%>
            <img src="img/<%= img[randomNumber] %>" width="40%" height="60%">
			
			
			
			
        </section>
        <section class="series">
            <img src="img/plantseries1.png" alt="plantseries1" style="width: 100%;">
            <img src="img/plantseries2.png" alt="plantseries2" style="width: 100%;">
            <img src="img/plantseries3.png" alt="plantseries3" style="width: 100%;">
            <img src="img/plantseries4.png" alt="plantseries4" style="width: 100%;">
            <img src="img/plantseries5.png" alt="plantseries5" style="width: 100%;">
            <img src="img/plantseries6.png" alt="plantseries6" style="width: 100%;">
        </section>
        <section class="recommend" style="background-color:rgb(215, 215, 215) ;">
            <p>推薦商品</p>
        </section>
    </main>
    <footer>
        <div><p style="font-size: 24px;">常見問題</p><br><a href="#">會員管理</a><br><a href="#">照顧方法</a><br><a href="#">超商/宅配</a><br><a href="#">退換貨說明</a> </div>
        <div><p style="font-size: 24px;">品牌名稱</p><br><a href="#">我們的故事</a><br><a href="#">植物大哉問</a></div>
        <!--品牌名稱改-->
        <div class="contact"><p style="font-size: 24px;">聯絡我們</p> 
        <br><a href="#"><img src="img/ig.png" alt="ig"></a><a href="#"><img src="img/fb.png" alt="fb"></a><a href="#"><img src="img/line.png" alt="line"></a><a href="#"><img src="img/gmail.png" alt="gmail"></a>
        <p style="font-size: 17px;">客服電話 : 0800-800800 <br>服務時間：週一至週五 09:00-18:00</p> 
        </div> 
        <h5>2024 版權所有</h5><br>
		
		<%
  int counter=0;
  String strNo="";
  
  if (application.getAttribute("counter")==null){
	  application.setAttribute("counter", "1000"); 
  }
  else{
  
  strNo = (String)application.getAttribute("counter");
  counter = Integer.parseInt(strNo); 
  if (session.isNew())
  counter++;                                       
  strNo = String.valueOf(counter);    
  application.setAttribute("counter", strNo);
  }

%>
		<h3>你是第<%= counter %>位造訪的貴賓!</h3>
    </footer>
</body>
</html>