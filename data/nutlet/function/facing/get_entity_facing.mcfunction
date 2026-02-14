teleport @s ~ ~ ~ ~ ~

execute if entity @s[x_rotation=45..90] \
    run data modify storage nutlet:var facing.x_rotation set value 90
execute if entity @s[x_rotation=-90..-45] \
    run data modify storage nutlet:var facing.x_rotation set value -90
execute if entity @s[x_rotation=-45..45] \
    run data modify storage nutlet:var facing.x_rotation set value 0

execute if entity @s[x_rotation=-45..45, y_rotation=-135..-45] \
    run data modify storage nutlet:var facing.y_rotation set value -90
execute if entity @s[x_rotation=-45..45, y_rotation=45..135] \
    run data modify storage nutlet:var facing.y_rotation set value 90
execute if entity @s[x_rotation=-45..45, y_rotation=-45..45] \
    run data modify storage nutlet:var facing.y_rotation set value 0
execute if entity @s[x_rotation=-45..45, y_rotation=135..180] \
    run data modify storage nutlet:var facing.y_rotation set value 180
execute if entity @s[x_rotation=-45..45, y_rotation=-180..-135] \
    run data modify storage nutlet:var facing.y_rotation set value 180

function nutlet:facing/get_facing
function nutlet:facing/get_orientation

kill @s