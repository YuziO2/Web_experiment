// var msg = document.getElementById("msg");
// var options = {
//     'characterData': true
// };

// var observer = new MutationObserver(function (mutation, observe) {
//     console.log(111);
// });

// observer.observe(msg, options);

$(() => {
    if ($("#message").text() != "") {
        $("#message").slideDown(500, () => {
            setTimeout(() => { $("#message").slideUp(500) }, 2000)
        });
    }
})
