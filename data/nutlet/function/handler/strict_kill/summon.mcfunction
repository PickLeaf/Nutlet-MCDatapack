forceload add ~ ~

data modify storage nutlet:var schematic.callback \
    set value "nutlet:handler/strict_kill/callback"
function nutlet:-m/schematic/tick \
    {handler: "nutlet:handler/strict_kill/clear"}

forceload remove ~ ~
