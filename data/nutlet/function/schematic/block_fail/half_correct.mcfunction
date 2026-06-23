data modify storage nutlet:var text.text \
    set value {"text": "!","color": "yellow"}
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension

execute positioned ~ ~-0.25 ~ \
    summon minecraft:text_display \
    run function nutlet:schematic/block_fail/summon

data remove storage nutlet:var text
execute if data storage nutlet:var schematic{dropData:1b} \
    run data remove storage nutlet:var schematic
return 1