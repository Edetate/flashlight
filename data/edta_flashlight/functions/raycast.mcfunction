scoreboard players add @s edta_fl_ray_lim 1

execute if block ~ ~ ~ #edta_flashlight:airs run scoreboard players operation @s edta_fl_latest = @s edta_fl_ray_lim
execute if block ~ ~ ~ minecraft:water[level=0] run scoreboard players operation @s edta_fl_latest = @s edta_fl_ray_lim

execute unless block ^ ^ ^0.1 #edta_flashlight:transparent run scoreboard players set @s edta_fl_blocked 1
execute positioned ^ ^ ^0.1 positioned ~ ~-0.6 ~ if entity @e[distance=..1,type=!item,type=!player] run scoreboard players set @s edta_fl_blocked 1

execute if score @s edta_fl_blocked matches 1.. run function edta_flashlight:rewind_and_create_light
execute if score @s edta_fl_ray_lim matches 200.. run function edta_flashlight:create_light

execute unless score @s edta_fl_ray_lim matches 200.. unless score @s edta_fl_blocked matches 1.. positioned ^ ^ ^0.1 run function edta_flashlight:raycast

