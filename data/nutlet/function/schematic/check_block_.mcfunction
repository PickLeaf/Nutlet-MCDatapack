execute if block ~ ~ ~ #minecraft:air run \
    return fail
$execute unless block ~ ~ ~ $(id) \
    run return run \
        function nutlet:schematic/block_fail/incorrect
$execute unless block ~ ~ ~ $(id)[$(prop)] \
    run return run \
        function nutlet:schematic/block_fail/half_correct
return 1