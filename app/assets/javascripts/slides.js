$(document).ready(function () {
  $(document).on('keydown', function(e){
    if (e.keyCode === 39) {
      var el = document.getElementById("next");
      if (el) el.click();
    }
    else if (e.keyCode === 37) {
      var el = document.getElementById("prev");
      if (el) el.click();
    }
  });
});
