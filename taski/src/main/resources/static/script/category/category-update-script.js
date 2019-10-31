/**
 * This File is For Category and Brand Update Modal
 * Category and Brand Ajax Insert
 * Category and Brand Validation
 */

$(document).ready(function(){

	$("#category_update_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#updatecategory",
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
						type : 'POST',
						data: function(validator, $field, value) {
	                            return {
	                            	categoryId : $('#upcatid').val(),
	                            };
	                        },
					} 
                   
				}
			},
			catupdesc:{
				validators: {
					
				}
			}
		}
	}).on('success.form.fv', function(e) {
		 e.preventDefault();//stop the from action methods
		 $("#updatecategory").attr("disabled",true);
		 $.post("/category/update", {
			 name: $('#upcatname').val(),
			 description:$('#upcatdesc').val(),
			 id:$('#upcatid').val()
		 }, function( data,status ) {
			
			 toastr["success"]("Record Updated....");
			 
			 $('#category_update_modal').modal('toggle');
			 
			 location.reload(true);
			
		 });
	});
	
	$("#updatecategory").click(function() {
		$('#category_update_form').data('formValidation').validate();
	});

	
});


function updateCategory(row,id)
{  		
	$("#updatecategory").attr("disabled",false);
	$('#category_update_form').formValidation('resetForm', true);
	
	var crow=$(row).closest('tr');		
	var name=$(crow).find('td:eq(1)').text();
	var description = $(crow).find('td:eq(2)').text();

	$('#upcatname').val(name);
	$('#upcatdesc').val(description);
	$('#upcatid').val(id);

}
