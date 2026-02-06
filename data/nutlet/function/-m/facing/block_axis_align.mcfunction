# argument:
# --Command Context -> the execute rotation
# --Function Macro 'handler'[string] : function will execute when axis aligned

$data modify storage nutlet:var axis_align.handler set value "$(handler)"
function nutlet:-m/facing/block
execute unless data storage nutlet:var facing{success:1b} \
    run return fail
data modify storage nutlet:var axis_align.x_rotation \
    set from storage nutlet:var facing.x_rotation
data modify storage nutlet:var axis_align.y_rotation \
    set from storage nutlet:var facing.y_rotation

function nutlet:facing/when_aligned with storage nutlet:var axis_align
data remove storage nutlet:var axis_align
data remove storage nutlet:var facing