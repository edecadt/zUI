window.addEventListener('message', function(event) {
    var data = event.data
    
    document.querySelector(".hud-container").style.display = data.show? "none":"flex";
    if (data.armor <= 0) {
        document.querySelector(".shield-container").style.display = "none";
    } else {
        document.querySelector(".shield-container").style.display = "block";
        document.querySelector(".shield-bar").style.width = data.armor-3 + "%";
    }
    document.querySelector(".health-bar").style.width = data.health/2-3 + "%";
    document.querySelector(".hunger-bar").style.width = data.hunger-3 + "%";
    document.querySelector(".thirst-bar").style.width = data.thirst-3 + "%";
});

