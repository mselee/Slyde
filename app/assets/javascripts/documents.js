$(document).ready(function () {
  $('#document_file_path').on('change', function(){
    $('#new_document').trigger('submit');
  });
});
