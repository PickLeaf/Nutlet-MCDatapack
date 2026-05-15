execute on attacker unless entity @s[tag=nutlet.triggeredPlayer] \
    run return fail
function nutlet:interaction/left/redirect \
    with entity @s data."nutlet:interaction"
# data remove entity @s attack