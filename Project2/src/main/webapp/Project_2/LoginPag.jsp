<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>

    <title>EveryWare</title>
    <link rel="stylesheet" href="../css/style.css" />
  </head>
  <body>
    <header>
      <h2 class="logo">EveryWare</h2>
      <nav class="navigation">
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Service</a>
        <a href="#">Contact</a>
        <button class="btnLogin-popup">Login</button>
      </nav>
    </header>

    <div class="wrapper">
      <span class="icon-close"><ion-icon name="close-outline"></ion-icon></span>
      <div class="form-box login">
        <h2>Login</h2>
        <form action="HomePage.jsp">
          <div class="input-box">
            <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
            <input type="emil" required />
            <label for="">아이디</label>
          </div>

          <div class="input-box">
            <span class="icon"
              ><ion-icon name="lock-closed-outline"></ion-icon
            ></span>
            <input type="password" required />
            <label for="">비밀번호</label>
          </div>
          <div class="remember-forgot">
            <label><input type="checkbox" />아이디 저장</label>
          </div>
          <button type="submit" class="btn">Login</button>
          <div class="login-register">
            <p><a href="#" class="register-link">회원가입</a></p>
          </div>
        </form>
      </div>

      <div class="form-box register">
        <h2>Registration</h2>
        <form action="#">
          <div class="input-box">
            <span class="icon"
              ><ion-icon name="person-outline"></ion-icon
            ></span>
            <input type="emil" required />
            <label for="">이 름</label>
          </div>

          <div class="input-box">
            <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
            <input type="emil" required />
            <label for="">아이디</label>
          </div>

          <div class="input-box">
            <span class="icon"
              ><ion-icon name="lock-closed-outline"></ion-icon
            ></span>
            <input type="password" required />
            <label for="">비밀번호</label>
          </div>

          <div class="input-box">
            <span class="icon"
              ><ion-icon name="business-outline"></ion-icon
            ></span>
            <input type="password" required />
            <label for="">사번</label>
          </div>

          <div class="input-box">
            <span class="icon"
              ><ion-icon name="calendar-number-outline"></ion-icon
            ></span>
            <input type="password" required />
            <label for="">입사일</label>
          </div>
          <div class="remember-forgot"></div>
          <button type="submit" class="btn">Register</button>
          <div class="login-register">
            <p><a href="#" class="login-link">로그인</a></p>
          </div>
        </form>
      </div>
    </div>
    <script src="../js/Loginscript.js"></script>
  </body>
</html>
