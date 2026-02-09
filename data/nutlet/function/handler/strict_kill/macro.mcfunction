$execute if entity $(uuid) run return \
    run function nutlet:handler/kill/macro {uuid:"$(uuid)"}
$execute in $(dimension) positioned $(x) $(y) $(z) run function nutlet:handler/strict_kill/summon {uuid:"$(uuid)"}