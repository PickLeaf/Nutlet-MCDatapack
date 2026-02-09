data modify entity @s text \
    set value '{"type":"nbt","storage":"nutlet:var","nbt":"to_prop.nbt"}'
function nutlet:schematic/25w02a_p with entity @s {}
data remove storage nutlet:var to_prop.nbt
data modify storage nutlet:var to_prop.nbt \
    set from entity @s text
kill @s