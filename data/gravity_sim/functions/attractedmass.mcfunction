scoreboard players operation @s calculations = @s mass
scoreboard players operation @s calculations *= 10 number
scoreboard players operation @s calculations /= @e[type=armor_stand,tag=thisone] mass

execute if entity @s[scores={calculations=..2}] run function gravity_sim:masscalcs