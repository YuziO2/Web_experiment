$(() => {
    if ($("#message").text() != "") {//有消息
        $("#message").slideDown(500, () => {
            setTimeout(() => { $("#message").slideUp(500) }, 2000)
        });
        if ($("#message").text() == "密码错误力！") {
            $("#username").val($("#preusername").text());
            $("#preusername").remove();
        }
        if ($("#message").text() == "账号已存在，请登录！") {
            setTimeout(() => { window.location.replace("register.jsp") }, 4000)
        }
    }
})

function checkpwd() {
    console.log($("#password").val() + "    " + $("#Re_password").val())
    if ($("#password").val() != $("#Re_password").val()) {
        $("#message").text("两次输入密码不一致！");
        $("#message").slideDown(500, () => {
            setTimeout(() => { $("#message").slideUp(500) }, 2000)
        });
        return false;
    }
    return true;
}