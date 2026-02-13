data modify storage nutlet:print cmd.error \
        set value '{"translate": "nutlet.load_resourcepack",\
        "fallback": "(Missing Resource Pack)"},\
        {"translate": "nutlet.load_unexpected_version",\
        "color": "dark_red",\
        "fallback": "(Be loaded to UNEXPECTED version!)"}'