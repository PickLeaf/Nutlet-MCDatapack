execute unless data storage nutlet:var schematic.transformation.scale \
    run data modify storage nutlet:var schematic.transformation.scale \
        set value [1f, 1f, 1f]
execute unless data storage nutlet:var schematic.transformation.translation \
    run data modify storage nutlet:var schematic.transformation.translation \
        set value [0f, 0f, 0f]
execute unless data storage nutlet:var schematic.transformation.left_rotation \
    run data modify storage nutlet:var schematic.transformation.left_rotation \
        set value [0f, 0f, 0f, 1f]
execute unless data storage nutlet:var schematic.transformation.right_rotation \
    run data modify storage nutlet:var schematic.transformation.right_rotation \
        set value [0f, 0f, 0f, 1f]