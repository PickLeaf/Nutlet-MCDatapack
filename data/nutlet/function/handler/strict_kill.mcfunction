execute if data storage nutlet:var data.x \
    if data storage nutlet:var data.y \
    if data storage nutlet:var data.z \
    if data storage nutlet:var data.dimension \
    if data storage nutlet:var data.uuid \
    run return run \
        function nutlet:handler/macro/strict_kill with storage nutlet:var data
function nutlet:util/chat/print_warning \
    {msg:"(nutlet:handler/strict_kill): Missing argument: storage (nutlet:var data.dimension) (nutlet:var data.x    nutlet:var data.y) (nutlet:var data.z)"}

function nutlet:handler/kill