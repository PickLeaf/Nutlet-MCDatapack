scoreboard players remove @s Nutlet.Clac 1
execute if score @s Nutlet.Clac matches 1.. \
    run return fail
function nutlet:tick/exe with entity @s \
    data."nutlet:tick"