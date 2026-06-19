# copy data to display entity
data modify entity @s transformation \
    set from storage nutlet:var schematic.transformation
data remove entity @s brightness
execute store result score A Nutlet.Clac \
    run data get storage nutlet:var schematic.bright
execute if score A Nutlet.Clac matches 1..15 \
    run data modify entity @s brightness \
        set value {block:15, sky:15}
data modify entity @s brightness.block \
    set from storage nutlet:var schematic.bright
data modify entity @s brightness.sky \
    set from storage nutlet:var schematic.bright

tag @s add nutlet.display
execute unless data storage nutlet:var schematic{tick:0} \
    run tag @s add nutlet.temp_display

# execute callback function if exists
execute if data storage nutlet:var schematic.callback \
    run function nutlet:util/callback \
        with storage nutlet:var schematic
# schedule kill if tick limit is set
execute if data storage nutlet:var schematic{tick:0} \
    run return fail

data modify storage nutlet:var schedule.delay \
    set from storage nutlet:var schematic.tick
function nutlet:-m/schedule/kill