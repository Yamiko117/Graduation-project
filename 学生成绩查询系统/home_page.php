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

sql_user_result_data($db,$username,$user_results);  //用户数据
$student_achievement = array('11_student_achievement' => '2019年秋季期','12_student_achievement' => '2020年春季期','21_student_achievement' => '2020年秋季期','22_student_achievement' => '2021年春季期','31_student_achievement' => '2021年秋季期','32_student_achievement' => '2022年春季期');

if (isset($_GET['xueqi-info'])){
    $semester = $_GET['xueqi'];
    input_login_password_check($semester,$alert);
    $results = $student_achievement[$semester];     //显示学期
}else{
    $semester = '11_student_achievement';
    $results = $student_achievement[$semester];     //显示学期
}
sql_user_semester_data($db,$username,$semester,$user_semester);
// var_dump($user_results);
// var_dump($user_semester);
// var_dump($_COOKIE);
// var_dump($semester);
// return session_destroy();
// var_dump($results);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/student.css">
    <script src="lib/echarts.js"></script>
    <title>学生端</title>
</head>
<body>
<header>
    <!-- 定义导航栏 -->
    <nav id="navbar" class="yying">
        <div class="container">
                <h1>成绩查分系统</h1>
                <h3><?php echo $user_results[6]['name'];?></h3>
                <img src="<?php echo $user_results[6]['image_save'];?>" alt="未上传头像">
            <div class="menu">
                <input type="checkbox" class="toggler">
                <div class="hamburger">
                    <div></div>
                </div>
                <div class="menu-2">
                    <ul>
                        <li>
                            <ul>
                                <li><a href="home_page.php">主页</a></li>
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
<section id="home-info" class="bg" >
    <div class=info-1>
        <!-- 定义个人信息上半部分 -->
        <div class="info-1-1">
            <img src="<?php echo $user_results[6]['image_save'];?>" alt="未上传头像">
            <div class="name"><h3>姓名:<?php echo $user_results[6]['name'];?></h3></div>
            <div class="class"><h3>班级:<?php echo $user_results[6]['class'];?>班</h3></div>
            <div class="student-number"><h3>学号:<?php echo $user_results[0]['Student_ID'];?></h3></div>

        </div>
        <!-- 定义个人信息下半部分 -->
        <div class="info-1-2">
            <div class="score ranking"><h2>成绩排名</h2></div>
            <div >
                <p class="title">排名 学号 总分</p>
                <p>No.<?php echo $user_semester[0]['名次'];echo '  '; echo $user_semester[0]['Student_ID'];echo '  '.$user_semester[0]['Total_score'];?>分</p>
                <p>No.<?php echo $user_semester[1]['名次'];echo '  '; echo $user_semester[1]['Student_ID'];echo '  '.$user_semester[1]['Total_score'];?>分</p>
                <p>No.<?php echo $user_semester[2]['名次'];echo '  '; echo $user_semester[2]['Student_ID'];echo '  '.$user_semester[2]['Total_score'];?>分</p>
                <p>......</p>

                <p class="my">No.<?php echo $user_semester[3]['名次']; echo '  '.$user_semester[3]['Student_ID'];echo '  '.$user_semester[3]['Total_score'];?>分</p>
            </div>
        </div>
    </div>
    <!-- 定义成绩模块 -->
    <div class='info-2'>
        <!-- 上半部分-查询选择 -->
        <div class='info-2-top'>
            <h1><?php echo $results;?>成绩</h1>
            <form action="home_page.php" method="GET">
                <select name="xueqi" >
                    <option value="11_student_achievement">请选择学期</option>
                    <option value="11_student_achievement">2019年秋季期</option>
                    <option value="12_student_achievement">2020年春季期</option>
                    <option value="21_student_achievement">2020年秋季期</option>
                    <option value="22_student_achievement">2021年春季期</option>
                    <option value="31_student_achievement">2021年秋季期</option>
                    <option value="32_student_achievement">2022年春季期</option>
                </select>
                <input type="submit" name="xueqi-info" value="查询">
            </form>
        </div>
        <!-- 下半部分-成绩显示 -->
        <div   class='info-2-bottom'>
            <!-- 套多一层是为了切换不会有太大变动 -->
            <div class="xianzhi">
                <div class='info-2-left'>
                    <h2>语文: <?php echo $user_semester[4]['Chinese_language_and_literature'];?>分</h2>
                    <h2>数学: <?php echo $user_semester[4]['mathematics'];?>分</h2>
                    <h2>英语: <?php echo $user_semester[4]['English'];?>分 </h2>
                    <h2>化学: <?php echo $user_semester[4]['chemical'];?>分</h2>
                    <h2>生物: <?php echo $user_semester[4]['biological'];?>分</h2>
                </div>
                <div class='info-2-right'>
                    <h2>历史: <?php echo $user_semester[4]['history'];?>分</h2>
                    <h2>地理: <?php echo $user_semester[4]['geographic'];?>分</h2>
                    <h2>政治: <?php echo $user_semester[4]['political'];?>分</h2>
                    <h2>物理: <?php echo $user_semester[4]['physical'];?>分</h2>
                    <h2>总分: <?php echo $user_semester[4]['Total_score'];?>分</h2>
                </div>
            </div>
        </div>
    </div>

    <!-- 定义折线图模块 -->
    <div class="info-3" >
        <div class="neir">
            <div class="qiehuan page" id="kemu-1">
                <a href="#qx-1" class="btn-2">语文</a>
                <a href="#qx-2" class="btn-2">数学</a>
                <a href="#qx-3" class="btn-2">英语</a>
                <a href="#qx-4" class="btn-2">化学</a>
                <a href="#qx-5" class="btn-2">生物</a>
                <a href="#kemu-2" class="btn-3">↓</a>
            </div>
            <div class="qiehuan page" id="kemu-2">
                <a href="#qx-6" class="btn-2">历史</a>
                <a href="#qx-7" class="btn-2">地理</a>
                <a href="#qx-8" class="btn-2">政治</a>
                <a href="#qx-9" class="btn-2">物理</a>
                <a href="#qx-10" class="btn-2">总分</a>
                <a href="#kemu-1" class="btn-3">↑</a>
            </div>
        </div>
        <div class="zexiantu">
            <h2>成绩曲线图—<span>语文</span></h2>
            <sec style="width: 700px; height: 350px" id="qx-1">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['Chinese_language_and_literature'];?>, <?php echo $user_results[1]['Chinese_language_and_literature'];?>, <?php echo $user_results[2]['Chinese_language_and_literature'];?>, <?php echo $user_results[3]['Chinese_language_and_literature'];?>, <?php echo $user_results[4]['Chinese_language_and_literature'];?>, <?php echo $user_results[5]['Chinese_language_and_literature'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec>
            <h2>成绩曲线图—<span>数学</span></h2>
            <sec-2 style="width: 700px; height: 350px" id="qx-2">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-2'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['mathematics'];?>, <?php echo $user_results[1]['mathematics'];?>, <?php echo $user_results[2]['mathematics'];?>, <?php echo $user_results[3]['mathematics'];?>, <?php echo $user_results[4]['mathematics'];?>, <?php echo $user_results[5]['mathematics'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-2>
            <h2>成绩曲线图—<span>英语</span></h2>
            <sec-3 style="width: 700px; height: 350px" id="qx-3">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-3'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['English'];?>, <?php echo $user_results[1]['English'];?>, <?php echo $user_results[2]['English'];?>, <?php echo $user_results[3]['English'];?>, <?php echo $user_results[4]['English'];?>, <?php echo $user_results[5]['English'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-3>
            <h2>成绩曲线图—<span>化学</span></h2>
            <sec-4 style="width: 700px; height: 350px" id="qx-4">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-4'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['chemical'];?>, <?php echo $user_results[1]['chemical'];?>, <?php echo $user_results[2]['chemical'];?>, <?php echo $user_results[3]['chemical'];?>, <?php echo $user_results[4]['chemical'];?>, <?php echo $user_results[5]['chemical'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-4>
            <h2>成绩曲线图—<span>生物</span></h2>
            <sec-5 style="width: 700px; height: 350px" id="qx-5">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-5'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['biological'];?>, <?php echo $user_results[1]['biological'];?>, <?php echo $user_results[2]['biological'];?>, <?php echo $user_results[3]['biological'];?>, <?php echo $user_results[4]['biological'];?>, <?php echo $user_results[5]['biological'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-5>
            <h2>成绩曲线图—<span>历史</span></h2>
            <sec-6 style="width: 700px; height: 350px" id="qx-6">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-6'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['history' ];?>, <?php echo $user_results[1]['history' ];?>, <?php echo $user_results[2]['history' ];?>, <?php echo $user_results[3]['history' ];?>, <?php echo $user_results[4]['history' ];?>, <?php echo $user_results[5]['history' ];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-6>
            <h2>成绩曲线图—<span>地理</span></h2>
            <sec-7 style="width: 700px; height: 350px" id="qx-7">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-7'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['geographic'];?>, <?php echo $user_results[1]['geographic'];?>, <?php echo $user_results[2]['geographic'];?>, <?php echo $user_results[3]['geographic'];?>, <?php echo $user_results[4]['geographic'];?>, <?php echo $user_results[5]['geographic'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-7>
            <h2>成绩曲线图—<span>政治</span></h2>
            <sec-8 style="width: 700px; height: 350px" id="qx-8">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-8'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['political'];?>, <?php echo $user_results[1]['political'];?>, <?php echo $user_results[2]['political'];?>, <?php echo $user_results[3]['political'];?>, <?php echo $user_results[4]['political'];?>, <?php echo $user_results[5]['political'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-8>
            <h2>成绩曲线图—<span>物理</span></h2>
            <sec-9 style="width: 700px; height: 350px" id="qx-9">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-9'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['physical'];?>, <?php echo $user_results[1]['physical'];?>, <?php echo $user_results[2]['physical'];?>, <?php echo $user_results[3]['physical'];?>, <?php echo $user_results[4]['physical'];?>, <?php echo $user_results[5]['physical'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-9>
            <h2>成绩曲线图—<span>总分</span></h2>
            <sec-10 style="width: 700px; height: 350px" id="qx-10">
                <script>
                    var mCharts = echarts.init(document.querySelector('sec-10'))
                    var xDataArr = ['19年秋季期', '20年春季期', '20年秋季期', '21年春季期', '21年秋季期', '22年春学期']
                    var yDataArr = [<?php echo $user_results[0]['Total_score'];?>, <?php echo $user_results[1]['Total_score'];?>, <?php echo $user_results[2]['Total_score'];?>, <?php echo $user_results[3]['Total_score'];?>, <?php echo $user_results[4]['Total_score'];?>, <?php echo $user_results[5]['Total_score'];?>]
                    var option = {
                        xAxis: {
                            tyoe: 'category',
                            data: xDataArr
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: 'xxxx',
                                data: yDataArr,
                                type: 'line'
                            }
                        ]
                    }
                    mCharts.setOption(option)
                </script>
            </sec-10>
        </div>
    </div>
</section>
<footer id="main-footer">
    <p>成绩查分系统 &copy; 2022,ALL Rights Reserved</p>
</footer>
</body>
</html>