# 复制玩家的baubles
item replace entity @s container.0 from entity \
    @p[distance=0..1,tag=nutlet.player] armor.body
# 去除约等于不生效的属性修饰符
execute if items entity @s container.0 \
    *[minecraft:attribute_modifiers~{\
    modifiers:\
        {"contains":[\
            {operation: "add_value",\
            amount: 0d}]}}] \
    run data remove entity @s item.components.\
        "minecraft:attribute_modifiers"[{\
            operation: "add_value",\
            amount: 0d}]
execute if items entity @s container.0 \
    *[minecraft:attribute_modifiers~{\
    modifiers:\
        {"contains":[\
            {operation: "add_multiplied_base",\
            amount: 1d}]}}] \
    summon minecraft:item_display \
    run data remove entity @s item.components.\
        "minecraft:attribute_modifiers"[{\
            operation: "add_multiplied_base",\
            amount: 1d}]
execute if items entity @s container.0 \
    *[minecraft:attribute_modifiers~{\
    modifiers:\
        {"contains":[\
            {operation: "add_multiplied_total",\
            amount: 1d}]}}] \
    summon minecraft:item_display \
    run data remove entity @s item.components.\
        "minecraft:attribute_modifiers"[{\
            operation: "add_multiplied_total",\
            amount: 1d}]
# 复制回去
item replace entity @p[distance=0..1,tag=nutlet.player] armor.body \
    from entity @s container.0
# 清除
kill @s