
jQuery.fn.puts = function(defaultMessage){
	this.val(defaultMessage);
	this.focus(function(){
		if(jQuery(this).val() == defaultMessage){
			jQuery(this).val('');
		}
	});
	this.blur(function(){
		if(jQuery(this).val() == ''){
			jQuery(this).val(defaultMessage)
		}
	});
}