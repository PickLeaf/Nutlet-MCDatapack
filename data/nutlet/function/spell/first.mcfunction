execute if data storage nutlet:config modifyLock \
    run return fail
data modify storage nutlet:config modifyLock set value 1b
tag @s add nutlet.config_privilege
playsound entity.player.levelup
title @s title {"text": "! ! !","color": "green"}
tellraw @s \
    {"translate":"nutlet.info.config.get_privilege",\
    "color": "dark_purple", \
        "fallback":"As the first player to crafted spell book, you have gained the authority to modify the configuration of this world. Those who crafted spell book afterwards will not obtain this authority."}