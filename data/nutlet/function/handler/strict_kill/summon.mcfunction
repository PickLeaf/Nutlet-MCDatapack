data modify storage nutlet:var tick.callback \
    set value "nutlet:handler/strict_kill/callback"

function nutlet:-m/tick \
    {handler: "nutlet:handler/strict_kill/clear"}