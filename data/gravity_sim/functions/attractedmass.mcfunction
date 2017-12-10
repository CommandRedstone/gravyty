scoreboard players operation @s calculation = @e[type=armor_stand,tag=thisone] mass
scoreboard players operation @s calculation /= @s mass

execute if entity @s[scores={mass=0..50}] run function game:masscalcs