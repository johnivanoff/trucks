$(document).ready(function(){
	loadPage();
}); 
function loadPage(url) {
	$('body').append('<div id="progress">Loading...</div>');
	if (url == undefined) { 
		$('#container').load('index.html ul', hijackLinks);
	} else {
		$('#container').load(url, hijackLinks);
	}
}
function hijackLinks() {
	$('#container a').click(function(e){ 
		e.preventDefault();
		loadPage(e.target.href);
	});
	var title = $('h2').html() || 'Equipment TO Rent'; 
	$('h1').html(title); 
	$('h2').remove(); 
	$('#progress').remove();
} 