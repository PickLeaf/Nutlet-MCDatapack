scoreboard players remove @s Nutlet.Clac 1
execute if score @s Nutlet.Clac matches 1.. \
    run return fail
data modify storage nutlet:var function \
    set string entity @s CustomName 1 -1
function nutlet:spell/exe with storage nutlet:var {}