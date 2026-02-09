execute unless entity @s[tag=nutlet.first_tick] \
    run return run tag @s add nutlet.first_tick
kill @e[tag=nutlet.temp_display,distance=0..0.001]
kill @s