# argument:
# --nutlet:var list.compound[compound] \
    : Compound tag that will to list \
        {x: 1, foo: {P: 1.7f}}
#
# return:
# --nutlet:var list.list[] \
    : every element contain key and value of given compound tag \
        [{key: "x", value: 1}, {key: "foo", value: {P: 1.7f}}]

execute summon minecraft:text_display \
    run function nutlet:list/cpd2list/start