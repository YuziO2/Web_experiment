// var msg = document.getElementById("msg");
// var options = {
//     'characterData': true
// };

// var observer = new MutationObserver(function (mutation, observe) {
//     console.log(111);
// });

// observer.observe(msg, options);

$(() => {
    if ($("#message").text() != "") {//有消息
        $("#message").slideDown(500, () => {
            setTimeout(() => { $("#message").slideUp(500) }, 2000)
        });
        if ($("#message").text() == "密码错误力！") {
            $("#username").val($("#preusername").text());
            $("#preusername").remove();
        }
        if ($("#message").text() == "无此用户，请注册！") {
            setTimeout(() => { window.location.replace("register.jsp") }, 4000)
        }
    }
})
