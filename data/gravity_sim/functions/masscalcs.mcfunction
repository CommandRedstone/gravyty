execute store result score @s xrelative run data get entity @s Pos[0]
execute store result score @s yrelative run data get entity @s Pos[1]
execute store result score @s zrelative run data get entity @s Pos[2]

scoreboard players operation @s xrelative -= @e[type=armor_stand,tag=thisone] x
scoreboard players operation @s yrelative -= @e[type=armor_stand,tag=thisone] y
scoreboard players operation @s zrelative -= @e[type=armor_stand,tag=thisone] z

function gravity_sim:acceleration