scoreboard players add @s edta_fl_ray_lim 1
execute unless score @s edta_fl_ray_lim matches 200.. positioned ^ ^ ^0.1 if block ~ ~ ~ #edta_flashlight:airs run function edta_flashlight:raycast
execute unless block ^ ^ ^0.1 #edta_flashlight:airs align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #edta_flashlight:airs run function edta_flashlight:create_light
