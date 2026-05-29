function nutlet:list/refresh

data remove storage nutlet:var list.one
data modify storage nutlet:var list.one \
    set from storage nutlet:var list.rawArray[0]
data remove storage nutlet:var list.rawArray[0]
execute if data storage nutlet:var list.one \
    run function nutlet:list/foreach_cpd/loop

data remove storage nutlet:var list.pair
data remove storage nutlet:var list.rawArray
kill @s