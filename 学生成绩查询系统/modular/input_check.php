<?php
error_reporting(E_ALL^E_NOTICE^E_WARNING);  //关闭报错
//匿名函数回显
$alert = function($str){
    echo "<script>";
    echo "alert('$str');";
    echo "history.back()";
    echo "</script>";
    return false;
};

//检查验证码

function authcode($authcode,$alert){
    if(isset($authcode)){
        //strtolower()小写函数
        $authcode = preg_replace("/[^0-9a-zA-Z]/", "", $authcode);
        if(strtolower($authcode) != $_SESSION['authcode']){
            $_SESSION['authcode'] = "";
            return $alert('验证码错误!');
        }else {
            $_SESSION['authcode'] = "";
            return true;
        }
    }
    return $alert('验证码提交失败!');
}

//登录输入检查-----------------------------------------------------------------------------
function input_login_username_check (&$username = false,$alert){ //username检查过滤
    if (empty($username) || !($username = substr($username,0,16)) || !($username = preg_replace("/[^0-9a-zA-Z_]/", "", $username))){
        return $alert('请输入学号!');
    }
    return true;
}

function input_login_password_check (&$password = false,$alert){ //passworde检查过滤
    if (empty($password) || !($password = substr($password,0,32)) || !($password = preg_replace("/[^0-9a-zA-Z_]/", "", $password))){
        return $alert('请输入密码!');
    }
    return true;
}

//注册输入检查----------------------------------------------------------------------------
function input_Registration_name_check(&$name = false,$alert){  //name检查过滤
    if (empty($name) || !($name = substr($name,0,16)) || !($name = preg_replace("/[^\x{4e00}-\x{9fa5}]/u", "", $name))) {
        return $alert('请输入名字!');
    }
    return true;
}

function input_Registration_phone_check(&$phone = false,$alert){    //phone检查过滤
    if (empty($phone) || !($phone = substr($phone,0,16)) || !($phone = preg_replace("/[^0-9]/", "", $phone))) {
        return $alert('请输入手机号!');
    }
    return true;
}

function input_Registration_id_check(&$id = false,$alert){  //id检查过滤
    if (empty($id) || !($id = substr($id,0,32)) || !($id = md5($id)) || !($id = preg_replace("/[^0-9a-z]/", "", $id))) {
        return $alert('请输入身份证!');
    }
    return true;
}

function input_Registration_mailbox_check(&$mailbox = false,$alert){    //mailbox过滤格式检查
    if ((empty($mailbox)) || !($mailbox = substr($mailbox,0,32)) || !($mailbox = preg_replace("/[^0-9a-z@.]/", "", $mailbox)) || !(filter_var($mailbox, FILTER_VALIDATE_EMAIL))) {
        return $alert('邮箱有误!');
    }
    return true;
}

function input_Registration_class_check(&$class = false,$alert){    //班级检查过滤
    if (empty($class) || !($class = preg_replace("/[^0-9]/", "", $class))) {
        return $alert('请输入班级!');
    }
    return true;
}

//加密cookie----------------------------------------------------------------------

function cookie_base64($value,$type = 0) {
    $key = md5('唐英杰黎玉泉黄朝东梁德圣共同设计');//里边的字符可以自己设置
    if (!$type) {   //判断是否加密
        return str_replace('=', '', base64_encode($value ^ $key));
    }
    $value = base64_decode($value);
    return $value ^ $key;
}

//file检查过滤----------------------------------------------------------------------

function mkThumbnail($src, $width = null, $height = null, $filename = null,$alert) {
    $size = getimagesize($src);     //获取图像大小及相关信息

    if (!$size)
        return $alert('文件上传有误!');
    list($src_w, $src_h, $src_type) = $size;
    switch ($src_type) {    //检查类型
        case 1 :
            $img_type = 'gif';
            break;
        case 2 :
            $img_type = 'jpeg';
            break;
        case 3 :
            $img_type = 'png';
            break;
        case 15 :
            $img_type = 'wbmp';
            break;
        default :
            return $alert('文件上传有误!');
    }

    //等比例缩放
    if (!isset($width))
        $width = $src_w * ($height / $src_h);
    if (!isset($height))
        $height = $src_h * ($width / $src_w);

    //根据上传的文件的类型来调用不同函数
    $imagecreatefunc = 'imagecreatefrom' . $img_type;
    $src_img = $imagecreatefunc($src);

    //新建一个真彩色图像
    $dest_img = imagecreatetruecolor($width, $height);

    //重采样拷贝部分图像并调整大小
    imagecopyresampled($dest_img, $src_img, 0, 0, 0, 0, $width, $height, $src_w, $src_h);
    $imagefunc = 'image' . $img_type;
    $imagefunc($dest_img, $filename);

    //销毁文件资源
    imagedestroy($src_img);
    imagedestroy($dest_img);
    return true;
}

//成绩过滤-------------------------------------------------------------------------------------------------------------------

function input_achievement_check(&$achievement = false,$alert){     //成绩检查过滤
    if (empty($achievement) || !($achievement = preg_replace("/[^0-9]/", "", $achievement))) {
        return $alert('请输入成绩!');
    }
    return true;
}
?>