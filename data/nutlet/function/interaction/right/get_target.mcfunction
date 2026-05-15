execute on target unless entity @s[tag=nutlet.triggeredPlayer] \
    run return fail
function nutlet:interaction/right/redirect \
    with entity @s data."nutlet:interaction"
# data remove entity @s interaction