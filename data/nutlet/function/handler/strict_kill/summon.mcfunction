forceload add ~ ~
function nutlet:-m/schematic/tick \
    {handler: "nutlet:handler/strict_kill/clear",\
    callback: "nutlet:handler/strict_kill/callback"}

forceload remove ~ ~
