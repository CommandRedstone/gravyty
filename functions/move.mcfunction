execute if score @s xvelocity > 200000000 number run scoreboard players set @s xvelocity 200000000
execute if score @s zvelocity > 200000000 number run scoreboard players set @s zvelocity 200000000

execute if score @s xvelocity < -200000000 number run scoreboard players set @s xvelocity -200000000
execute if score @s zvelocity < -200000000 number run scoreboard players set @s zvelocity -200000000

execute store result entity @s Motion[0] double -0.00000005 run scoreboard players get @s xvelocity
execute store result entity @s Motion[2] double -0.00000005 run scoreboard players get @s zvelocity