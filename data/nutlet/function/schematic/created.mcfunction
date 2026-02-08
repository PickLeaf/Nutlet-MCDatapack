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

# return hex format uuid
data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
data modify storage nutlet:var schematic.uuid \
    set from storage nutlet:var uuid.hex
data remove storage nutlet:var uuid
# schedule kill if tick limit is set
execute if data storage nutlet:var schematic{tick:0} \
    run return fail

data modify storage nutlet:var schedule.task.data.dimension \
    set from storage nutlet:var schematic.dimension
data modify storage nutlet:var schedule.task.data.x \
    set from entity @s Pos[0]
data modify storage nutlet:var schedule.task.data.y \
    set from entity @s Pos[1]
data modify storage nutlet:var schedule.task.data.z \
    set from entity @s Pos[2]

data modify storage nutlet:var schedule.task.data.uuid \
    set from storage nutlet:var schematic.uuid

data modify storage nutlet:var schedule.task.handler \
    set value "nutlet:handler/strict_kill"

data modify storage nutlet:var schedule.tick \
    set from storage nutlet:var schematic.tick
function nutlet:-m/schedule