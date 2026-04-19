advancement grant @s only nutlet:leash

execute if data storage nutlet:var {caller:"post_attack_attacker"} \
    run return run \
        function nutlet:spell/leash/post_attack_attacker
execute unless data storage nutlet:var {caller:"post_attack_victim"} \
    run return fail

execute if data entity @s leash \
    run return run \
        function nutlet:spell/leash/fail \
            {info:'{"translate":"nutlet.info.leash_alreadyHas",\
            "color": "red", \
            "fallback":"The entity you attacked already has leashed"}'}
execute unless items entity @a[tag=nutlet.speller] weapon.offhand minecraft:lead \
    run return run \
        function nutlet:spell/leash/fail \
            {info:'{"translate":"nutlet.info.leash_no",\
            "color": "red", \
            "fallback":"You need to hold a %s in your offhand slot",\
            with:[{"translate":"item.minecraft.lead"}]}'}

execute if function nutlet:spell/leash/do \
    run data modify storage nutlet:var speller.success \
        set value 1b

execute if data storage nutlet:var speller.success \
    run function nutlet:spell/leash/fail \
        {info:'{"translate":"nutlet.info.leash_suc",\
        "color": "green", \
        "fallback":"The entity you attacked has been leashed to the target entity"}'}
        
execute unless data storage nutlet:var speller.success \
    run function nutlet:spell/leash/fail \
        {info:'{"translate":"nutlet.info.leash_fail",\
        "color": "red", \
        "fallback":"Entity leashing failed"}'}
        
