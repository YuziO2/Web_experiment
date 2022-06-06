// var msg = document.getElementById("msg");
// var options = {
//     'characterData': true
// };

// var observer = new MutationObserver(function (mutation, observe) {
//     console.log(111);
// });

// observer.observe(msg, options);

$(() => {
    $("#username").val($("#preusername").text());
    $("#preusername").remove();
    if ($("#message").text() != "") {//有消息
        $("#message").slideDown(500, () => {
            setTimeout(() => { $("#message").slideUp(500) }, 2000)
        });
        if ($("#message").text() == "无此用户，请注册！") {
            setTimeout(() => { window.location.replace("register.jsp") }, 4000)
        }
        if ($("#message").text() == "您已经登录了！") {
            $("#login").attr("disabled", "true");
            setTimeout(() => { window.location.replace("Personal.jsp") }, 4000)
        }
    }
})
