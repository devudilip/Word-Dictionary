$( document ).ready( function () {
	$('form').validate({
		rules:{
			'word[name]':
			{
				required: true,
				minlength: 2,
				maxlength: 50
			},
			'word[correct_words_attributes][0][name]':
			{
				required: true,
				minlength: 2,
				maxlength: 50
			}
			
		},
		messages:{
			'word[name]':
			{
				required: "Can't be blank",
				minlength: 'Min letters should be 2',
				maxlength: 'Max limit reached'
			},
			'word[correct_words_attributes][0][name]':
			{
				required: "Can't be blank",
				minlength: 'Min letters should be 2',
				maxlength: 'Max limit reached'
			}
		},
		highlight: function(element) {
			$(element).closest('.control-group').removeClass('success').addClass('error');
		},
		success: function(element) {
			element
			.text('OK!').addClass('valid')
			.closest('.control-group').removeClass('error').addClass('success');
		}
	});

});