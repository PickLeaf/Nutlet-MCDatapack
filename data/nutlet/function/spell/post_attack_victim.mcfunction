data modify storage nutlet:var arg.spell \
    set from storage nutlet:var deliver
data remove storage nutlet:var deliver
function nutlet:spell/get_spell with storage nutlet:var arg
data modify storage nutlet:var caller \
    set value "post_attack_victim"
function nutlet:spell/loop
data remove storage nutlet:var spells_exe_list
data remove storage nutlet:var caller
data remove storage nutlet:var arg