data modify storage nutlet:var text.str \
    set value '{"text": "!","color": "red"}'
data modify storage nutlet:var text.nbt \
    set value '{"text": "!","color": "red"}'
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension

execute summon minecraft:text_display \
    run function nutlet:schematic/block_fail/summon

data remove storage nutlet:var schematic.dimension
data remove storage nutlet:var text
execute unless data storage nutlet:var schematic{keepData:1b} \
    run data remove storage nutlet:var schematic
return 1