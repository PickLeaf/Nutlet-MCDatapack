tag @s add nutlet.markedInteraction
execute on attacker if entity @s[tag=nutlet.triggeredPlayer] \
    run tag @e[distance=0..1,\
        type=minecraft:interaction,\
        tag=nutlet.markedInteraction] \
        remove nutlet.markedInteraction
execute if entity @s[tag=nutlet.markedInteraction] \
    run return run \
        tag @s remove nutlet.markedInteraction
function nutlet:interaction/left/redirect \
    with entity @s data."nutlet:interaction"
tag @s remove nutlet.markedInteraction
data remove entity @s attack