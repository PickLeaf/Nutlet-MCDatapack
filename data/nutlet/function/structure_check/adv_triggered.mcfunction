advancement revoke @s only nutlet:func/tool_used
execute as @e[distance=0..10] if data entity @s data."nutlet:structure_check" \
    run function nutlet:structure_check/single