/**
 * This File is For Prefix New Modal
 * Prefix Ajax Insert
 * Prefix Validation
 */

$(document).ready(function(){
	$("#prefix_update_form").formValidation({
		framework : 'bootstrap',
		live:'disabled',
		excluded : ":disabled",
		button:{
			selector : "#updateprefix",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			prefix:{
				validators: {
					notEmpty: {
						message: 'The Prefix is required. '
					}
				}
			},
			sequenceNo:{
				validators: {
					notEmpty: {
						message: 'The Sequence No. is reqired. '
					},
				}
			},
		}
	}).on('success.form.fv', function(e) {
		 e.preventDefault();//stop the from action methods
		 $.post("/prefix/update", {
			 prefixId:$('#prefixId').val(),
			 prefixType:$('#prefixType').val(),
			 prefix:$('#prefix').val(),
			 sequenceNo:$('#sequenceNo').val()
		 }, function( data,status ) {
			
			 toastr["success"]("Record Updated....");
			
			 $('#prefix_update_modal').modal('toggle');
			
			location.reload(true);
			
		 });
	});
	
	$('#prefix_update_modal').on('hide.bs.modal', function() {
		$('#prefix_update_form').formValidation('resetForm', true);
	});
	
	$("#updateprefix").click(function() {
		$('#prefix_update_form').data('formValidation').validate();
	});
	
});

function updatePrefix(row,id)
{
	$('#prefix_update_form').formValidation('resetForm', true);
	
	var crow=$(row).closest('tr');		
	var prefixType=$(crow).find('td:eq(1)').text();
	var prefix = $(crow).find('td:eq(2)').text();
	var sequenceNo = $(crow).find('td:eq(3)').text();
	var rowindex = $(crow).find('td:eq(0)').text();
	$('#prefixId').val(id);
	$('#prefixType').val(prefixType);
	$('#prefix_type').text(prefixType);
	$('#prefix').val(prefix);
	$('#sequenceNo').val(sequenceNo);
	
}