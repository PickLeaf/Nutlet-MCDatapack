execute unless entity @s[tag=nutlet.first_tick] \
    run return run tag @s add nutlet.first_tick

function nutlet:handler/strict_kill/kill \
    with entity @s data
kill @s