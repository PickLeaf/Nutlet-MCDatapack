data modify entity @s text \
    set value \
    {type:"nbt",storage:"nutlet:var",nbt:"list.compound"}
data modify storage nutlet:var list.rawArray \
    set from entity @s text.extra