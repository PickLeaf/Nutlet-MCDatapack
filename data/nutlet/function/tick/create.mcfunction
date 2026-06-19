data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
data modify entity @s equipment.feet set value \
    {id: "minecraft:glass",\
    count: 1,\
    components: {\
        "minecraft:enchantments": {\
            "nutlet:spellcasting": 1}}}
tag @s add nutlet.tick

data modify entity @s data."nutlet:tick".handler \
    set from storage nutlet:var tick.handler
# execute callback function if exists
execute if data storage nutlet:var tick.callback \
    run function nutlet:util/callback \
        with storage nutlet:var tick