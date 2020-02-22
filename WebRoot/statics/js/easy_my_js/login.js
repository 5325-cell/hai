$(function () {
    $("#button").click(function () {
        //获取账号
        var $username=$("#loginName").val();
        //获取密码
        var $password=$("#password").val();
        if ($username==null||$username==""){//说明用户没有输入账号
            //提示用户输入
            alert("账号不能为空");
            //选中没有输入的框
            $("#loginName").focus();
        } else if ($password==null||$password==""){//说明用户没有输入密码
            //提示用户输入
            alert("密码不能为空");
            //选中没有输入的框
            $("#password").focus();
        } else{//使用ajax提交servlet处理本次请求
            $.ajax({
                url:"../LoginServlet",
                type:"post",
                data:{"opr":"login","username":$username,"password":$password},
                datatype:"json",
                success:function (result) {
                   // 返回数据
                   alert(result)
                }
            })
        }
    })
})