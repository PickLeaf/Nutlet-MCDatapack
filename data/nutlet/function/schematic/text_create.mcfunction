data modify entity @s text \
    set from storage nutlet:var schematic.text
teleport @s ~ ~ ~ ~ ~
$data merge entity @s $(mergeData)
function nutlet:schematic/25w02a_p with storage nutlet:var schematic

function nutlet:schematic/created