<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");

if (isset($_SESSION['name'])){
    $username = $_SESSION['name'];

}else{
    header('location:./login.php');
    return session_destroy();
}

sql_user_data($db,$username,$user_data);
// var_dump($user_data);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/personal_information.css">
    <title>学生端-个人信息修改</title>
</head>
<body>
<header>
    <!-- 定义导航栏 -->
    <nav id="navbar" class="yying">
        <div class="container">
            <h1>成绩查分系统</h1>
            <h3><?php echo $user_data['name'];?></h3>
            <img src="<?php echo $user_data['image_save'];?>" alt="头像">
            <!-- <a href="#">></a-->
            <div class="menu">
                <input type="checkbox" class="toggler">
                <div class="hamburger">
                    <div></div>
                </div>
                <div class="menu-2">
                    <ul>
                        <li>
                            <ul>
                                <li><a href="home_page.php">首页</a></li>
                                <li><a href="personal_information.php">资料</a></li>
                                <li><a href="modular/exit.php" class="back">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>
<section id="information">
    <div class='container-2'>
        <div class="info-1">
            <img src="<?php echo $user_data['image_save'];?>" alt="头像">
            <div class="name"><h3>姓名:<?php echo $user_data['name'];?></h3></div>
            <div class="class"><h3>班级:<?php echo $user_data['class'];?>班</h3></div>
            <div class="student-number"><h3>学号:<?php echo $username;?></h3></div>
        </div>
        <div class="info-2">
            <h1>&nbsp&nbsp&nbsp&nbsp&nbsp基础信息</h1>
            <!-- div作用就是一条线 -->
            <div class="line"></div>
            <form action="personal_information.php" method="POST" enctype="multipart/form-data">
                <div class="personal-info-1">
                    <label for="name">&nbsp&nbsp&nbsp&nbsp名字:</label>
                    <input type="text" name="name" maxlength="5" id="name" class="input"   placeholder=" <?php echo $user_data['name'];?>">
                </div>
                <div class="personal-info-2">
                    <label for="email">&nbsp&nbsp&nbsp&nbsp邮箱:</label>
                    <input type="email" name="Mailbox" maxlength="32" id="email" class="input" placeholder=" <?php echo $user_data['mailbox'];?>">
                </div>
                <div class="personal-info-3">
                    <label for="phone">手机号:</label>
                    <input type="number" name="Phone" maxlength="16" id="phone" class="input" placeholder=" <?php echo $user_data['phone'];?>">
                </div>
                <div class="personal-info-4">
                    <label for="sfz">身份证:</label>
                    <input type="password" name="ID" maxlength="32" id="sfz" class="input" placeholder=" ******">
                </div>
                <div class="personal-info-5">
                    <label for="image">&nbsp&nbsp&nbsp&nbsp头像:</label>
                    <input type="file" name="image" id="image">
                </div>
                <div class="personal-info-6">
                    <!-- <input type="submit" name="Submit" id="btn-1" value="modify"> -->
                    <button type="submit" class="btn" name="Submit"  id="btn-1" value="modify"><h4>保存</h4></button>
                    <input type="reset" name="btn-2" id="btn-2" value="取消">
                </div>
            </form>
        </div>
        <div class="info-3">
            <h1>&nbsp&nbsp&nbsp&nbsp&nbsp修改密码</h1>
            <!-- div作用就是一条线 -->
            <div class="line"></div>
            <form action="personal_information.php" method="POST" enctype="multipart/form-data">
                <div class="personal-info-4">
                    <label for="jiupassword">&nbsp&nbsp&nbsp&nbsp旧密码:</label>
                    <input type="password" name="UsedPassWord" maxlength="24" id="jiupassword" class="input">
                </div>
                <div class="personal-info-4">
                    <label for="password">&nbsp&nbsp&nbsp&nbsp新密码:</label>
                    <input type="password" name="PassWord" maxlength="24" id="password" class="input">
                </div>
                <div class="personal-info-5">
                    <label for="qrpassword">确认密码:</label>
                    <input type="password" name="QrPassWord" maxlength="24" id="qrpassword" class="input">
                </div>
                <div class="personal-info-6">
                    <!-- <input type="submit" name="Submit" id="btn-1" value="modify_password"> -->
                    <button type="submit" class="btn" name="Submit"  id="btn-1" value="modify_password"><h4>修改</h4></button>
                    <input type="reset" name="btn-2" id="btn-2" value="取消">
                </div>
            </form>
        </div>
    </div>
</section>
<footer id="main-footer">
    <p>成绩查分系统 &copy; 2022,ALL Rights Reserved</p>
</footer>
</body>
</html>
<?php
if (isset($_POST['Submit']) && $_POST['Submit'] == 'modify_password') {

    $password = $_POST['PassWord'];     //密码
    $used_password = $_POST['UsedPassWord'];

    if (isset($password) && isset($_POST['QrPassWord'])) {
        if ($password != $_POST['QrPassWord']) {
            return $alert('密码不一致!');
        }
        if (input_login_password_check($password, $alert) && input_login_password_check($used_password, $alert)) {
            $password = md5($password);
            $used_password = md5($used_password);
            sql_modify_password($db, $username, $used_password, $password, $alert);
        } else {
            return;
        }
    }
}

if (isset($_POST['Submit']) && $_POST['Submit'] == 'modify') {

    $name = $_POST['name'];                         //姓名
    $phone = $_POST['Phone'];                       //手机
    $id = strtolower($_POST['ID']);                 //身份证
    $mailbox = strtolower($_POST['Mailbox']);       //邮箱
    $image = $_FILES["image"];                  //图片

    //检查图片
    if (is_uploaded_file($image['tmp_name']) && $image['type'] = 'image/jpeg' && $image['size'] <= 2048000) {
        $image_save = 'user_images/' . $user_data['name'] . $username . '.jpeg';  //保存路径
        sql_die_modify_image($db,$username);
        if (mkThumbnail($image['tmp_name'], '500', '500', $image_save, $alert)) {
            sql_modify_image($db,$username,$image_save);
        }else{return session_destroy();}
    }

    if (!empty($name)) {
        if (input_Registration_name_check($name,$alert)){
            sql_modify_name($db,$username,$name);
        }else{return $alert('名字修改失败');}
    }

    if (!empty($mailbox)) {
        if (input_Registration_mailbox_check($mailbox,$alert)){
            sql_modify_mailbox($db,$username,$mailbox);
        }else{return $alert('邮箱修改失败');}
    }

    if (!empty($phone)) {
        if (input_Registration_phone_check($phone,$alert)){
            sql_modify_phone($db,$username,$phone);
        }else{return $alert('手机号修改失败');}
    }

    if (!empty($id)) {
        if (input_Registration_id_check($id,$alert)){
            sql_modify_id($db,$username,$id);
        }else{return $alert('身份证修改失败');}
    }
}
?>