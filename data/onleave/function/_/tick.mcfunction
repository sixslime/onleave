#>onleave:_/tick
#--------------------
# @TICK
#--------------------

schedule function onleave:_/tick 1t

execute store result score *players --onleave if entity @a
scoreboard players operation *dxplayers --onleave += *joined_this_tick --onleave

execute if score *players --onleave < *dxplayers --onleave run function onleave:_/detect_leave

scoreboard players operation *dxplayers --onleave = *players --onleave
scoreboard players set *joined_this_tick --onleave 0