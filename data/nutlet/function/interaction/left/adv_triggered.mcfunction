advancement revoke @s only nutlet:func/interaction_left
tag @s add nutlet.triggeredPlayer
execute as @e[distance=0..,type=minecraft:interaction] \
    if data entity @s data."nutlet:interaction" \
    run function nutlet:interaction/left/get_target
tag @a remove nutlet.triggeredPlayer