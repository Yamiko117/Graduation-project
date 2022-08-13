<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");   //设置网站字符编码

//获取当前页码
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}else{$page = '';}

if ($page == 0) {$page = 1;}

//设置每页最大能显示的数量
$pagesize=12;

//检查登录
if (isset($_SESSION['teacher'])){
    $teacher_ID = $_SESSION['teacher'];
} else{
    header('location:./login_teacher.php');
    return session_destroy();
}
// $teacher_result = '';   //教师信息
//$student_semester_data = '';    //学生成绩
// var_dump($teacher_ID);
if (empty($teacher_result)){
    sql_teacher_result_data($db,$teacher_ID,$teacher_result);
}
//var_dump($teacher_result);

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

//获取结果集的记录数
$row=mysqli_fetch_row(mysqli_query($db,"select count(1) from ($semester) where class = ('{$teacher_result['class']}')"));
$recordcount=$row[0];

//计算总页数
if($recordcount==0){$pagecount=0;}
elseif($recordcount<$pagesize ||$recordcount==$pagesize){
    $pagecount=1;
    //如果 记录 总数 量小 于 每页 显示 的 记录 数量， 则 只有 一页
}
else if($recordcount%$pagesize==0){
    $pagecount=$recordcount/$pagesize;
    //如果 没有 余数， 则 页数 等于 总 记录 数量 除以 每页 显示 记录 的 数量
}
else
    $pagecount=(int)($recordcount/$pagesize)+1;
//取 记录 总数 量 不能 整除 每页 显示 记录 的 数量，
// 则 页数 等于 总 记录 数量 除以 每页 显示 记录 数量 的 结果 取整 再加 1

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/teacher.css">

    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <title>成绩管理</title>
</head>
<body>
    <!-- 弹出款的背景 -->
    <div class="bcakground" id="background"></div>


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
                <a href="Teacher_page.php" class="module-1"><i class="fa fa-id-card" aria-hidden="true"></i>&nbsp;成绩管理</a>
                <a href="Teacher_2.php"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;成绩录入</a>
                <a href="Teacher_3.php"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;学生列表</a>
                <a href="Teacher_4.php"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;学生录入</a>
            </div>
        </div>
    </section>

    <section id="main">
        <div class="container-3">
            <div  class="search">
                <h2><?php  echo $results ?></h2>
                <form action="Teacher_page.php" method="GET">
                    <select name="xueqi" >
                        <option value="">请选择学期</option>
                        <option value="11_student_achievement">2019年秋季期</option>
                        <option value="12_student_achievement">2020年春季期</option>
                        <option value="21_student_achievement">2020年秋季期</option>
                        <option value="22_student_achievement">2021年春季期</option>
                        <option value="31_student_achievement">2021年秋季期</option>
                        <option value="32_student_achievement">2022年春季期</option>
                    </select>
                    <input class="value-1" type="text"  name='username' placeholder="&nbsp;学号/姓名" maxlength="10">
                    <input class="btn-1" type="submit" name="query" value="查找">
                    </button>
                </form>
            </div>
            <!-- 定义的是搜索款的内容 -->
            <div class="result">
                <table  cellspacing="0" class="table">
                    <tr class="table-tr">
                        <td >学号</td>
                        <td>姓名</td>
                        <td>语文</td>
                        <td>数学</td>
                        <td>英语</td>
                        <td>化学</td>
                        <td>生物</td>
                        <td>历史</td>
                        <td>地理</td>
                        <td>政治</td>
                        <td>物理</td>
                        <td>总分</td>
                        <td>操作</td>
                    </tr>
                <?php
                if(empty($_GET['username'])) {
                    $sql = ($page - 1) * $pagesize;
                    $result = mysqli_query($db, "SELECT * FROM {$semester} where class = ('{$teacher_result['class']}') limit {$sql},{$pagesize}");
                    while ($row = mysqli_fetch_row($result)) {  //while循环输出二维数组
                        $qrname = mysqli_query($db, "SELECT name FROM student_account_information where username = ('$row[0]')");   //查询学生信息显示
                        $row_name = mysqli_fetch_row($qrname);
                        echo("<tr />");
                        echo("<td>$row[0]</td>");
                        echo("<td>$row_name[0]</td>");
                        echo("<td>$row[2]</td>");
                        echo("<td>$row[3]</td>");
                        echo("<td>$row[4]</td>");
                        echo("<td>$row[5]</td>");
                        echo("<td>$row[6]</td>");
                        echo("<td>$row[7]</td>");
                        echo("<td>$row[8]</td>");
                        echo("<td>$row[9]</td>");
                        echo("<td>$row[10]</td>");
                        echo("<td>$row[11]</td>");
                        $Student_achievement_data = "$row[2],$row[3],$row[4],$row[5],$row[6],$row[7],$row[8],$row[9],$row[10]";     //成绩提交
                        echo("<td><a   href=Teacher_page.php?inp=".$row[0]."&page=".$page."&Student_achievement_data=".$Student_achievement_data."><span class=\"btn-2\">修改</span></a><a href=Teacher_page.php?die=".$row[0]."&page=".$page."><span class=\"btn-3\"> 删除</span></a></td>");
                        echo("<tr />");
                    }
                }

                //搜索
                if (!empty($_GET['username'])){
                    $query_user = $_GET['username'];
                    $qr_result=mysqli_query($db,"SELECT username,name FROM student_account_information where (username = ('$query_user') or name = ('$query_user')) and class = ({$teacher_result['class']})");
                    $qr_row=mysqli_fetch_row($qr_result);
                    if (isset($qr_row)){
                        $qr_result_data = mysqli_query($db,"select * from {$semester} where Student_ID = ('$qr_row[0]')");
                        $qr_row_data = mysqli_fetch_row($qr_result_data);
                        echo("<tr />");
                        echo("<td>$qr_row[0]</td>");
                        echo("<td>$qr_row[1]</td>");
                        echo("<td>$qr_row_data[2]</td>");
                        echo("<td>$qr_row_data[3]</td>");
                        echo("<td>$qr_row_data[4]</td>");
                        echo("<td>$qr_row_data[5]</td>");
                        echo("<td>$qr_row_data[6]</td>");
                        echo("<td>$qr_row_data[7]</td>");
                        echo("<td>$qr_row_data[8]</td>");
                        echo("<td>$qr_row_data[9]</td>");
                        echo("<td>$qr_row_data[10]</td>");
                        echo("<td>$qr_row_data[11]</td>");
                        $qr_Student_achievement_data = "$qr_row_data[2],$qr_row_data[3],$qr_row_data[4],$qr_row_data[5],$qr_row_data[6],$qr_row_data[7],$qr_row_data[8],$qr_row_data[9],$qr_row_data[10]";  //成绩提交
                        echo("<td><a  href=Teacher_page.php?inp=".$qr_row[0]."&page=".$page."&qr_Student_achievement_data=".$qr_Student_achievement_data."><span class=\"btn-2\">修改</span> </a><a href=Teacher_page.php?die=".$qr_row[0]."&page=".$page."><span class=\"btn-3\"> 删除</span></a></td>");
                        echo("<tr />");
                    }else{
                        echo 'false!';
                        echo "<a href=Teacher_page.php> back</a>";
                    }
                }

                //修改
                if (isset($_GET['inp'])){
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'xianshi\').style.display=\'block\';document.getElementById(\'background\').style.display=\'block\'">';
                    // echo "<a href=Teacher_page.php> back</a>";
                    if (isset($_GET['qr_Student_achievement_data'])){$value_Student_achievement_data = explode(',',$_GET['qr_Student_achievement_data']);}
                    else{$value_Student_achievement_data = explode(',',$_GET['Student_achievement_data']);}

                    //删除
                }elseif (isset($_GET['die']) && isset($_GET['qr_die'])){
                    $die_Modify_grades = $_GET['die'];
                    input_achievement_check($die_Modify_grades,$alert);
                    //echo $die_Modify_grades,$teacher_result['class'],$semester;
                    Delete_grades($db,$die_Modify_grades,$teacher_result['class'],$semester);   //删除函数
                Behavior_record($db,$teacher_ID,$teacher_result['name'],'删除',$die_Modify_grades,'成绩',$teacher_result['class']);     //日志记录
                ?>    
                    <div class="container-6" ><?php
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'background\').style.display=\'block\'">';
                    echo '<h4>删除成功！<h4>';
                    echo "<a href=Teacher_page.php><span class=\"btn-3\"> 确认</span></a>";
                } elseif (isset($_GET['die'])){
                    ?>    
                    <div class="container-5" ><?php
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'background\').style.display=\'block\'">';
                    echo '<h4>是否删除:'.$_GET['die'].'的成绩?</h4>';
                    echo "<a class=\"delete\" href=Teacher_page.php?die=".$_GET['die']."&page=".$page."&qr_die=1><span class=\"btn-3\">删除</span></a>";
                    echo "<a  href=Teacher_page.php><span class=\"btn-2 btn-2-2\">取消</span></a>";
//                    if (isset($_GET['qr_Student_achievement_data'])){$value_Student_achievement_data = explode(',',$_GET['qr_Student_achievement_data']);}
//                    else{$value_Student_achievement_data = explode(',',$_GET['Student_achievement_data']);}
                }
                echo '<br/>';
                ?>
                    </div>  
                <div class="yema">
                    <?php 
                        //显示分页链接
                        if($page==1){echo("首页 ");}
                        else{echo("<a href=Teacher_page.php?page=1>首页  </a>");}

                        //设置上一页连接
                        if($page==1){echo("上一页 ");}
                        else{echo("<a href=Teacher_page.php?page=".($page-1)."> 上一页  </a>");}
                        
                        //设置页数
                        echo($page."/".$pagecount);    //页码

                        //设置下一页链接
                        if($page==$pagecount){echo(" 下一页 ");}
                        else{echo("<a href=Teacher_page.php?page=".($page+1)."> 下一页  </a>");}

                        //设置最后一页
                        if($page==$pagecount){echo("页尾 ");}
                        else{echo("<a href=Teacher_page.php?page=".$pagecount.">页尾 </a>");}
                            
                    ?>
                </div>
            </div>
                <!-- 定义弹出款的内容 -->
            <div class="container-4" id="xianshi">
                <form action="Teacher_page.php" method="POST">
                    <div>
                        <h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp学号:<?php echo @$_GET['inp']?></h4>
                        <label for="xiugai-1">语文</label>
                        <input type="text"   name="language" value="<?php echo @$value_Student_achievement_data[0]?>" id="xiugai-1" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-2">数学</label>
                        <input type="text"   name="mathematicse" value="<?php echo @$value_Student_achievement_data[1]?>" id="xiugai-2" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-3">英语</label>
                        <input type="text"   name="English" value="<?php echo @$value_Student_achievement_data[2]?>" id="xiugai-3" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-4">化学</label>
                        <input type="text"   name="chemical" value="<?php echo @$value_Student_achievement_data[3]?>" id="xiugai-4" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-5">生物</label>
                        <input type="text"   name="biological" value="<?php echo @$value_Student_achievement_data[4]?>" id="xiugai-5" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-6">历史</label>
                        <input type="text"   name="history" value="<?php echo @$value_Student_achievement_data[5]?>" id="xiugai-6" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-7">地理</label>
                        <input type="text"   name="geographic" value="<?php echo @$value_Student_achievement_data[6]?>" id="xiugai-7" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-8">政治</label>
                        <input type="text"   name="political" value="<?php echo @$value_Student_achievement_data[7]?>" id="xiugai-8" maxlength="3">
                    </div>
                    <div>
                        <label for="xiugai-9">物理</label>
                        <input type="text"   name="physical" value="<?php echo @$value_Student_achievement_data[8]?>" id="xiugai-9" maxlength="3">
                    </div>
                    <div>
                        <button type="submit"   name="Modify_grades" value="<?php echo @$_GET['inp']?>" class="btn-4">修改</button>
                        <a href=Teacher_page.php?page=<?php echo $page ?> class="btn-5">取消
                    </div> 
                </form>
            </div>    
        </div>

    </section>
</body>
</html>
<?php
if (isset($_POST['Modify_grades'])){
    //提交数据过滤检查
    //var_dump($_POST);
    $language = $_POST['language'];
    input_achievement_check($language,$alert);
    $mathematicse = $_POST['mathematicse'];
    input_achievement_check($mathematicse,$alert);
    $English = $_POST['English'];
    input_achievement_check($English,$alert);
    $chemical = $_POST['chemical'];
    input_achievement_check($chemical,$alert);
    $biological = $_POST['biological'];
    input_achievement_check($biological,$alert);
    $history = $_POST['history'];
    input_achievement_check($history,$alert);
    $geographic = $_POST['geographic'];
    input_achievement_check($geographic,$alert);
    $political = $_POST['political'];
    input_achievement_check($political,$alert);
    $physical = $_POST['physical'];
    input_achievement_check($physical,$alert);
    $Modify_grades = $_POST['Modify_grades'];
    input_achievement_check($Modify_grades,$alert);

    //$Total_score = $language + $mathematicse + $English + $chemical + $biological + $history + $geographic + $political + $physical;
    //echo $language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$teacher_result['class'],$semester,$Total_score;
    if (Grade_modification($db,$language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$teacher_result['class'],$semester)){
        Behavior_record($db,$teacher_ID,$teacher_result['name'],'修改',$Modify_grades,'成绩',$teacher_result['class']);     //日志记录
        echo $alert('修改成功!');
    }
}
?>