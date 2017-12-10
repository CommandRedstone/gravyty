scoreboard players operation @s calculations = @s mass
scoreboard players operation @s calculations *= 50 number
scoreboard players operation @s calculations -= @e[type=armor_stand,tag=thisone] mass
tellraw @p ["",{"score":{"name":"@s","objective":"calculations"}}]
say hi

execute if entity @s[scores={calculations=0..}] run function game:masscalcs