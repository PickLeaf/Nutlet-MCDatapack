$data modify storage nutlet:var spells_exe_list append from storage nutlet:mem spells[{spell:"$(spell)"}]
execute unless data storage nutlet:var spells_exe_list[0] \
    run title @s actionbar \
        {"translate":"nutlet.info.no_spell",\
        "color": "red", \
            "fallback":"It seems your spell has no effect..."}