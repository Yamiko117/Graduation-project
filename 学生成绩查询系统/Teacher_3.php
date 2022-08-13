<?php
session_start();//开启session

include_once 'modular/input_check.php';
include_once 'modular/SQL_query.php';

header("Content-Type: text/html; charset=UTF-8");

//获取当前页码
if (isset($_GET['page'])) {
    $page = $_GET['page'];
}else{$page = '';}

if ($page == 0) {$page = 1;}

//设置每页最大能显示的数量
$pagesize=12;

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
// var_dump($teacher_result);

//获取结果集的记录数
$row=mysqli_fetch_row(mysqli_query($db,"select count(1) from student_account_information where class = ('{$teacher_result['class']}')"));
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
    <title>学生列表</title>
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
                <a href="Teacher_page.php"><i class="fa fa-id-card" aria-hidden="true"></i>&nbsp;成绩管理</a>
                <a href="Teacher_2.php"><i class="fa fa-id-card-o" aria-hidden="true"></i>&nbsp;成绩录入</a>
                <a href="Teacher_3.php" class="module-1"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;学生列表</a>
                <a href="Teacher_4.php"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;学生录入</a>
            </div>
        </div>
    </section>

    <section id="main">
        <div class="container-3"> 
            <div  class="search">
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $teacher_result['class']?>班</h2>
                <form action="Teacher_3.php" method="GET">
                    <input class="value-1-student" type="text"  name='username' placeholder="&nbsp;学号/姓名" maxlength="10">
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
                        <td>班级</td>
                        <td>手机号</td>
                        <td>邮箱</td>
                        <td>操作</td>
                    </tr>
                <?php
                if(empty($_GET['username'])) {
                    $sql = ($page - 1) * $pagesize;
                    $result = mysqli_query($db, "SELECT * FROM student_account_information where class = ('{$teacher_result['class']}') limit {$sql},{$pagesize}");
                    while ($row = mysqli_fetch_row($result)) {
                        echo("<tr />");
                        echo("<td>$row[0]</td>");
                        echo("<td>$row[2]</td>");
                        echo("<td>$row[8]</td>");
                        echo("<td>$row[3]</td>");
                        echo("<td>$row[5]</td>");
                        $Student_data = "$row[2]|$row[3]|$row[5]";
                        echo("<td><a   href=Teacher_3.php?inp=" . $row[0] . "&page=" . $page . "&Student_data=".$Student_data."><span class=\"btn-2\">修改</span></a><a href=Teacher_3.php?die=" . $row[0] . "&page=" . $page . "><span class=\"btn-3\"> 删除</span></a></td>");
                        echo("<tr />");
                    }
                }

                //搜索
                if (!empty($_GET['username'])){
                    $query_user = $_GET['username'];
                    $qr_result=mysqli_query($db,"SELECT * FROM student_account_information where (username = ('$query_user') or name = ('$query_user')) and class = ({$teacher_result['class']})");
                    $qr_row=mysqli_fetch_row($qr_result);
                    if (isset($qr_row)){
                        echo("<tr />");
                        echo("<td>$qr_row[0]</td>");
                        echo("<td>$qr_row[2]</td>");
                        echo("<td>$qr_row[8]</td>");
                        echo("<td>$qr_row[3]</td>");
                        echo("<td>$qr_row[5]</td>");
                        @$qr_Student_data = "$row[2]|$row[3]|$row[5]";
                        echo("<td><a  href=Teacher_3.php?inp=".$qr_row[0]."&page=".$page."&qr_Student_data=".$qr_Student_data."><span class=\"btn-2\">修改</span> </a><a href=Teacher_3.php?die=".$qr_row[0]."&page=".$page."><span class=\"btn-3\"> 删除</span></a>");
                        echo("<tr />");
                    }else{
                        echo 'false!';
                        echo "<a href=Teacher_3.php> back</a>";
                    }
                }

                //修改
                if (isset($_GET['inp'])){
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'xianshi\').style.display=\'block\';document.getElementById(\'background\').style.display=\'block\'">';
                    if (isset($_GET['qr_Student_data'])){$value_Student_data = explode('|',$_GET['qr_Student_data']);}
                    else{$value_Student_data = explode('|',$_GET['Student_data']);}


                    //删除
                }elseif (isset($_GET['die']) && isset($_GET['qr_die'])){
                    $die_Modify_grades = $_GET['die'];
                    input_login_username_check($die_Modify_grades,$alert);  //检查过滤
                    //echo $die_Modify_grades,$teacher_result['class'],$semester;
                    Delete_grades($db,$die_Modify_grades,$teacher_result['class']);    //删除成绩
                    sql_die_modify_image($db,$die_Modify_grades);   //删除头像
                    Delete_Student_information($db,$die_Modify_grades,$teacher_result['class']);    //删除函数
                Behavior_record($db,$teacher_ID,$teacher_result['name'],'删除',$die_Modify_grades,'账户',$teacher_result['class']);     //日志记录
                ?>    
                    <div class="container-6" ><?php
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'background\').style.display=\'block\'">';
                    echo '删除成功！';
                    echo "<a href=Teacher_3.php><span class=\"btn-3\"> 确认</span></a>";
                } elseif (isset($_GET['die'])){
                    ?>    
                    <div class="container-5" ><?php
                    echo '<img src="image/1像素图片.jpeg" alt="" onload="document.getElementById(\'background\').style.display=\'block\'">';
                    echo '<h4>是否删除:'.$_GET['die'].'的信息?</h4>';
                    echo "<a class=\"delete\" href=Teacher_3.php?die=".$_GET['die']."&page=".$page."&qr_die=1><span class=\"btn-3\">删除</span></a>";
                    echo "<a href=Teacher_3.php><span class=\"btn-2 btn-2-2\">取消</span></a>";
//                    if (isset($_GET['qr_Student_achievement_data'])){$value_Student_achievement_data = explode(',',$_GET['qr_Student_achievement_data']);}
//                    else{$value_Student_achievement_data = explode(',',$_GET['Student_achievement_data']);}
                }
                echo '<br/>';  
                ?>
                <div class="yema">
                    <?php 
                        //显示分页链接
                        if($page==1){echo("首页 ");}
                        else{echo("<a href=Teacher_3.php?page=1>首页  </a>");}

                        //设置上一页连接
                        if($page==1){echo("上一页 ");}
                        else{echo("<a href=Teacher_3.php?page=".($page-1)."> 上一页  </a>");}
                        
                        //设置页数
                        echo($page."/".$pagecount);    //页码

                        //设置下一页链接
                        if($page==$pagecount){echo(" 下一页 ");}
                        else{echo("<a href=Teacher_3.php?page=".($page+1)."> 下一页  </a>");}

                        //设置最后一页
                        if($page==$pagecount){echo("页尾 ");}
                        else{echo("<a href=Teacher_3.php?page=".$pagecount.">页尾 </a>");}
                            
                    ?>
                </div>
            </div>
                <!-- 定义弹出款的内容 -->
            <div class="container-4 AA" id="xianshi">
                <form action="Teacher_3.php" method="POST">
                    <div class="xiugai">
                        <h4>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp学号:<?php echo @$_GET['inp'] ?></h4>
                        <label for="xiugai-1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp姓名</label>
                        <input type="text"   name="name" placeholder="<?php echo @$value_Student_data['0'] ?>" maxlength="5">
                    </div>
                    <div class="xiugai">
                        <label for="xiugai-2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp邮箱</label>
                        <input type="text"   name="Mailbox" placeholder="<?php echo @$value_Student_data['2'] ?>" maxlength="32">
                    </div>
                    <div class="xiugai">
                        <label for="xiugai-3">&nbsp&nbsp&nbsp&nbsp手机号</label>
                        <input type="text" name="Phone" placeholder="<?php echo @$value_Student_data['1'] ?>" maxlength="16">
                    </div>
                    <div class="xiugai">
                        <label for="xiugai-4">修改密码</label>
                        <input type="text"  name="PassWord"  maxlength="24">
                    </div>
                    <div class="xiugai">
                        <label for="xiugai-5">确认密码</label>
                        <input type="text"   name="QrPassWord"  maxlength="24">
                    </div>
                    <div class="xiugai">
                        <button type="submit"   name="Modify_account" value="<?php echo @$_GET['inp']?>" class="btn-4  btn-4-2">修改</button>
                        <a href=Teacher_3.php?page=<?php echo $page ?> class="btn-5">取消
                    </div> 
                </form>
            </div>    
        </div>
    </section>
</body>
</html>
<?php
if (isset($_POST['Modify_account'])){

    $username = $_POST['Modify_account'];
    $name = $_POST['name'];                         //姓名
    $phone = $_POST['Phone'];                       //手机
    $password = $_POST['PassWord'];     //密码
    $mailbox = $_POST['Mailbox'];       //邮箱

    if (!empty($password) && !empty($_POST['QrPassWord'])) {
        if ($password != $_POST['QrPassWord']) {
            return $alert('密码不一致!');
        }
        if (input_login_password_check($password, $alert)) {
            $password = md5($password);

            sql_teacher_modify_password($db, $username, $password, $alert);
            Behavior_record($db,$teacher_ID,$teacher_result['name'],'修改',$username,'密码',$teacher_result['class']);
        } else {
            return;
        }
    }

    if (!empty($name)) {
        if (input_Registration_name_check($name,$alert)){
            sql_modify_name($db,$username,$name);
            Behavior_record($db,$teacher_ID,$teacher_result['name'],'修改',$username,'名字',$teacher_result['class']);
        }else{return $alert('名字修改失败');}
    }

    if (!empty($mailbox)) {
        if (input_Registration_mailbox_check($mailbox,$alert)){
            sql_modify_mailbox($db,$username,$mailbox);
            Behavior_record($db,$teacher_ID,$teacher_result['name'],'修改',$username,'邮箱',$teacher_result['class']);
        }else{return $alert('邮箱修改失败');}
    }

    if (!empty($phone)) {
        if (input_Registration_phone_check($phone,$alert)){
            sql_modify_phone($db,$username,$phone);
            Behavior_record($db,$teacher_ID,$teacher_result['name'],'修改',$username,'手机号',$teacher_result['class']);
        }else{return $alert('手机号修改失败');}
    }
}
?>