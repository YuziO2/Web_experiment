$(() => {
    var username = $("#username").text().trim();
    console.log(username);
    $("header").text("欢迎，" + username);
})