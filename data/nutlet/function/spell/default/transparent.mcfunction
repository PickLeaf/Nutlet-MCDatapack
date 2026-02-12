execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
execute positioned ~-0.6 ~-0.6 ~-0.6 unless entity \
    @e[dx=1.2,dy=1.2,dz=1.2, nbt={Invisible:0b}] \
    run return fail
title @s actionbar \
    {"translate":"nutlet.info.transparent_suc",\
    "color": "dark_green", \
        "fallback":"You successfully made it transparent!"}
execute positioned ~-0.6 ~-0.6 ~-0.6 \
    as @e[dx=1.2,dy=1.2,dz=1.2, nbt={Invisible:0b}] \
    run data modify entity @s \
        Invisible set value 1b