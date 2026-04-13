$dialog show @s {"type":"minecraft:notice",\
    "title":{\
        "translate":"nutlet.info.config.print",\
        "fallback":"Configurations found in this world: "},\
    "body":[{\
        "type":"minecraft:plain_message",\
            "contents":{\
                "text": "$(name)",\
                "color": "gold"}},{\
        "type":"minecraft:plain_message",\
            "contents":{\
                "text": "$(description)",\
                "color": "white"}},{\
        "type":"minecraft:plain_message",\
            "contents":[{\
                "translate": "nutlet.info.config.current_value",\
                    "fallback": "Current Value: ",\
                    "color": "gold"},{\
                "text": "$(curent_value)",\
                    "color": "dark_green"}]},{\
        "type":"minecraft:plain_message",\
            "contents":[{\
                "translate": "nutlet.info.config.value_range",\
                    "fallback": "Value Range: ",\
                    "color": "gold"},{\
                "text": "$(default)",\
                    "color": "dark_gray"}]},{\
        "type":"minecraft:plain_message",\
            "contents":[{\
                "translate": "nutlet.info.config.acceptable_value",\
                    "fallback": "Acceptable Value: ",\
                    "color": "gold"},{\
                "text": "$(range)",\
                    "color": "gray"}]}]}