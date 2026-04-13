title @s actionbar \
    {"translate": "nutlet.info.config.success",\
        "color": "green", \
        "fallback": "Config %s is now set to: %s",\
        "with": [\
            {"type": "nbt",\
                "storage": "nutlet:var",\
                "nbt": "config.result.name",\
                "color": "gold",\
                "interpret": true},\
            {"type": "nbt",\
                "storage": "nutlet:var",\
                "nbt": "config.result.set",\
                "color": "dark_aqua",\
                "interpret": true}]}

data remove storage nutlet:var config
