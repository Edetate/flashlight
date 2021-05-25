execute if score @s edta_fl_ray_lim = @s edta_fl_latest align xyz positioned ~0.5 ~ ~0.5 run function edta_flashlight:create_light
scoreboard players remove @s edta_fl_ray_lim 1
execute if score @s edta_fl_ray_lim >= @s edta_fl_latest positioned ^ ^ ^-0.1 run function edta_flashlight:rewind_and_create_light

