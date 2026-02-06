execute if data storage nutlet:var facing{x_rotation:90, y_rotation:-90} \
    run return run data modify storage nutlet:var facing.orientation set value "down_east"
execute if data storage nutlet:var facing{x_rotation:90, y_rotation:90} \
    run return run data modify storage nutlet:var facing.orientation set value "down_west"
execute if data storage nutlet:var facing{x_rotation:90, y_rotation:0} \
    run return run data modify storage nutlet:var facing.orientation set value "down_south"
execute if data storage nutlet:var facing{x_rotation:90, y_rotation:180} \
    run return run data modify storage nutlet:var facing.orientation set value "down_north"

execute if data storage nutlet:var facing{x_rotation:-90, y_rotation:-90} \
    run return run data modify storage nutlet:var facing.orientation set value "up_east"
execute if data storage nutlet:var facing{x_rotation:-90, y_rotation:90} \
    run return run data modify storage nutlet:var facing.orientation set value "up_west"
execute if data storage nutlet:var facing{x_rotation:-90, y_rotation:0} \
    run return run data modify storage nutlet:var facing.orientation set value "up_south"
execute if data storage nutlet:var facing{x_rotation:-90, y_rotation:180} \
    run return run data modify storage nutlet:var facing.orientation set value "up_north"

execute if data storage nutlet:var facing{x_rotation:0, y_rotation:-90} \
    run return run data modify storage nutlet:var facing.orientation set value "east_up"
execute if data storage nutlet:var facing{x_rotation:0, y_rotation:90} \
    run return run data modify storage nutlet:var facing.orientation set value "west_up"
execute if data storage nutlet:var facing{x_rotation:0, y_rotation:0} \
    run return run data modify storage nutlet:var facing.orientation set value "south_up"
execute if data storage nutlet:var facing{x_rotation:0, y_rotation:180} \
    run data modify storage nutlet:var facing.orientation set value "north_up"