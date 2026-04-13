advancement grant @s only nutlet:uuid

execute if data storage nutlet:var {caller:"post_attack_attacker"} \
    run return run tag @s add nutlet.speller
execute unless data storage nutlet:var {caller:"post_attack_victim"} \
    run return fail

data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
function nutlet:spell/default/uuid_ma \
    with storage nutlet:var uuid

data remove storage nutlet:var uuid

title @a[tag=nutlet.speller] actionbar \
    {"translate":"nutlet.info.UUID_get_suc",\
    "color": "green", \
    "fallback":"The UUID of the entity you attacked has been written into the book!"}
tag @a[tag=nutlet.speller] remove nutlet.speller