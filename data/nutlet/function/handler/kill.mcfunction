execute if data storage nutlet:var data.uuid \
    run return run \
        function nutlet:handler/kill/macro with storage nutlet:var data

function nutlet:util/chat/print_error \
    {msg:"(nutlet:handler/kill): Missing argument: storage nutlet:var data.uuid"}
