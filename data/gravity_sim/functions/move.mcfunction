execute if score @s xvelocity > 2000000000 number run scoreboard players set @s xvelocity 2000000000
execute if score @s yvelocity > 2000000000 number run scoreboard players set @s yvelocity 2000000000
execute if score @s zvelocity > 2000000000 number run scoreboard players set @s zvelocity 2000000000

execute if score @s xvelocity < -2000000000 number run scoreboard players set @s xvelocity -2000000000
execute if score @s yvelocity < -2000000000 number run scoreboard players set @s yvelocity -2000000000
execute if score @s zvelocity < -2000000000 number run scoreboard players set @s zvelocity -2000000000

execute store result entity @s Motion[0] double -0.000000005 run scoreboard players get @s xvelocity
execute store result entity @s Motion[1] double -0.000000005 run scoreboard players get @s yvelocity
execute store result entity @s Motion[2] double -0.000000005 run scoreboard players get @s zvelocity