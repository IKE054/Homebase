// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// config dropzone
$(function(){
  Dropzone.autoDiscover = false;
 // おまじない
 debugger;
  $("#item-dropzone").dropzone({
    maxFilesize: 2,
    addRemoveLinks: true,
    dictRemoveFile:'削除',
    paramName: 'item[item_image]',
    success: function(file, response){
			$(file.previewElement).find('.dz-remove').attr('id',response.itemId);
			$(file.previewElement).addClass('dz-success');
		},
    removedfile: function(file){
      var id = $(file.previewTemplate).find('.dz-remove').attr('id');
      $.ajax({
        type: 'DELETE',
        url: "/items/" + id,
        success: function(data){
          console.log('data.message');
        }
      });
      var previewElement;
      return (previewElement = file.previewElement) != null ? (previewElement.parentNode.removeChild(file.previewElement)) : (void 0);
    }
 
  });
});