scoreboard players operation @s calculations2 = @s xrelative
scoreboard players operation @s calculations2 *= @s calculations2
scoreboard players operation @s calculations = @s zrelative
scoreboard players operation @s calculations *= @s calculations
scoreboard players operation @s calculations2 += @s calculations
scoreboard players operation @s calculations = @s xrelative
scoreboard players operation @s calculations *= @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculations *= 10000 number
scoreboard players operation @s calculations /= @s calculations2
scoreboard players operation @s xvelocity += @s calculations


scoreboard players operation @s calculations = @s zrelative
scoreboard players operation @s calculations *= @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculations *= 10000 number
scoreboard players operation @s calculations /= @s calculations2

scoreboard players operation @s zvelocity += @s calculations