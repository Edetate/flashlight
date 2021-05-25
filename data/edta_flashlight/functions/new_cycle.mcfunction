execute as @e[type=marker,tag=edta_fl_marker] at @s run function edta_flashlight:restore

scoreboard players set @a[scores={edta_fl_light_on=1}] edta_fl_ray_lim 0
execute as @a[scores={edta_fl_light_on=1}] unless data entity @s SelectedItem.tag.edta_flashlight run scoreboard players set @s edta_fl_light_on 0
execute as @a[scores={edta_fl_light_on=1}] at @s anchored eyes run function edta_flashlight:raycast
execute if entity @a[scores={edta_fl_light_on=1}] run schedule function edta_flashlight:new_cycle 5