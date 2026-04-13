data modify entity @s text \
    set from storage nutlet:var schematic.text
teleport @s ~ ~ ~ ~ ~
$data merge entity @s $(mergeData)

function nutlet:schematic/created