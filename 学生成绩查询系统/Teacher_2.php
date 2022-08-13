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

$student_achievement = array('11_student_achievement' => '2019年秋季期','12_student_achievement' => '2020年春季期','21_student_achievement' => '2020年秋季期','22_student_achievement' => '2021年春季期','31_student_achievement' => '2021年秋季期','32_student_achievement' => '2022年春季期');

if (!empty($_GET['xueqi'])){
    $semester = $_GET['xueqi'];     //学期赋值
    input_login_password_check($semester, $alert);
    $_SESSION['xueqi'] = $semester;
    $results = $student_achievement[$semester];     //显示学期
}elseif (isset($_SESSION['xueqi'])) {
    $semester = $_SESSION['xueqi'];     //学期赋值
    $results = $student_achievement[$semester];     //显示学期
}else{
    $semester = '11_student_achievement';
    $_SESSION['xueqi'] = $semester;
    $results = $student_achievement[$semester];     //显示学期
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/teacher-2.css">

    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <title>成绩录入</title>
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
            <a href="Teacher_2.php" class="module-1"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;成绩录入</a>
            <a href="Teacher_3.php"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;学生列表</a>
            <a href="Teacher_4.php"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;学生录入</a>
        </div>
    </div>
</section>

<section id="main">
    <div class="container-3">
        <form action="Teacher_2.php" method="POST">
            <div  class="search">
                <label for="xueqi">学期:</label>
                <select name="xueqi" >
                    <option value="<?php echo $semester;?>"><?php echo $results;?></option>
                    <option value="11_student_achievement">2019年秋季期</option>
                    <option value="12_student_achievement">2020年春季期</option>
                    <option value="21_student_achievement">2020年秋季期</option>
                    <option value="22_student_achievement">2021年春季期</option>
                    <option value="31_student_achievement">2021年秋季期</option>
                    <option value="32_student_achievement">2022年春季期</option>
                </select>
                <label for="name">学号:</label>
                <input class="value-1" type="text"  name='Modify_grades' maxlength="16">

            </div>
            <div class="xueke">
                <div class="xueke-1">
                    <div class="info-1">
                        <label for="info-1">语文:</label>
                        <input type="text" name='language' maxlength="3">
                    </div>
                    <div class="info-2">
                        <label for="info-2">数学:</label>
                        <input type="text" name='mathematicse' maxlength="3">
                    </div>
                    <div class="info-3">
                        <label for="info-3">英语:</label>
                        <input type="text" name='English' maxlength="3">
                    </div>
                    <div class="info-4">
                        <label for="info-4">化学:</label>
                        <input type="text" name='chemical' maxlength="3">
                    </div>
                    <div class="info-5">
                        <label for="info-5">生物:</label>
                        <input type="text" name='biological' maxlength="3">
                    </div>
                </div>
                <div class="xueke-2">
                    <div class="info-6">
                        <label for="info-6">历史:</label>
                        <input type="text" name='history' maxlength="3">
                    </div>
                    <div class="info-7">
                        <label for="info-7">地理:</label>
                        <input type="text" name='geographic' maxlength="3">
                    </div>
                    <div class="info-8">
                        <label for="info-8">政治:</label>
                        <input type="text" name='political' maxlength="3">
                    </div>
                    <div class="info-9">
                        <label for="info-9">物理:</label>
                        <input type="text" name='physical' maxlength="3">
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
if (isset($_POST['xueqi-info'])){
    //var_dump($_POST);
    $language = $_POST['language'];
    if(!input_achievement_check($language,$alert)){return;}
    $mathematicse = $_POST['mathematicse'];
    if(!input_achievement_check($mathematicse,$alert)){return;}
    $English = $_POST['English'];
    if(!input_achievement_check($English,$alert)){return;}
    $chemical = $_POST['chemical'];
    if(!input_achievement_check($chemical,$alert)){return;}
    $biological = $_POST['biological'];
    if(!input_achievement_check($biological,$alert)){return;}
    $history = $_POST['history'];
    if(!input_achievement_check($history,$alert)){return;}
    $geographic = $_POST['geographic'];
    if(!input_achievement_check($geographic,$alert)){return;}
    $political = $_POST['political'];
    if(!input_achievement_check($political,$alert)){return;}
    $physical = $_POST['physical'];
    if(!input_achievement_check($physical,$alert)){return;}
    $Modify_grades = $_POST['Modify_grades'];
    if(!input_achievement_check($Modify_grades,$alert)){return;}

    //$Total_score = $language + $mathematicse + $English + $chemical + $biological + $history + $geographic + $political + $physical;
    //echo $language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$teacher_result['class'],$semester,$Total_score;

    if (Add_grades($db,$language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$teacher_result['class'],$semester,$alert)){
        Behavior_record($db,$teacher_ID,$teacher_result['name'],'添加',$Modify_grades,'成绩',$teacher_result['class']);     //日志记录
        $alert('添加成功!');
    }else{
        return;
    }
}
?>