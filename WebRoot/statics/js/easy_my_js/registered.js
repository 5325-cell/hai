function reUser() {
      //获取登录名
    var $loginUser = $("#l_user").val();
    //获取密码
    var $password = $("#l_pwd").val();
    //获取确认密码
    var $newPassword = $("#newL_pwd").val();
    //获取真实姓名
    var $username = $("#l_username").val();
    //获取性别
    var $sex = $("input[name='sex']:checked").val();
    //身份证号
    var $identityNum = $("#identityCode").val();
    //获取邮箱
    var $email = $("#email").val();
    //获取手机号码
    var $phone = $("#mobile").val();


    //判断
    if ($loginUser == "" || $loginUser == null) {
        message("#l_user", "登录名不能为空")
    } else if (!doPassword($password)){
            message("#l_pwd", "只能输入6-20个字母、数字、下划线 ")
        }
     else if ($password != $newPassword){
            message("#newL_pwd", "两次密码输入不一致")
        }
     else if (doActualName($username)) {
        message("#l_username", "请输入不超过个20字符真实姓名")
    } else if ($identityNum.length != 18&&$identityNum!=null&&$identityNum!="") {
            message("#identityCode", "身份证号码格式不正确")
    } else if (!doEamil($email)&&$email!=null&&$email!="") {
            message("#email", "邮箱格式不正确")
    } else if ($phone != null && $phone != ""&&$phone.length != 11) {
            message("#mobile", "手机号码格式不正确")
    } else {
            //开始ajax请求保存此次用户的请求
            $.ajax({
                url: "../RegisteredServlet",
                type: "post",
                data: {
                    "opr": "registered",
                    "loginUser": $loginUser,
                    "password": $password,
                    "username": $username,
                    "sex": $sex,
                    "identityNum": ($identityNum==null)?"":$identityNum,
                    "email": ($email==null)?"":$email,
                    "phone": ($phone==null)?"":$phone,
                    "type": 0
                },
                datatype: "json",
                success: registrationCallback
            })
    }
}

    //    设计一个方法 用于提示用户
    function message(Positioning,str) {
        alert(str);
        $(Positioning).focus();
    }

    //验证密码
    function doPassword(password) {
        var reg=/^(\w){6,20}$/;
        if (reg.test(password)) {
            return true;
        }else{
            return false;
        }
    }
    //验证真实姓名
    function doActualName(actualName) {
        if (actualName.length<20&&actualName>0){
            return true;
        } else{
            return false;
        }
    }

    //验证邮箱
    function doEamil(email) {
        var reg=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
        if (reg.test(email)){
            return true;
        } else{
            return false;
        }
    }
        //注册
    //ajax回调函数
    function registrationCallback(result) {
       alert(result)
    }

