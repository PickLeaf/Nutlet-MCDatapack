$data modify storage nutlet:var list.list[-1].value \
    set from storage nutlet:var list.compound.'$(key)'
$data remove storage nutlet:var list.compound.'$(key)'

function nutlet:list/foreach_cpd/refresh