$(document).ready(function(){
    window.addEventListener('message', function(event) {
        var data = event.data
        
        $(".hud-container").css("display",data.show? "none":"flex");
        if (data.armor <= 0) {
            $(".shield-container").css("display","none");
        } else {
            $(".shield-container").css("display","block");
            $(".shield-bar").css("width", data.armor-3 + "%");
        }
        $(".health-bar").css("width", data.health/2-3 + "%");
        $(".hunger-bar").css("width", data.hunger-3 + "%");
        $(".thirst-bar").css("width", data.thirst-3 + "%");
    });
});

