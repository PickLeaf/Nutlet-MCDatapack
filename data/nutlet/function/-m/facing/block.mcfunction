# argument:
# --Command Context : the execute rotation

# return:
# --nutlet:var facing.success[enum{1b,*}] : whether getting facing succeeded
# --nutlet:var facing.x_rotation : x rotation
# --nutlet:var facing.y_rotation : y rotation
# --nutlet:var facing.facing[enum{"up","down","east","west","south","north"}] \
    : the facing direction
# --nutlet:var facing.orientation[enum{"up_east","up_west","up_south","up_north","down_east","down_west","down_south","down_north","south_up","north_up","west_up","east_up"}] \
    : the orientation direction, use for crafter

data modify storage nutlet:var facing set value \
    {success:1b, x_rotation:0, y_rotation:0}
execute unless predicate nutlet:block_facing/down \
    unless predicate nutlet:block_facing/up \
    unless predicate nutlet:block_facing/north \
    unless predicate nutlet:block_facing/south \
    unless predicate nutlet:block_facing/west \
    unless predicate nutlet:block_facing/east \
        run return run data modify storage nutlet:var facing.success set value 0b

execute if predicate nutlet:block_facing/down \
    run data modify storage nutlet:var facing.x_rotation set value 90
execute if predicate nutlet:block_facing/up \
    run data modify storage nutlet:var facing.x_rotation set value -90

execute if predicate nutlet:block_facing/east \
    run data modify storage nutlet:var facing.y_rotation set value -90
execute if predicate nutlet:block_facing/west \
    run data modify storage nutlet:var facing.y_rotation set value 90
execute if predicate nutlet:block_facing/south \
    run data modify storage nutlet:var facing.y_rotation set value 0
execute if predicate nutlet:block_facing/north \
    run data modify storage nutlet:var facing.y_rotation set value 180

function nutlet:facing/get_facing
function nutlet:facing/get_orientation