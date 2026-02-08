execute unless loaded ~ ~ ~ \
    run data modify storage rk_gen:var temp set value 1b
execute if data storage nutlet:var temp \
    run forceload add ~ ~
kill @s
execute if data storage nutlet:var temp \
    run forceload remove ~ ~