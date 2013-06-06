$(document).ready(function() {
    // Handler for .ready() called.
    $(".range-buttons").hide();

    function range_selected($notch){
        $(".range-buttons").fadeIn();
        $(".range-notch").removeClass("range-selected");
        $notch.addClass("range-selected");
        update_value_label($notch);
    }

    function update_value_label($notch) {
        $notch.closest(".mobile-range-finder").find(".test-value-label").text($notch.attr("data-index"));
    }

    $(".range-notch").on("click", function(event){
        event.preventDefault();
        range_selected($(this));
    });

    $(".range-notch").on("touchstart", function(event){
        event.preventDefault();
        range_selected($(this));
    });

    $(".decrement-button").on("click",function(event){
        var $currentNotch = $(".range-selected");
        var currentNotchIndex = parseInt($currentNotch.attr("data-index"));
        if (currentNotchIndex == 0) return;
        $currentNotch.removeClass("range-selected");
        var newNotchIndex = currentNotchIndex -1;
        var $newNotch = $(".range-notch[data-index="+newNotchIndex+"]").addClass("range-selected");
        update_value_label($newNotch);
    });

    $(".increment-button").on("click",function(event){
        var $currentNotch = $(".range-selected");
        var currentNotchIndex = parseInt($currentNotch.attr("data-index"));
        if (currentNotchIndex == 10) return;
        $currentNotch.removeClass("range-selected");
        var newNotchIndex = currentNotchIndex + 1;
        var $newNotch = $(".range-notch[data-index="+newNotchIndex+"]").addClass("range-selected");
        update_value_label($newNotch);
    });
});