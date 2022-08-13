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
    <link rel="stylesheet" href="css/style.css">
    <title>注册页面</title>
</head>
<body>
<div id="container">
    <div class="zhuce">
        <h1 class="h1-2">注册</h1>
        <a href="login.php" class="back"><h4>< 返回</h4></a>
        <form action="Registration_page.php" method="POST" enctype="multipart/form-data">
            <div class="zhuce-1">
                <input type="text" placeholder="学号" name="Student" maxlength="16">
            </div>
            <div class="zhuce-1">
                <input type="text" placeholder="班级" name="class" maxlength="4">
            </div>
            <div class="zhuce-1">
                <input type="password" placeholder="密码" name="PassWord" maxlength="24">
            </div>
            <div class="zhuce-1">
                <input type="password" placeholder="确认密码" name="QrPassWord" maxlength="24">
            </div>
            <div class="zhuce-1">
                <input type="text" placeholder="手机号" name="Phone" maxlength="16">
            </div>
            <div class="zhuce-1">
                <input type="password" placeholder="身份证号" name="ID" maxlength="32">
            </div>
            <div class="zhuce-1">
                <input type="email" placeholder="邮箱" name="Mailbox" maxlength="32">
            </div>
            <div class="zhuce-2">
                <input type="text" placeholder="姓名" name="name" maxlength="5">
            </div>
            <div class="zhuce-3">
                头像 <input type="file"  name="image">
            </div>
            <div class="zhuce-4">
                <input type="text" placeholder="验证码" name="authcode" maxlength="4" >
                <img id="captcha_img" src='modular/captcha.php?r=echo rand(); ?>' style="width:160px; height:40px" title="点击更改验证码" onclick="document.getElementById('captcha_img').src='modular/captcha.php?r='+Math.random()"/>
            </div>
            <!-- 清除浮动 -->
            <div style="clear:both"></div>
            <div class="zhuce-5">
                <button type="submit" name="Submit" value="register"><h3>注册</h3></button>
            </div>
            <div class="zhuce-6">
                <button type="reset" name="btn-3"><h3>重置</h3></button>
            </div>
        </form>
    </div>

</div>
</body>
</html>
<?php
if (isset($_POST['Submit']) && $_POST['Submit'] == 'register') {
    if (!authcode($_POST['authcode'], $alert)) {     //验证码检查函数
        return session_destroy();
    }

    $password = $_POST['PassWord'];     //密码
    $name = $_POST['name'];                         //姓名
    $phone = $_POST['Phone'];                       //手机
    $id = strtolower($_POST['ID']);                 //身份证
    $mailbox = strtolower($_POST['Mailbox']);       //邮箱
    $image = $_FILES["image"];                  //图片
    $username = $_POST['Student'];          //学号
    $class = $_POST['class'];   //班级

    if ($password != $_POST['QrPassWord']) {
        session_destroy();
        return $alert('密码不一致!');
    }

    //过滤
    if (input_login_username_check($username,$alert) && input_login_password_check($password,$alert) && input_Registration_name_check($name,$alert) && input_Registration_phone_check($phone,$alert) && input_Registration_id_check($id,$alert) && input_Registration_mailbox_check($mailbox,$alert) && input_Registration_class_check($class,$alert)) {
        $password = md5($password);
        //检查图片
        if (is_uploaded_file($image['tmp_name']) && $image['type'] = 'image/jpeg' && $image['size'] <= 2048000) {
            $image_save = 'user_images/' . $name . $username . '.jpeg';  //保存路径
            if (!mkThumbnail($image['tmp_name'], '500', '500', $image_save, $alert)) {
                return session_destroy();
            }
        } else {
            $image_save = 'user_images/Default_Avatar.jpeg';
        }
        //写入注册数据
        sql_Registration_check($db,$username,$password,$name,$phone,$id,$mailbox,$image_save,$class,$alert);
    }else{
        return session_destroy();
    }
}
?>