# argument:
# --nutlet:var list.compound[compound] \
    : Compound tag that will foreach \
        {x: 1, foo: {P: 1.7f}}
# --nutlet:var list.handler[string] : A function will invoke on every key of given compound tag
# --nutlet:var list.pair : sigle element given on every time handler be invoke

execute summon minecraft:text_display \
    run function nutlet:list/foreach_cpd/start