scoreboard players operation $edta_fl_old_score edta_fl_light_on = @s edta_fl_light_on
execute if score $edta_fl_old_score edta_fl_light_on matches 1 run scoreboard players set @s edta_fl_light_on 0
execute unless score $edta_fl_old_score edta_fl_light_on matches 1 run scoreboard players set @s edta_fl_light_on 1
execute if score $edta_fl_old_score edta_fl_light_on matches 0 run schedule function edta_flashlight:new_cycle 2