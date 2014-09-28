$ ->
	app = $("#app");
	wideToggle = $('.toggle-min');
	wideToggle.click ->
		if app.hasClass("nav-min")
			app.removeClass("nav-min")
		else 
			app.addClass("nav-min")


	$(window).resize ->
		if $(window).width() < 768
			app.removeClass("nav-min")
		else

	menuToggle = $('.menu-button');
	menuToggle.click ->
		if app.hasClass("on-canvas")
			app.removeClass("on-canvas")
		else 
			app.addClass("on-canvas")