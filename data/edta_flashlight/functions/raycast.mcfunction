scoreboard players add @s edta_fl_ray_lim 1

execute if block ~ ~ ~ #edta_flashlight:lightable run scoreboard players operation @s edta_fl_latest = @s edta_fl_ray_lim
execute if block ~ ~ ~ minecraft:water[level=0] run scoreboard players operation @s edta_fl_latest = @s edta_fl_ray_lim

execute unless block ^ ^ ^0.1 #edta_flashlight:transparent run function edta_flashlight:rewind_and_create_light
execute if score @s edta_fl_ray_lim matches 200.. run function edta_flashlight:create_light

execute unless score @s edta_fl_ray_lim matches 200.. positioned ^ ^ ^0.1 if block ~ ~ ~ #edta_flashlight:transparent run function edta_flashlight:raycast

