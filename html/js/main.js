window.addEventListener('message', (event) => {
    const data = event.data
    switch(data.action) {
        case "speak":
            if (data.active) {
                $(".circle-ripple").fadeIn()
            } else {
                $(".circle-ripple").fadeOut()
            }
            break;
        case "voice":
            $(".voice-elipse").html(data.lvl)
            break;
    }
});