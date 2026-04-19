data modify storage nutlet:var speller.target_uuid \
    set from entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[1].raw
tag @s add nutlet.speller