data modify entity @s text \
    set value {"type":"nbt","storage":"nutlet:var","nbt":"to_prop.nbt",interpret:false,plain:true}
data modify storage nutlet:var temp set from entity @s text
data remove storage nutlet:var to_prop.nbt
data modify storage nutlet:var to_prop.nbt \
    set from entity @s text.extra
kill @s