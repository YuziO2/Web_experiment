$("#enter").on("click", () => {
    $("#center").animate({ "height": 700, "margin-top": 40 }, 1000);
    $("#question,ul").slideDown(1000);
    $("img").hide(1000);
    $("#head").text("请作答：");
    $("#head").animate({ "font-size": 25 }, 1000);
    $.getJSON("./play/Question.json", (data) => {
        $("#question").html(data[0].Question)
        $("label[for='radioA']").text("A." + data[0].A);
        $("label[for='radioB']").text("B." + data[0].B);
        $("label[for='radioC']").text("C." + data[0].C);
        //console.log(data[0].A);
    })
    $("#enter").hide();
    $("#submit").show();
})

let currentQuestion = 0;
const maxQuestion = 10;//data.length
let currentAnswer = [];
let userAnswer = [];
$.getJSON("./play/Question.json", (data) => {
    for (let i = 0; i < data.length; i++) {
        currentAnswer.push(data[i].Answer);
    }
    console.log(currentAnswer);
});

$("#submit").on("click", () => {
    if (!$("form").serialize().length) { return }//还没选呢！啥也不干
    userAnswer.push($("form").serialize()[$("form").serialize().length - 1]);//放入所选答案
    currentQuestion++;
    if (currentQuestion < maxQuestion) {//没到最后一题，展示下一题
        $.getJSON("./play/Question.json", (data) => {
            $("#question").html(data[currentQuestion].Question);
            $("label[for='radioA']").text("A." + data[currentQuestion].A);
            $("#radioA").prop("checked", false);//对于true和false应使用prop而非attr！！！
            $("label[for='radioB']").text("B." + data[currentQuestion].B);
            $("#radioB").prop("checked", false);
            $("label[for='radioC']").text("C." + data[currentQuestion].C);
            $("#radioC").prop("checked", false);
        })
    }
    else {//最后一题，展示结果页
        console.log(userAnswer);
        $("#head").text("答题结果：");
        $("#head").animate({ "font-size": 45 }, 1000);
        $("ul,#submit").hide(1000);
        $("#refresh").show(1000);
        $("#back").show(1000);
        let wrongQuestion = [];
        for (let i = 0; i <= currentAnswer.length - 1; i++) {
            currentAnswer[i] == userAnswer[i] ? null : wrongQuestion.push(i + 1);//wrongQuestion中存的是题号！
        }
        console.log(wrongQuestion);
        if (wrongQuestion.length == 0) {//全对
            $("#question").text("恭喜你！全部回答正确！但也要继续学习哦！");
        }
        else {
            $("#question").text("本次一共回答正确了" + (10 - wrongQuestion.length) + "道题目");
            $("#question").after("<span id=\"result\"></span>");
            wrongQuestion = wrongQuestion.join("题，第");
            $("#result").text("错题分别是：第" + wrongQuestion + "题，再接再厉！");
        }
    }
})
