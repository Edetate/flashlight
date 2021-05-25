execute if block ~ ~ ~ #edta_flashlight:airs run setblock ~ ~ ~ minecraft:light[level=10,waterlogged=false]
execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ minecraft:light[level=10,waterlogged=false]
execute if block ~ ~ ~ minecraft:water[level=0] run setblock ~ ~ ~ minecraft:light[level=10,waterlogged=true]
execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ minecraft:light[level=10,waterlogged=true]
summon minecraft:marker ~ ~ ~ {Tags:[edta_fl_marker]}