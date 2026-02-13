execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
execute unless entity \
    @e[distance=0..1, \
    nbt={Invisible:0b}, type=#nutlet:item_frame] \
    run return fail
title @s actionbar \
    {"translate":"nutlet.info.transparent_suc",\
    "color": "dark_green", \
        "fallback":"You successfully made it transparent!"}
execute as @e[distance=0..1, \
    nbt={Invisible:0b}, type=#nutlet:item_frame] \
    run data modify entity @s \
        Invisible set value 1b