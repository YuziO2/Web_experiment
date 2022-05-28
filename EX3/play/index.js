let maxQuestion = 0;
$("#enter").on("click", () => {
    $("#center").animate({ "height": 700, "margin-top": 40 }, 1000);
    $("#question,ul").slideDown(1000);
    $("img").hide(1000);
    $("#head").text("请作答：");
    $("#head").animate({ "font-size": 25 }, 1000);
    $.getJSON("./dynamicQuestion.json", (data) => {
        maxQuestion = data.length;
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
let correctAnswer = [];
let answerID = [];
let userAnswer = [];
$.getJSON("./dynamicQuestion.json", (data) => {
    for (let i = 0; i < data.length; i++) {
        correctAnswer.push(data[i].Answer);
        answerID.push(data[i].id);
    }
    console.log(correctAnswer.join(","));
    console.log(answerID.join(","));
});

$("#submit").on("click", () => {
    if (!$("form").serialize().length) { return }//还没选呢！啥也不干
    userAnswer.push($("form").serialize()[$("form").serialize().length - 1]);//放入所选答案
    currentQuestion++;
    if (currentQuestion < maxQuestion) {//没到最后一题，展示下一题
        $.getJSON("./dynamicQuestion.json", (data) => {
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
        for (let i = 0; i <= correctAnswer.length - 1; i++) {
            correctAnswer[i] == userAnswer[i] ? null : wrongQuestion.push(i + 1);//wrongQuestion中存的是题号！
        }
        console.log(wrongQuestion);
        if (wrongQuestion.length == 0) {//全对
            $("#question").text("恭喜你！全部回答正确！但也要继续学习哦！");
        }
        else {
            $("#question").text("本次一共回答正确了" + (maxQuestion - wrongQuestion.length) + "道题目");
            $("#question").after("<span id=\"result\"></span>");
            wrongQuestion = wrongQuestion.join("题，第");
            $("#result").text("错题分别是：第" + wrongQuestion + "题，再接再厉！");
        }
        let date = new Date();
        $.ajax({
            type: "POST",
            url: "recordImport.jsp",
            data: {
                answerID: answerID.join(","),
                userAnswer: userAnswer.join(","),
                correctAnswer: correctAnswer.join(","),
                date: date.getFullYear() + "-" + date.getMonth() + "-" + date.getDate() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds()
            }
        })
    }
})

$("#recordlist").on("click", () => {
    window.location.href = 'recordlist.jsp';
})
