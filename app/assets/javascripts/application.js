//= require jquery
//= require jquery_ujs
//= require jquery-ui/sortable
//= require turbolinks
//= require ckeditor/init
//= require_tree .
$(function(){
  var sortables = $('#sortable'),
      sort_button = $('#sort-testimonies'),
      submit_sort = $('#submit-sort');

  sort_button.on('click', function(event){
    event.preventDefault();
    sortables.addClass('sorting');
    submit_sort.show();
  });

  submit_sort.on('click', function(event){
    event.preventDefault();
    // serialize and submit
    alert('fuckyeah');
  });


  sortables.sortable();
  sortables.disableSelection();
});
