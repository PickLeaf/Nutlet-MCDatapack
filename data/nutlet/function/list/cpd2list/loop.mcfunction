execute if data storage nutlet:var \
    list.one{text: "\""} \
    run function nutlet:list/cpd2list/1
execute if data storage nutlet:var \
    list.one{color:"aqua"} \
    run function nutlet:list/cpd2list/2

tellraw @a {type:"nbt",storage:"nutlet:var",nbt:"list.one"}
data remove storage nutlet:var list.one
data modify storage nutlet:var list.one \
    set from storage nutlet:var list.rawArray[0]
data remove storage nutlet:var list.rawArray[0]
execute if data storage nutlet:var list.one \
    run function nutlet:list/cpd2list/loop