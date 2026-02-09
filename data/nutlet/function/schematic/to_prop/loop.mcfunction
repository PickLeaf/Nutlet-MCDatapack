execute unless function nutlet:schematic/to_prop/replace \
    run function nutlet:schematic/to_prop/append \
        with storage nutlet:var to_prop

function nutlet:schematic/to_prop/eat_one
execute if data storage nutlet:var to_prop.char \
    run function nutlet:schematic/to_prop/loop