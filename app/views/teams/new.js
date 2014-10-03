$("#teams-container").fadeOut('slow')
$("#new-team").html("<%= escape_javascript(render 'new') %>")
