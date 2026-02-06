execute align xyz positioned ~0.5 ~0.5 ~0.5 \
    run function nutlet:brightness/direct
execute if predicate nutlet:bright/brighter \
    run data modify storage nutlet:var bright.brightness \
        set from storage nutlet:var bright.temp