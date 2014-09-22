// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
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

  submit_sort.on('click', function(){
    alert('fuckyeah');
  });


  sortables.sortable();
  sortables.disableSelection();
});
