$(document).on("click","#btnrole", function(event) {
	 event.preventDefault();
	 email = $("#email").val();
	 password = $("#password").val();
	 role = $("#role").val(); 
	 contact_person = $("#contact_persons").val(); 
	 biz_tabs = $("#biz_tabs").val();
	 statutory = $("#statutory").val();
	 product = $("#product").val();
	 website_details = $("#website_details").val();
	 information = $("#information").val();
     location.href="/app_users/create_users_roles?email="+email+"&password="+password+"&role="+role+"&contact_person="+contact_person+"&biz_tabs="+biz_tabs+"&statutory="+ statutory+"&product="+product+"&website_details="+website_details+"&information="+information;  
});