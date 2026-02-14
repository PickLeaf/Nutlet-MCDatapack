advancement grant @s only nutlet:show_arms

execute if data storage nutlet:var {caller:"post_attack_attacker"} \
    run tag @s add nutlet.speller
execute unless data storage nutlet:var {caller:"post_attack_victim"} \
    run return fail
execute unless entity \
    @s[type=minecraft:armor_stand, nbt={ShowArms:0b}] \
    run return run \
        tag @a[tag=nutlet.speller] remove nutlet.speller
title @a[tag=nutlet.speller] actionbar \
    {"translate":"nutlet.info.grow_arms_suc",\
    "color": "dark_green", \
        "fallback":"You successfully made it grow arms!"}
tag @a[tag=nutlet.speller] remove nutlet.speller
data modify entity @s \
    ShowArms set value 1b