scoreboard players operation @s calculation = @s mass
scoreboard players operation @s calculation *= 50 number
scoreboard players operation @s calculation -= @e[type=armor_stand,tag=thisone] mass

execute if entity @s[scores={calculation=0..}] run function game:masscalcs