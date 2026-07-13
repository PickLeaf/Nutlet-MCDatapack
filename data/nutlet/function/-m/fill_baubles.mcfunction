# 不是玩家直接返回
execute unless entity @s[type=minecraft:player] \
    run return fail
# 给玩家上一个带消失诅咒的白色挽具,用于自定义效果
execute if items entity @s armor.body * \
    at @s \
    run return run \
        function nutlet:baubles/update

item replace entity @s armor.body with \
    minecraft:white_harness[\
        minecraft:equippable={\
            slot: "body",\
            "equip_sound": {\
                "sound_id": "",\
                "range": 0}}]
item modify entity @s armor.body nutlet:placeholder

return 1