$data modify storage nutlet:var config.dialog \
    append value {"type":"minecraft:plain_message","contents":[{"text":"$(name): "},{"text":"$(curent_value)","color":"gold"}],"width":200}