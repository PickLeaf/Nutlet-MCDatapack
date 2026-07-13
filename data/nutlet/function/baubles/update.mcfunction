# 去除约等于不生效的属性修饰符
tag @s add nutlet.player
# summon 物品展示实体 item_display
execute summon minecraft:item_display \
    run function nutlet:baubles/item_display

tag @s remove nutlet.player

return 1