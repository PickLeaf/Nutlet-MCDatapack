execute if data storage nutlet:var to_prop{char:'"'} \
    run return 1
execute if data storage nutlet:var to_prop{char:":"} \
    run return run \
        function nutlet:schematic/to_prop/colon
execute if data storage nutlet:var to_prop{char:'{'} \
    run return 1
execute if data storage nutlet:var to_prop{char:'}'} \
    run return 1

return fail