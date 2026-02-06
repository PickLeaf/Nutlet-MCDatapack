data modify storage nutlet:var arg.spell \
    set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
function nutlet:spell/get_spell with storage nutlet:var arg
data modify storage nutlet:var caller \
    set value "hit_block"
function nutlet:spell/loop
data remove storage nutlet:var spells_exe_list
data remove storage nutlet:var caller
data remove storage nutlet:var arg
