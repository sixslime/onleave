#> onleave:_/on_join
#--------------------
# _/load
# @hook : onjoin:on_join
#--------------------

data modify storage onleave:var join.entry.UUID set from entity @s UUID
execute if score *pdata load-status matches 1.. store result storage onleave:var join.entry.index int 1 run scoreboard players get @s pdata-index

data modify storage onleave:data _.players append from storage onleave:var join.entry

scoreboard players add *joined_this_tick --onleave 1

data remove storage onleave:var join