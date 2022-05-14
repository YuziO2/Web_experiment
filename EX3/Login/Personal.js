$(() => {
    var username = $("#username").val();
    console.log(username);
    $("header").text("欢迎，" + username);
    $("#username").hover(function () {//鼠标进入动画
        $(this).val("登出");
        $(this).animate({ backgroundColor: "blue", color: "white", borderColor: "red" }, 500);
    }, function () {//鼠标离开动画
        $(this).val(username);
        $(this).animate({ backgroundColor: "rgb(127, 255, 212)", color: "black", borderColor: "black" }, 500);
    });
})