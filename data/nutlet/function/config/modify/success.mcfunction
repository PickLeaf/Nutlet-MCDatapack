tellraw @s \
    {"translate": "nutlet.info.config.success",\
        "color": "green", \
        "fallback": "Config %s is now set to: %s",\
        "with": [\
            {"type": "nbt",\
                "storage": "nutlet:var",\
                "nbt": "config.result.name",\
                "color": "gold"},\
            {"type": "nbt",\
                "storage": "nutlet:var",\
                "nbt": "config.result.set",\
                "color": "dark_aqua"}]}

data remove storage nutlet:var config
