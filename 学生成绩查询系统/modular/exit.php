<?php
session_start();//开启session

if(isset($_COOKIE['name']) && isset($_COOKIE['password'])){
    setcookie('name','', time() - 7200,'/');
    setcookie('password','', time() - 7200,'/');
}

if (!empty($_SESSION['name'])){
    session_unset(); // 释放当前在内存中已经创建的所有$_SESSION变量，但是不删除session文件以及不释放对应的session id；
    session_destroy(); // 删除当前用户对应的session文件以及释放session id，内存中$_SESSION变量内容依然保留；

    header('location:../login.php');
    return;
}elseif(!empty($_SESSION['teacher'])){
    session_unset(); // 释放当前在内存中已经创建的所有$_SESSION变量，但是不删除session文件以及不释放对应的session id；
    session_destroy(); // 删除当前用户对应的session文件以及释放session id，内存中$_SESSION变量内容依然保留；

    header('location:../login_teacher.php');
    return;
}
    session_unset(); // 释放当前在内存中已经创建的所有$_SESSION变量，但是不删除session文件以及不释放对应的session id；
    session_destroy(); // 删除当前用户对应的session文件以及释放session id，内存中$_SESSION变量内容依然保留；

    header('location:../login.php');
?>