execute if data storage nutlet:var facing{x_rotation:90} \
    run return run data modify storage nutlet:var facing.facing set value "down"
execute if data storage nutlet:var facing{x_rotation:-90} \
    run return run data modify storage nutlet:var facing.facing set value "up"

execute if data storage nutlet:var facing{y_rotation:-90} \
    run return run data modify storage nutlet:var facing.facing set value "east"
execute if data storage nutlet:var facing{y_rotation:90} \
    run return run data modify storage nutlet:var facing.facing set value "west"
execute if data storage nutlet:var facing{y_rotation:0} \
    run return run data modify storage nutlet:var facing.facing set value "south"
execute if data storage nutlet:var facing{y_rotation:180} \
    run data modify storage nutlet:var facing.facing set value "north"