$(() => {
    var username = $("#username").val();
    $("#frame>span").text(username + "的答题记录");
    $("#username").hover(function () {//鼠标进入动画
        $(this).val("返回答题");
        $(this).animate({ backgroundColor: "rgb(141, 76, 231)", color: "white", borderColor: "red" }, 500);
    }, function () {//鼠标离开动画
        $(this).val(username);
        $(this).animate({ backgroundColor: "rgb(76, 218, 231);", color: "black", borderColor: "black" }, 500);
    });
    $.ajax({
        type: "POST",
        url: "recordExport.jsp",
        data: { queryType: "GENERAL" },
        dataType: "text",
        success: function (data) {
            data = JSON.parse(data);
            data.forEach(element => {
                date = new Date(parseInt(element.date));
                let correct = 0;
                let correctArr = element.correctAnswer.split(",");
                let userArr = element.userAnswer.split(",");
                for (let i = 0; i < correctArr.length; i++) {
                    if (correctArr[i] == userArr[i])
                        correct++;
                }
                $("#list").append(
                    $("<li>").append(
                        $("<div>").text("作答时间")
                    ).append(
                        $("<div>").text(date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate() + " " + (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":" + (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":" + (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds()))
                    ).append(
                        $("<div>").text("正确数：")
                    ).append(
                        $("<div>").text(correct + "/" + correctArr.length)
                    )
                );
            });
            $("#list li").on("click", function () {//不能写在.ajax外面，因为同步任务比异步任务先执行！放在外面是虚空绑定！
                if ($(this).css("position") == "relative") {//放大
                    $(this).css({ "position": "fixed", "z-index": 10, "width": "756px", "left": "350px", "overflow": "auto" });
                    $(this).animate({ "width": "70%", "height": "600px", "top": "10%", "left": "15%" }, 1000);
                    let index = $(this).index();
                    let answerIDArr = data[index].answerID.split(",");
                    let correctArr = data[index].correctAnswer.split(",");
                    let userArr = data[index].userAnswer.split(",");
                    let questionsJSON;
                    let this_li = this;
                    $.ajax({
                        type: "POST",
                        url: "recordExport.jsp",
                        data: { queryType: "DETAIL", ids: data[index].answerID },
                        dataType: "text",
                        success: function (questions) {
                            questionsJSON = JSON.parse(questions);
                            for (let i = 0; i < answerIDArr.length; i++) {
                                $(this_li).append(
                                    $("<div class=\"questions\">").html(i + 1 + "." + questionsJSON[i].question + "<br>A." + questionsJSON[i].A + "<br>B." + questionsJSON[i].B + "<br>C." + questionsJSON[i].C + "<br>您的答案：" + userArr[i] + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正确答案：" + correctArr[i])
                                )
                            }
                        }
                    })

                }
                else {//缩小
                    $(this).fadeOut(500, function () {
                        $(this).css({ "position": "relative", "z-index": 1, "width": "90%", "height": "60px", "left": "", "top": "", 'overflow': "hidden" });
                        $(".questions").remove();
                        $(this).slideDown(300);
                    });
                }
            })
        }
    })
})
