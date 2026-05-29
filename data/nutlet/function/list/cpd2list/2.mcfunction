data modify storage nutlet:var list.list \
    append value {key: ""}
data modify storage nutlet:var list.list[-1].key \
    set from storage nutlet:var list.one.text

function nutlet:list/cpd2list/to \
    with storage nutlet:var list.list[-1]