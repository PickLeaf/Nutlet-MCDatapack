execute unless entity @s[tag=nutlet.first_tick] \
    run return run tag @s add nutlet.first_tick
execute on passengers run \
    function nutlet:handler/strict_kill/kill \
    with entity @s data
execute on passengers run kill @s
kill @s