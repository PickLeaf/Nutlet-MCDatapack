execute summon minecraft:marker \
    run function nutlet:handler/strict_kill/data_marker
ride @n[tag=nutlet.temp_mark] mount @s
tag @n[tag=nutlet.temp_mark] remove nutlet.temp_mark