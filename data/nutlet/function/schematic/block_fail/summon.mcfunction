data merge entity @s {\
    shadow: 0b,\
    width: 1f,\
    height: 1f,\
    see_through: 1b,\
    billboard: "vertical",\
    transformation:{scale: [2f,2f,2f]}}
data modify entity @s text \
    set from storage nutlet:var text.str
data modify entity @s text \
    set from storage nutlet:var text.nbt
data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
data modify storage nutlet:var schedule.task.data.uuid \
    set from storage nutlet:var uuid.hex
data remove storage nutlet:var uuid

data modify storage nutlet:var schedule.task.data.dimension \
    set from storage nutlet:var schematic.dimension
data modify storage nutlet:var schedule.task.data.x \
    set from entity @s Pos[0]
data modify storage nutlet:var schedule.task.data.y \
    set from entity @s Pos[1]
data modify storage nutlet:var schedule.task.data.z \
    set from entity @s Pos[2]

data modify storage nutlet:var schedule.task.handler \
    set value "nutlet:handler/strict_kill"

data modify storage nutlet:var schedule.tick \
    set from storage nutlet:var schematic.tick
function nutlet:-m/schedule