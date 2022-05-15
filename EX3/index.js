$(() => {
    let menulevel1 = ["时间长河", "长廊一角", "人物掠影", "党史答题"];
    for (const key in menulevel1) {
        if (Object.hasOwnProperty.call(menulevel1, key)) {
            const element = menulevel1[key];
            $("header .menu").append($("<div class=\"menu" + key + "\"></div>").append("<span class=\"menulevel1\">" + element + "</span>"));
        }
    }
    $("header .menu .menu" + (menulevel1.length - 1)).css("padding-top", "5px");//调一下答题span的上内边距
    $("header .menu .menu" + (menulevel1.length - 1) + " span").html("<button id=\"answer\" class=\"button button-glow button-border button-rounded button-caution\" onclick = \"window.location.href='./play/play.jsp'\" >" + menulevel1[menulevel1.length - 1] + "</button>");//放个按钮
    let menulevel2 = [["黎明前夜", "燎原星火", "曲折前行", "谱写新章"], ["占位符", "占位符", "占位符"], ["占位符", "占位符", "占位符"], []];
    for (const key in menulevel2) {
        if (Object.hasOwnProperty.call(menulevel2, key)) {
            const element = menulevel2[key];
            $("header .menu .menu" + key).append("<ul></ul>");
            // $("header .menu .menu" + key).mouseenter(function () { $(this).find("ul").stop().slideDown(500); });//绑定事件，鼠标悬停展开
            // $("header .menu .menu" + key).mouseleave(function () { $(this).find("ul").stop().slideUp(500); });//鼠标离开升起
            for (let j = 0; j < element.length; j++) {
                $("header .menu .menu" + key + " ul").append("<li>" + element[j] + "</li>");
            }
        }
    }

    let username = $("#username").text().trim();
    $("#username").remove();
    if (username == "") {//未登录
        $("#account").css("width", "170px");
        $(".unlogged").attr("style", "");
    }
    else {//已登录
        $("#account").css("width", "170px");
        $(".logged").text(username);
        $(".logged").attr("style", "");
    }

    $("#fontSizeSwitcher .fontSize:eq(0)").on("click", () => {//字体小
        $("#sliding_block").animate({ "left": "2%" }, 500);
        $("#intro h1").animate({ "font-size": "2em" }, 500);
        $("#intro p").animate({ "font-size": "18px", "text-indent": "36px" }, 500);
    })
    $("#fontSizeSwitcher .fontSize:eq(1)").on("click", () => {//字体中
        $("#sliding_block").animate({ "left": "35%" }, 500);
        $("#intro h1").animate({ "font-size": "3em" }, 500);
        $("#intro p").animate({ "font-size": "22px", "text-indent": "44px" }, 500);
    })
    $("#fontSizeSwitcher .fontSize:eq(2)").on("click", () => {//字体大
        $("#sliding_block").animate({ "left": "68%" }, 500);
        $("#intro h1").animate({ "font-size": "4em" }, 500);
        $("#intro p").animate({ "font-size": "28px", "text-indent": "56px" }, 500);
    })

    var swiper = new Swiper('.swiper', {
        speed: 1000,
        loop: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        pagination: {
            el: ".swiper-pagination",
        },
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
            pauseOnMouseEnter: true,
        },
    });

});