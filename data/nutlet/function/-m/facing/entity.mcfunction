# argument:
# --Command Context : the execute rotation

# return:
# --nutlet:var facing.facing[enum{"up","down","east","west","south","north"}] \
    : the facing direction
# --nutlet:var facing.orientation[enum{"up_east","up_west","up_south","up_north","down_east","down_west","down_south","down_north","south_up","north_up","west_up","east_up"}] \
    : the orientation direction, use for crafter

execute summon minecraft:marker \
    run function nutlet:facing/get_entity_facing
