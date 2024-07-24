#> onleave:_/detect_leave.1

data modify storage onleave:var leave.entry.UUID set from entity @s UUID
execute if score *pdata load-status matches 1.. store result storage onleave:var leave.entry.index int 1 run scoreboard players get @s pdata-index

data modify storage onleave:var leave.current_players append from storage onleave:var leave.entry