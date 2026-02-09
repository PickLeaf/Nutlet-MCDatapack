data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
data modify entity @s Small set value 1b
data modify entity @s Pose.Head set value [180f,0f,0f]
item replace entity @s armor.head with minecraft:command_block
item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"nutlet:spellcasting":1}}

$data modify entity @s CustomName set value '"$(handler)"'