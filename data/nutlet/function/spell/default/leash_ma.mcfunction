data modify storage nutlet:var uuid.hex \
    set from storage nutlet:var speller.target_uuid
function nutlet:-m/array_uuid

return run data modify entity @s leash.UUID set from storage nutlet:var uuid.array