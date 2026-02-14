advancement grant @s only nutlet:call_lightning

execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
execute unless block ~ ~ ~ minecraft:lightning_rod \
    run return run \
        title @s actionbar \
            {"translate":"nutlet.info.call_lightning_fail_1",\
            "bold":true, "color": "red", \
            "fallback":"You must hit a %s to call lightning",\
            "with":[{\
                "translate":"block.minecraft.lightning_rod"}]}
execute positioned ~-0.6 ~-0.6 ~-0.6 unless entity \
    @e[dx=1.2,dy=1.2,dz=1.2, \
    type=minecraft:item, \
    nbt={Item:{id:"minecraft:gold_ingot"}}] \
    run return run \
        title @s actionbar \
            {"translate":"nutlet.info.call_lightning_fail_2",\
            "bold":true, "color": "red", \
            "fallback":"You need to throw one %s on the lightning rod",\
            "with":[{\
                "translate":"item.minecraft.gold_ingot"}]}
title @s title \
    {"translate":"nutlet.info.call_lightning_suc",\
    "bold":true, "color": "red", \
    "fallback":"The thunder has arrived!"}
summon minecraft:lightning_bolt