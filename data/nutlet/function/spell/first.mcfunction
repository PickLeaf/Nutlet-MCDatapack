advancement grant @s only nutlet:usage
advancement grant @s only nutlet:spells

execute if data storage nutlet:config firstCraftedFlag \
    run return fail
tag @s add nutlet.config_privilege
playsound entity.player.levelup
data modify storage nutlet:config firstCraftedFlag set value 1b
title @s title {"text": "! ! !","color": "green"}
tellraw @s \
    {"translate":"nutlet.info.config.get_privilege",\
    "color": "dark_purple", \
        "fallback":"As the first player to crafted spell book, you have gained the authority to modify the configuration of this world. Those who crafted spell book afterwards will not obtain this authority"}