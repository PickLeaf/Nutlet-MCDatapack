execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail
execute unless items entity @s weapon.offhand * \
    run return run \
        title @s actionbar \
            {"translate":"nutlet.info.put_helmet_fail_1",\
            "bold":true, "color": "red", \
            "fallback":"You need to carry an item in your offhand slot.",\
            "with":[{\
                "translate":"block.minecraft.lightning_rod"}]}
execute if items entity @s armor.head * \
    run return run \
        title @s actionbar \
            {"translate":"nutlet.info.put_helmet_fail_2",\
            "bold":true, "color": "red", \
            "fallback":"You're wearing a helmet already.",\
            "with":[{\
                "translate":"block.minecraft.lightning_rod"}]}

item replace entity @s armor.head from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air