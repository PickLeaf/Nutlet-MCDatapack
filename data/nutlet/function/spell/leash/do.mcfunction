data modify storage nutlet:var uuid.hex \
    set from storage nutlet:var speller.target_uuid
function nutlet:-m/array_uuid

data modify entity @s leash.UUID set from storage nutlet:var uuid.array

data remove storage nutlet:var uuid
execute unless data entity @s leash.UUID \
    run return fail

item modify entity @a[tag=nutlet.speller] weapon.offhand \
    {function:"minecraft:set_count",add:true,count:-1}

return 1