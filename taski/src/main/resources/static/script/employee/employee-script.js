/**
 * This File is For Employee New
 * Employee Validation
 */
	var nameValidator = {
		validators : {
			notEmpty : {
				message : 'The Name is required. '
			},
			stringLength : {
				max : 100,
				message : 'The Name Not More  than 100 characters long. '
			},
			regexp : {
				regexp : /^[a-zA-Z0-9_-\s-.,()& ]+$/,
				message : 'The Name can only consist of alphabetical, numberical value. '
			}
		}
	}, 
	mobilenoValidator = {
		validators : {
			stringLength : {
				max : 15,
				message : 'The Mobile no. must be 15 digit long. '
			},
			regexp : {
				regexp : /^[0-9+]+$/,
				message : 'The Mobile no. can only consist numerical value. '
			}
		}
	}, 
	relationValidator = {
		validators : {
			regexp : {
				regexp : /^[a-zA-Z0-9_-\s-.,()& ]+$/,
				message : 'The Relation can only consist of alphabetical, numberical value. '
			},
		}
	};
	$(document).ready(function(){
		
		$("#employee_form").formValidation({
			framework : 'bootstrap',
			/* live:'disabled', */
			excluded : ":disabled",
			button:{
				selector : "#save_employee",
				disabled : "disabled",
			},
			icon : null,
			fields : {
				employeeName : {
					validators : {
						notEmpty : {
							message : 'The employee name is required. '
						},
						stringLength : {
							max : 50,
							message : 'The employee name must be less than 50 characters long. '
						},
						regexp : {
							regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
							message : 'The employee name can only consist of alphabetical, number and underscore. '
						}
					}
				},
				employeeMobileno:{
					validators:    {
						notEmpty :   {
							message : 'The mobile no. is required. '
						        },
				        remote : {
							message : 'This Mobile no. is already exist. ',
							url : "/employee/mobileno/verify",
							type : 'POST',
							data: function(validator, $field, value) {
		                       // var id = $field.closest("tr").find("[id*=employeeId]").val();
		                        return {
									employeeId : $('#employeeId').val(),
		                        };
		                    },
						},
						stringLength :  {
							max : 10,
							message : 'The mobile no. must be 10 digit long. '
						        },
						regexp : {
							 regexp : /^[0-9+]+$/,
							message : 'The mobile no. can only consist of number. '
						       }
					      }
				   },
				employeeEmail:{
					validators: {
						regexp :   {
							regexp : /^[a-z|A-Z|]+([.|-]?[a-z|A-Z|0-9|_]+)*@[a-z|A-Z]+[a-z|A-Z|0-9|-]*[a-z|A-Z|0-9]+[\\.]+[a-z|A-Z]+([.]?[a-z|A-Z]+)$/,
							message : 'The email address is not valid. '
						       }
					     }
				   },
			alternativeMobileno:{
					 validators:  {
					stringLength :  {
							max : 10,
							message : 'The mobile no. must be 10 digit long. '
						       },
						    regexp : {
							regexp : /^[0-9+]+$/,
							message : 'The mobile no. can only consist of number. '
						       }
					      }
				    },
				alternativeEmail:{
					   validators: {
						    regexp : {
								regexp : /^[a-z|A-Z|]+([.|-]?[a-z|A-Z|0-9|_]+)*@[a-z|A-Z]+[a-z|A-Z|0-9|-]*[a-z|A-Z|0-9]+[\\.]+[a-z|A-Z]+([.]?[a-z|A-Z]+)$/,
							message : 'The email address is not valid. '
						        }
					     }
				   },
				   whatsappNo : {
						validators : {
							stringLength : {
								max : 15,
								message : 'The WhatsApp no. must be 15 digit long. '
							},
							regexp : {
								regexp : /^[0-9+]+$/,
								message : 'The WhatsApp no. can only consist numerical value. '
							}
						}
					},
				   panNo:{
					   validators: {
						stringLength : {
							max : 10,
							message : 'The pan no. not more than 10 digit long. '
						       },
						    regexp : {
							regexp : /^[A-Za-z]{5}\d{4}[A-Za-z]{1}$/,
							message : 'The pan no. is not valid. '
						       }
					     }
				   },
				   departmentVo:{
					  validators: {
						  notEmpty : {
							message : 'select department. '
						      }
					     }
				    },
			    	designationVo:{
				    	validators: {
					    	notEmpty : {
							message : 'select designation. '
						}
					}
				},
				   addressLine1:{
					   validators: {
						stringLength : {
							max : 80,
							message : 'The address line 1 must be less than 80 characters long. '
					        	},
						regexp : {
							regexp : /^[a-zA-Z0-9_-\s-.,()&/ ]+$/,
							message : 'The Address Line can only consist of alphabetical, numberical value. '
						       }
					     }
				  },
				addressLine2:{
					 validators: {
						stringLength : {
							max : 80,
							message : 'The address line 2 must be less than 80 characters long. '
					        	},
						regexp : {
							regexp : /^[a-zA-Z0-9_-\s-.,()&/ ]+$/,
							message : 'The Address Line can only consist of alphabetical, numberical value. '
						       }
					    }
				},
				countriesCode:{
					validators: {
						notEmpty : {
							message : 'select country. '
						        }
					     }
				 },
				   stateCode:{
					validators: {
					    notEmpty : {
							message : 'select state. '
				        	   }
					    }
				},
				cityCode:{
					validators: {
						notEmpty : {
							message : 'select city. '
						       }
					      }
				    },
			    	pinCode:{
					validators: {
						regexp :  {
							regexp : /^\d{6}$/,
							message : 'The ZIP/Postal code can only consist of number. '
						       }
					     }
				  },
				         ctc:{
					validators: {
						 regexp : {
							regexp:/^((\d+)((\.\d{0,2})?))$/,
							message : 'The CTC is invalid. '
						       }
					    }
				  },
				userName:{
					validators: {
						 notEmpty : {
							message : 'The UserName name is required. '
					           },
						stringLength : {
							max : 50,
							message : 'The UserName must be less than 50 characters long. '
						       },
						regexp : {
							regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
							message : 'The UserName can only consist of alphabetical, number and underscore. '
						       }
					    }
				  },
				password:{
					validators: {
						notEmpty : {
							message : 'The password is required. '
						},
					}
				},
				userRoleId : {
					validators : {
						notEmpty : {
							message : 'The User Role is required. '
						},

					}
				},
			}
		 });
		
		if($("#authentication_details").hasClass('show')) {
			$("#authenticationDetailsBtn").html("Cancel Authentication Details");
			$("#icon").toggleClass("down");
		} else {
			$('#employee_form').formValidation('enableFieldValidators', 'userName', false);
			$('#employee_form').formValidation('enableFieldValidators', 'password', false);
			$('#employee_form').formValidation('enableFieldValidators', 'userRoleId', false);
		}
		
		if($("#employeeId").val() != undefined) {
			$('#employee_form').formValidation('removeField', 'password');
		}
		
		getAllCountryAjax("countriesCode");
		
		$("#authenticationDetailsBtn").click(function() {
			
			if($("#authentication_details").hasClass('show')) {
				$("#authentication_details").collapse('hide');
				$(this).html("Add Authentication Details");
				$("#icon").toggleClass("down");
				$("#password").val("");
				$("#userName").val("");
				$("#userRoleId").val("").trigger("change");
				$('#employee_form').formValidation('enableFieldValidators', 'userName', false);
				$('#employee_form').formValidation('enableFieldValidators', 'userRoleId', false);
				$('#employee_form').formValidation('enableFieldValidators', 'password', false);
				
				
				
			} else {
				$("#authentication_details").collapse('show');
				$(this).html("Cancel Authentication Details");
				$("#icon").toggleClass("down");
				$("#password").val("");
				$("#userName").val("");
				$("#userRoleId").val("").trigger("change");
				$('#employee_form').formValidation('enableFieldValidators', 'userName', true);
				$('#employee_form').formValidation('enableFieldValidators', 'userRoleId', true);
				$('#employee_form').formValidation('enableFieldValidators', 'password', true);
				
				
			}
		});
		
		if($("#userFrontId").val() != undefined) {
			$("#authentication_details").collapse('show');
			$(this).html("Cancel Authentication Details");
			$("#icon").toggleClass("down");
			
			$("#password").closest(".col-lg-3").addClass("m--hide")
		}
		
		/**
		 * Contact Other Repeater 
		 */
		
		$("#contact_other_repeater").repeater({
			initEmpty:$("#contact_other_repeater").find("input[id*='employeeContactId']").length==0 ? true : false,	
	        isFirstItemUndeletable: false,
			/* defaultValues: {
	            "text-input": "foo"
	        }, */
	        show: function() {
	            
	        	index=$(this).index();
	        	
	        	$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].name", nameValidator);
	        	$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].relation", relationValidator);
	        	$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].mobileno", mobilenoValidator);
	        	     	
	        	$(this).slideDown({
	        		complete: function(){
	                	if($("#contact_other_repeater").find("div[data-repeater-item]").length == 3) {
	                		$("#contact_other_repeater").find("a[data-repeater-create]").closest(".m-demo-icon").addClass("m--hide");
	                	}
	        		}
	            });
	
	        },
	        hide: function(e) {
	        	index =$(this).index();
	        	
	        	$('#employee_form').formValidation('removeField',"employeeContactVos["+index+"].name");
	        	$('#employee_form').formValidation('removeField',"employeeContactVos["+index+"].relation");
	        	$('#employee_form').formValidation('removeField',"employeeContactVos["+index+"].mobileno");
	        	
	        	if($("#deleted-contact-other").val() != undefined) {
	        		if($("#contactOtherId"+index).val() != '') {
	        			$("#deleted-contact-other").val($("#deleted-contact-other").val() + $("#employeeContactId"+index).val() + ",");
	        		}
	        	}
	        	$(this).slideUp({
	        		complete: function(){
	        			$(this).remove();
	        			if($("#contact_other_repeater").find("div[data-repeater-item]").length < 3) {
	                		$("#contact_other_repeater").find("a[data-repeater-create]").closest(".m-demo-icon").removeClass("m--hide");
	                	}
	        		}
	            })
	            $(this).remove()
	        },
	        
	        ready: function (setIndexes) {
	        	/* $dragAndDrop.on('drop', setIndexes); */
	        },
	        
	   
		});
		
		$("#contact_other_repeater").find("[data-repeater-item]").each(function() {
			
			index=$(this).index();
	    	
			$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].name", nameValidator);
        	$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].relation", relationValidator);
        	$('#employee_form').formValidation('addField',"employeeContactVos["+index+"].mobileno", mobilenoValidator);
		});
		
	});