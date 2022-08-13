<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");   //设置网站字符编码

if (isset($_COOKIE['name']) && isset($_COOKIE['password'])) {
    $username = cookie_base64($_COOKIE['name'], 1);
    $password = cookie_base64($_COOKIE['password'], 1);
    if (input_login_username_check($username,$alert) && input_login_password_check($password,$alert) && sql_login_check($db, $username, $password, $alert)) {
        $_SESSION['name'] = $username;
        return header('location:./home_page.php');
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>登录页面</title>

</head>
<body>
<div id="container">
    <div class="login">
        <h1>成绩查分系统</h1>
        <form action="login.php" method="POST" enctype="multipart/form-data">
            <div class="login-1">
                <input type="text" placeholder="学号" name="Student" maxlength="16">
            </div>
            <div class="login-1">
                <input type="password" placeholder="密码" name="PassWord" maxlength="24">
            </div>
            <div class="login-2">
                <input type="text" placeholder="验证码" name="authcode" maxlength="4">
                <img id="captcha_img" src='modular/captcha.php?r=echo rand(); ?>' style="width:160px; height:40px" title="点击更改验证码" onclick="document.getElementById('captcha_img').src='modular/captcha.php?r='+Math.random()"/>
            </div>
            <!-- 清除浮动 -->
            <div style="clear:both"></div>
            <div class="login-3">
                <button type="submit" class="btn" name="Submit" value="Login"><h3>登录</h3></button>
            </div>
            <div class="login-4">
                <a href="Registration_page.php" class="login-5">用户注册</a>
                <a href="Password_retireva.php" class="login-6">忘记密码?</a>
                <div class="jzw">
                    记住我 <input type="checkbox" name="auto" class="auto"  title="记得我">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
<?php
if (isset($_POST['Submit']) && $_POST['Submit'] == 'Login'){
    if (!authcode($_POST['authcode'], $alert)) {     //验证码检查函数
        return session_destroy();
    }

    $username = $_POST['Student'];  //学号
    $password = $_POST['PassWord'];     //密码

    if (input_login_username_check($username,$alert) && input_login_password_check($password,$alert)){ //登录过滤
        $password = md5($password);
        if (sql_login_check($db,$username,$password,$alert)) {  //登陆检查
            if (isset($_POST['auto'])) {//如果勾选了自动登陆
                $_COOKIE['name'] = '';
                $_COOKIE['password'] = '';

                setcookie('name', cookie_base64($username), time() + 7200,'/');//设置cookie过期时间为2h
                setcookie('password', cookie_base64($password), time() + 7200,'/');

                $_SESSION['name'] = $username;
                header('location:./home_page.php');

            } else {//没有勾选自动登陆

                $_SESSION['name'] = $username;
                header('location:./home_page.php');
            }
        }else{
            return session_destroy();
        }
    }else{
        return session_destroy();
        }
}
?>