<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* 定义全局样式 */
        *{
            margin:0px;
            padding:0px;
            /* 设置为怪异盒子的原因是避免padding的值影响到div盒子的大小 */
            box-sizing:border-box;
        }
        body{
            font-family: Arial, Helvetica, sans-serif;
            line-height:1.8;
            background:#dddfe2;
        }

        /* 通用样式 */
        input{
            outline: none ;
            border-style:none;
            background:#f6f7f8;
            border-bottom: #797979 3px solid;
        }
        input:hover{
            border-bottom-color:#333;
        }

        /* 定义登录款 */
        .container{
            margin: 100px auto;
            max-width: 380px;
            padding:20px;
            height:400px;
            background:#f6f7f8;
            border-radius: 20px;
            box-shadow:
                    6.1px 5px 2.7px rgba(0, 0, 0, 0.036),
                    15.4px 12.7px 6.9px rgba(0, 0, 0, 0.041),
                    31.4px 25.9px 14.2px rgba(0, 0, 0, 0.042),
                    64.6px 53.3px 29.2px rgba(0, 0, 0, 0.042),
                    177px 146px 80px rgba(0, 0, 0, 0.05)
        ;
        }
        h2{
            color:#454545;
            text-align: center;
            margin-bottom:30px;
        }

        .container .login-1 input{
            display:block;
            margin:15px 0px;
            height:35px;
            width:260px;
            margin-left: 42px;
            font-weight: 550;
            padding-left: 10px;
        }
        .container .login-2 input{
            display:block;
            margin:12px 0px;
            height:35px;
            width:120px;
            margin-left: 42px;
            float:left;
            font-weight: 550;
            padding-left: 10px;
            margin-right: 5px;
        }
        .container .login2 img{
            display:block;
            float:left;
            width:20px;

        }
        .container .login-3 button{
            width:260px;
            height:42PX;
            display:block;
            margin:28px 0px;
            margin-left: 42px;
            background:#27292b;
            color:#fff;
            border:none;
            border-radius: 5px;
        }
        .container .login-3 button:hover{
            background:#27292bd7;
            transition: all 0.3s ease;
        }

/* 定义响应式布局 */
        @media (min-width:1650px){
            .container{
            margin: 190px auto;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div calss="wrap">
        <h2>成绩查分系统-后台</h2>
        <form action="login_teacher.php" method="POST">
            <div class="login-1">
                <input type="text"  name="name" placeholder="&nbsp账户" maxlength="16">
            </div>
            <div class="login-1">
                <input type="password"  name="password" placeholder="&nbsp密码" maxlength="24">
            </div>
            <div class="login-2">
                <input type="text"  name="authcode" placeholder="&nbsp验证码" maxlength="4">
                <img id="captcha_img" src='modular/captcha.php?r=echo rand(); ?>' style="width:135px; height:45px" title="点击更改验证码" onclick="document.getElementById('captcha_img').src='modular/captcha.php?r='+Math.random()"/>
            </div>
            <div class="login-3">
                <button tyep="Submit" class="btn" name="Submit" value="Login_teacher"><h3>登录</h3></button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
<?php
if (isset($_POST['Submit']) && $_POST['Submit'] == 'Login_teacher') {
    if (!authcode($_POST['authcode'], $alert)) {     //验证码检查函数
        return session_destroy();
    }

    $username = $_POST['name'];     //账号
    $password = $_POST['password'];     //密码

    if (input_login_username_check($username, $alert) && input_login_password_check($password, $alert)) { //登录过滤
        $password = md5($password);
        if(sql_login_teacher_check($db,$username,$password,$alert)){
            $_SESSION['teacher'] = $username;
            header('location:teacher_page.php');
        }else{
            return session_destroy();
        }
    }else{
        return session_destroy();
    }
}
?>