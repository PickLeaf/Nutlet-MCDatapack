$data modify storage nutlet:var list.pair.value \
    set from storage nutlet:var list.compound.'$(key)'
$data remove storage nutlet:var list.compound.'$(key)'

function nutlet:list/invoke_handler \
    with storage nutlet:var list

function nutlet:list/foreach_cpd/refresh