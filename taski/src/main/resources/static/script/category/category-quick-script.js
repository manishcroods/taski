/**
 * This File is For Category and Brand New Modal
 * Category and Brand Ajax Insert
 * Category and Brand Validation
 */

$(document).ready(function(){
	
	$(".category-select2").each(function() {
    	
    	placeholder="Select...";
    	if($(this).attr("placeholder")) {
    		placeholder=$(this).attr("placeholder");
    	}
    	
    	allowClear=0;
    	if($(this).data('allow-clear')) {
    		allowClear=	!0;
    	}
    	$(this).select2({
    		placeholder:placeholder,
    		allowClear:allowClear,
    		escapeMarkup: function (markup) { return markup; },
			 language: {
	            noResults: function () {
	            	return '<div class="m-demo-icon"><div class="m-demo-icon__preview"><span class=""><i class="flaticon-plus m--font-primary"></i></span></div><div class="m-demo-icon__class"><a href="#" data-toggle="modal" class="m-link m--font-boldest add-category-btn">Add Category</a></div></div>';
	            }
	        }
    	});
    });
	
	$(document).on("click",".add-category-btn",function() {
		$('#category_new_form').formValidation('resetForm', true);
		$("#category_new_modal").modal("show")
		$("#categoryNameModal").val($(".select2-search__field").val());
		
		$(".category-select2").select2("close");
	});
	

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
			 toastr["success"]("Category Inserted....");
			 $('#category_new_modal').modal('toggle');
			 $(".category-select2").prepend($('<option>',{value :data.categoryId, text :data.categoryName}));
			 $(".category-select2").val(data.categoryId).trigger("change");
		 });
		 
	});
	
	$('#category_new_modal').on('shown.bs.modal', function() {
		$("#savecategory").attr("disabled",false);
		$("#categoryNameModal").focus();
	});
	
	$("#savecategory").click(function() {
		$('#category_new_form').data('formValidation').validate();
	});

});