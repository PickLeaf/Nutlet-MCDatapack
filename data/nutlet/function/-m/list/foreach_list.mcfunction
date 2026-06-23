# argument:
# --nutlet:var list.list[array] : array tag that will foreach=
# --nutlet:var list.handler[string] : A function will invoke on every element of given list
# --nutlet:var list.pair : sigle element given on every time handler be invoke

execute store result score A Nutlet.Clac \
    run function nutlet:list/get_length
scoreboard players set B Nutlet.Clac 0

function nutlet:list/foreach_list/loop