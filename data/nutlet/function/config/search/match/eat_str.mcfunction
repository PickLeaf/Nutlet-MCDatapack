data modify storage nutlet:var match.str \
    set string storage nutlet:var match.str 1
data remove storage nutlet:var match.str_char
data modify storage nutlet:var match.str_char \
    set string storage nutlet:var match.str 0 1