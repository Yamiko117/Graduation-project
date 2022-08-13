<?php
header("Content-Type:text/html;charset=utf-8");

$db = mysqli_connect('127.0.0.1', 'root', '123456', 'data');    //连接数据库
mysqli_set_charset($db, 'utf8');    //设置数据库

//登录检查-------------------------------------------------------------------------------------------------------------------

function sql_login_check($db,$username,$password,$alert){
    $query = mysqli_query($db, "select username,md5_password from student_account_information where username = ('$username');");    //查询
    $row = mysqli_fetch_assoc($query);      //取出查询结果集
    if ($username == $row['username']){
        if ($password == $row['md5_password']){
            mysqli_free_result($query);     //释放查询结果集
            mysqli_close($db);              //炸桥
            return true;
        }
    }
    mysqli_free_result($query);     //释放查询结果集
//    mysqli_close($db);              //炸桥
    return $alert('用户名或密码错误!');
}

//注册信息-------------------------------------------------------------------------------------------------------------------

function sql_Registration_check($db,$username,$password,$name,$phone,$id,$mailbox,$image_save,$class,$alert){
    $query = mysqli_query($db, "select username from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);
    if ($username == $row['username'] || !($user_flag = md5($username.$password.$name.$phone.$id.$mailbox.$class))){
        mysqli_free_result($query);    //释放查询结果集
        mysqli_close($db);                 //炸桥
        return $alert('用户名已被占用!');
    }
    mysqli_query($db,"insert into student_account_information values('$username','$password','$name','$phone','$id','$mailbox','$image_save','$user_flag','$class');");
    mysqli_free_result($query);    //释放查询结果集
//     mysqli_close($db);                 //炸桥
    return $alert('注册成功!');
}

//密码找回-------------------------------------------------------------------------------------------------------------------

function sql_Password_retireva($db,$username,$password,$name,$phone,$id,$mailbox,$class,$alert){
    $query = mysqli_query($db, "select username,md5_password,user_flag from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);
    if (!($username == $row['username']) || !($row['user_flag'] == md5($username.$row['md5_password'].$name.$phone.$id.$mailbox.$class))){
        mysqli_free_result($query);        //释放查询结果集
        mysqli_close($db);                 //炸桥
        return $alert('身份验证错误!');
    }
    $user_flag = md5($username.$password.$name.$phone.$id.$mailbox.$class);
    mysqli_query($db,"update student_account_information set md5_password = ('$password'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return $alert('密码修改成功!');
}

//学生端进入查询--------------------------------------------------------------------------------------------------------------

function sql_user_result_data($db,$username,&$user_results){

    //    $results = array('11_student_achievement','12_student_achievement','21_student_achievement','22_student_achievement','31_student_achievement','32_student_achievement');

    $query = mysqli_query($db, "select * from 11_student_achievement where Student_ID = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from 12_student_achievement where Student_ID = ('$username');");
    $row1 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from 21_student_achievement where Student_ID = ('$username');");
    $row2 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from 22_student_achievement where Student_ID = ('$username');");
    $row3 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from 31_student_achievement where Student_ID = ('$username');");
    $row4 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from 32_student_achievement where Student_ID = ('$username');");
    $row5 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select name,image_save,class from student_account_information where username = ('$username');");
    $row6 = mysqli_fetch_assoc($query);

    $user_results = array($row,$row1,$row2,$row3,$row4,$row5,$row6);

    mysqli_free_result($query);        //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//查找前三名和自身成绩---------------------------------------------------------------------------------------------------------

function sql_user_semester_data($db,$username,$semester,&$user_semester){

    $query = mysqli_query($db, "select Student_ID,Total_score,dense_rank() over(order by Total_score desc) as 名次 from ($semester) limit 0,1;");
    $row = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select Student_ID,Total_score,dense_rank() over(order by Total_score desc) as 名次 from ($semester) limit 1,1;");
    $row1 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select Student_ID,Total_score,dense_rank() over(order by Total_score desc) as 名次 from ($semester) limit 2,1;");
    $row2 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select Student_ID,Total_score,名次 from (select *,dense_rank() over(order by Total_score desc) as 名次 from ($semester)) as a where Student_ID = ('$username');");
    $row3 = mysqli_fetch_assoc($query);

    $query = mysqli_query($db, "select * from ($semester) where Student_ID = ('$username');");
    $row4 = mysqli_fetch_assoc($query);

    $user_semester = array($row,$row1,$row2,$row3,$row4);

    mysqli_free_result($query);        //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//修改个人资料----------------------------------------------------------------------------------------------------------------

//查询个人信息
function sql_user_data($db,$username,&$user_data){

    $query = mysqli_query($db, "select name,phone,mailbox,image_save,class from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_data = $row;
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//修改密码
function sql_modify_password($db,$username,$usedpassword,$password,$alert){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);
    if ($usedpassword != $row['md5_password']) {
        mysqli_free_result($query);    //释放查询结果集
        mysqli_close($db);                 //炸桥
        return $alert('密码错误!');
    }

    $user_flag = md5($username.$password.$row['name'].$row['phone'].$row['id'].$row['mailbox'].$row['class']);  //计算flag
    mysqli_query($db,"update student_account_information set md5_password = ('$password'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return $alert('密码修改成功!');
}

//修改名字
function sql_modify_name($db,$username,$name){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_flag = md5($username.$row['md5_password'].$name.$row['phone'].$row['id'].$row['mailbox'].$row['class']);  //计算flag
    mysqli_query($db,"update student_account_information set name = ('$name'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//修改邮箱
function sql_modify_mailbox($db,$username,$mailbox){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_flag = md5($username.$row['md5_password'].$row['name'].$row['phone'].$row['id'].$mailbox.$row['class']);  //计算flag
    mysqli_query($db,"update student_account_information set mailbox = ('$mailbox'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//修改手机号
function sql_modify_phone($db,$username,$phone){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_flag = md5($username.$row['md5_password'].$row['name'].$phone.$row['id'].$row['mailbox'].$row['class']);  //计算flag
    mysqli_query($db,"update student_account_information set phone = ('$phone'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//修改身份证
function sql_modify_id($db,$username,$id){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_flag = md5($username.$row['md5_password'].$row['name'].$row['phone'].$id.$row['mailbox'].$row['class']);  //计算flag
    mysqli_query($db,"update student_account_information set id = ('$id'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//删除图片

function sql_die_modify_image($db,$username){
    $query = mysqli_query($db, "select image_save from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    if ($row['image_save'] != 'user_images/Default_Avatar.jpeg'){   //检查是否为默认头像
        unlink($row['image_save']);
        mysqli_free_result($query);    //释放查询结果集
        //mysqli_close($db);                 //炸桥
    }
    return true;
}

//修改图片地址
function sql_modify_image($db,$username,$image_save){

    mysqli_query($db,"update student_account_information set image_save = ('$image_save') where username = ('$username');");
    //mysqli_close($db);                 //炸桥
    return true;
}

//教师登录-------------------------------------------------------------------------------------------------------------------

function sql_login_teacher_check($db,$username,$password,$alert){
    $query = mysqli_query($db, "select ID,md5_password from teacher_information where ID = ('$username');");
    $row = mysqli_fetch_assoc($query);
    if ($username == $row['ID']){
        if ($password == $row['md5_password']){
            mysqli_free_result($query);     //释放查询结果集
            mysqli_close($db);              //炸桥
            return true;
        }
    }
    mysqli_free_result($query);     //释放查询结果集
//    mysqli_close($db);              //炸桥
    return $alert('用户名或密码错误!');
}

//教师信息-------------------------------------------------------------------------------------------------------------------

function sql_teacher_result_data($db,$username,&$teacher_result){

    $query = mysqli_query($db, "select name,image_save,class from teacher_information where ID= ('$username');");
    $row = mysqli_fetch_assoc($query);

    $teacher_result = $row;

    mysqli_free_result($query);        //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return true;
}

//教师修改学生密码-----------------------------------------------------------------------------------------------------------------

function sql_teacher_modify_password($db,$username,$password,$alert){
    $query = mysqli_query($db, "select * from student_account_information where username = ('$username');");
    $row = mysqli_fetch_assoc($query);

    $user_flag = md5($username.$password.$row['name'].$row['phone'].$row['id'].$row['mailbox'].$row['class']);
    mysqli_query($db,"update student_account_information set md5_password = ('$password'),user_flag = ('$user_flag')where username = ('$username');");
    mysqli_free_result($query);    //释放查询结果集
//    mysqli_close($db);                 //炸桥
    return $alert('密码修改成功!');
}

//添加成绩-------------------------------------------------------------------------------------------------------------------

function Add_grades($db,$language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$class,$semester,$alert){
    $query = mysqli_query($db, "select Student_ID from {$semester} where Student_ID = ('$Modify_grades') && class = ('$class');");
    $row = mysqli_fetch_assoc($query);
    if ($row['Student_ID'] == $Modify_grades){
        mysqli_free_result($query);    //释放查询结果集
        mysqli_close($db);                 //炸桥
        return $alert('学生:'.$Modify_grades.';的成绩已存在!');
    }
    $query = mysqli_query($db, "select username from student_account_information where username = ('$Modify_grades') && class = ('$class');");
    $row = mysqli_fetch_assoc($query);
    if ($row['username'] != $Modify_grades){
        mysqli_free_result($query);    //释放查询结果集
        mysqli_close($db);                 //炸桥
        return $alert('学生:'.$Modify_grades.';账户不存在!');
    }

    $Total_score = $language + $mathematicse + $English + $chemical + $biological + $history + $geographic + $political + $physical;
    mysqli_query($db,"insert into {$semester} values($Modify_grades,$class,$language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,{$Total_score});");

    //    mysqli_close($db);                 //炸桥
    return true;
}

//修改成绩-------------------------------------------------------------------------------------------------------------------

function Grade_modification($db,$language,$mathematicse,$English,$chemical,$biological,$history,$geographic,$political,$physical,$Modify_grades,$class,$semester){

    $Total_score = $language + $mathematicse + $English + $chemical + $biological + $history + $geographic + $political + $physical;
    mysqli_query($db, "update ({$semester}) set Chinese_language_and_literature = ($language),mathematics = ($mathematicse),English = ($English),chemical = ($chemical),biological = ($biological),history = ($history),geographic = ($geographic),political = ($political),physical = ($physical),Total_score = ($Total_score)  where Student_ID = ('$Modify_grades') && class = ('$class');");
//    mysqli_close($db);                 //炸桥
    return true;
}

//删除成绩-------------------------------------------------------------------------------------------------------------------

function Delete_grades($db,$Modify_grades,$class){

    mysqli_query($db,"delete from 11_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");

    mysqli_query($db,"delete from 12_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");

    mysqli_query($db,"delete from 21_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");

    mysqli_query($db,"delete from 22_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");

    mysqli_query($db,"delete from 31_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");

    mysqli_query($db,"delete from 32_student_achievement where Student_ID =('$Modify_grades') && class = ('$class');");
    //    mysqli_close($db);                 //炸桥
    return true;
}

//删除学生信息----------------------------------------------------------------------------------------------------------------

function Delete_Student_information($db,$Modify_grades,$class){
    mysqli_query($db,"delete from student_account_information where username =('$Modify_grades') && class = ('$class');");
    //    mysqli_close($db);                 //炸桥
    return true;
}

//教师行为记录----------------------------------------------------------------------------------------------------------------

function Behavior_record($db,$ID,$name,$action_1,$Student_ID,$action_2,$class){
    $time = date("Y-m-d H:i:s");
    mysqli_query($db,"insert into sql_log values('$time','$ID','$name','$action_1','$Student_ID','$action_2',$class);");
    //    mysqli_close($db);                 //炸桥
    return true;
}
?>