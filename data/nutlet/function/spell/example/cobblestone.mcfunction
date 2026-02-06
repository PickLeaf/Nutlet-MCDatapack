execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
summon minecraft:item ~ ~ ~ \
    {Item:{id:"minecraft:cobblestone",count:1}}