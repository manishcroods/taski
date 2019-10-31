/**
 * This File is For Category and Brand New Modal
 * Category and Brand Ajax Insert
 * Category and Brand Validation
 */

$(document).ready(function(){

	$("#category_new_form").formValidation({
		framework : 'bootstrap',
		/*live:'disabled',*/
		excluded : ":disabled",
		button:{
			selector : "#savecategory",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			category:{
				validators: {
					notEmpty: {
						message: 'The Name is required. '
					},
					remote : {
						message : 'This Name is already exist. ',
						url : "/category/verify",
						type : 'POST'
					}
				}
			},
			description:{
				validators: {
				}
			}
		}
	}).on('success.form.fv', function(e) {
		 e.preventDefault();//stop the from action methods
		 $("#savecategory").attr("disabled",true);
		 $.post("/category/save", {
			 name: $('#categoryNameModal').val(),
			 description:$('#categoryDescriptionModal').val()
		 }, function( data,status ) {
			 toastr["success"]("Record Inserted....");
			 $('#category_new_modal').modal('toggle');
			 location.reload(true);
		 });
		 
	});
	
	$('#category_new_modal').on('show.bs.modal', function() {
		$("#savecategory").attr("disabled",false);
		$('#category_new_form').formValidation('resetForm', true);
	});
	
	$("#savecategory").click(function() {
		$('#category_new_form').data('formValidation').validate();
	});

});