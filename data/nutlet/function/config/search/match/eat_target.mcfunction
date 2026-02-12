data modify storage nutlet:var match.target \
    set string storage nutlet:var match.target 1
data remove storage nutlet:var match.target_char
data modify storage nutlet:var match.target_char \
    set string storage nutlet:var match.target 0 1