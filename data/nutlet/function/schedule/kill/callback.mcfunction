data modify entity @s data."nutlet:target".UUID \
    set from storage nutlet:var tick.UUID

execute store result score @s Nutlet.Clac \
    run data get storage nutlet:var schedule.delay
execute if score @s Nutlet.Clac matches 0 \
    run function nutlet:schedule/kill/exe