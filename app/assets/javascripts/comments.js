$(document).ready(function () {
  $("#comment_text").on('keypress', function(e){
    if (e.keyCode === 13 && !e.shiftKey) {
        e.preventDefault();
        document.querySelector("form[action=comments] input[type=submit]").click();
    }
  });
});
