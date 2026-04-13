advancement grant @s only nutlet:leash

execute if data storage nutlet:var {caller:"post_attack_attacker"} \
    run return run data modify storage nutlet:var speller.target_uuid \
        set from entity @s \
        SelectedItem.components."minecraft:writable_book_content".pages[1].raw
execute unless data storage nutlet:var {caller:"post_attack_victim"} \
    run return fail

execute if function nutlet:spell/default/leash_ma \
    run data modify storage nutlet:var speller.success \
        set value 1b
data remove storage nutlet:var uuid
execute if data storage nutlet:var speller.success \
    run title @a[tag=nutlet.speller] actionbar \
        {"translate":"nutlet.info.leash_suc",\
        "color": "green", \
        "fallback":"The entity you attacked has been leashed to the target entity"}
execute unless data storage nutlet:var speller.success \
    run title @a[tag=nutlet.speller] actionbar \
        {"translate":"nutlet.info.leash_fail",\
        "color": "red", \
        "fallback":"Entity leashing failed"}

data remove storage nutlet:var speller
tag @a[tag=nutlet.speller] remove nutlet.speller