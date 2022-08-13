<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");

//检查登录
if (isset($_SESSION['teacher'])){
    $teacher_ID = $_SESSION['teacher'];
} else{
    header('location:./login_teacher.php');
    return session_destroy();
}

if (empty($teacher_result)){
    sql_teacher_result_data($db,$teacher_ID,$teacher_result);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/teacher-4.css">

    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <title>学生录入</title>
</head>
<body>
<header>
    <!-- 定义导航栏 -->
    <nav id="navbar" class="yying">
        <div class="container">
            <h3><?php echo $teacher_result['name'];?></h3>
            <img src="<?php echo $teacher_result['image_save'];?>" alt="头像">
            <div class="menu">
                <input type="checkbox" class="toggler">
                <div class="hamburger">
                    <div></div>
                </div>
                <div class="menu-2">
                    <ul>
                        <li>
                            <ul>
                                <li><a href="modular/exit.php" class="back">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>
<!-- 左导航栏 -->


<section id="navbar-left">
    <div class="container-2">
        <div class="title">
            <h3>成绩查分系统</h3>
            <div class="line"></div>
        </div>
        <div class="catalogue">
            <a href="Teacher_page.php"><i class="fa fa-id-card" aria-hidden="true"></i>&nbsp;成绩管理</a>
            <a href="Teacher_2.php"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;成绩录入</a>
            <a href="Teacher_3.php"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;学生列表</a>
            <a href="Teacher_4.php" class="module-1"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;学生录入</a>
        </div>
    </div>
</section>

<section id="main">
    <div class="container-3">
        <form action="Teacher_4.php" method="POST">
            <div class="xueke">
                <div class="xueke-1">
                    <div class="info-1">
                        <label for="info-1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp学号:</label>
                        <input type="text" name='Student' maxlength="16" >
                    </div>
                    <div class="info-2">
                        <label for="password">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp密码:</label>
                        <input type="password" name='PassWord' maxlength="24" id="password" >
                    </div>
                    <div class="info-2">
                        <label for="password">确认密码:</label>
                        <input type="password" name="QrPassWord" maxlength="32">
                    </div>
                    <div class="info-3">
                        <label for="info-3">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp姓名:</label>
                        <input type="text" name='name' maxlength="5" >
                    </div>
                    <div class="info-4">
                        <label for="phone">&nbsp&nbsp&nbsp&nbsp手机号:</label>
                        <input type="number" name='Phone' maxlength="16"" >
                    </div>
                    <div class="info-5">
                        <label for="email">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp邮箱:</label>
                        <input type="email" name='Mailbox' maxlength="32">
                    </div>
                    <div class="info-6">
                        <label for="sfz">&nbsp&nbsp&nbsp&nbsp身份证:</label>
                        <input type="password" name='ID' >
                    </div>
                    <div class="info-7">
                        <label for="class">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp班级:</label>
                        <select name="class" id="class">
                            <option value="<?php echo $teacher_result['class'] ?>"><?php echo $teacher_result['class'] ?>班</option>
                        </select>
                    </div>
                </div>
                <div class="xueke-3">
                    <input class="btn-1" type="submit" name="xueqi-info" value="添加">
                    <input class="btn-2" type="reset" name="xueqi-info" value="重置">
                </div>
            </div>
        </form>
    </div>
</section>
</body>
</html>
<?php
if (isset($_POST['xueqi-info'])) {

    $password = $_POST['PassWord'];     //密码
    $name = $_POST['name'];                         //姓名
    $phone = $_POST['Phone'];                       //手机
    $id = strtolower($_POST['ID']);                 //身份证
    $mailbox = strtolower($_POST['Mailbox']);       //邮箱
    $username = $_POST['Student'];          //学号
    $class =  $teacher_result['class'];     //班级
    $image_save = 'user_images/Default_Avatar.jpeg';

    if ($password != $_POST['QrPassWord']) {
        session_destroy();
        return $alert('密码不一致!');
    }

    //过滤
    if (input_login_username_check($username,$alert) && input_login_password_check($password,$alert) && input_Registration_name_check($name,$alert) && input_Registration_phone_check($phone,$alert) && input_Registration_id_check($id,$alert) && input_Registration_mailbox_check($mailbox,$alert) && input_Registration_class_check($class,$alert)) {
        $password = md5($password);

        //写入注册数据
        sql_Registration_check($db,$username,$password,$name,$phone,$id,$mailbox,$image_save,$class,$alert);
        Behavior_record($db,$teacher_ID,$teacher_result['name'],'录入',$username,'账户',$teacher_result['class']);
    }else{
        return;
    }
}
?>