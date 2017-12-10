execute store result score @s xrelative run data get entity @s Pos[0]
execute store result score @s zrelative run data get entity @s Pos[2]

<<<<<<< HEAD
scoreboard players operation @s xrelative -= @e[type=falling_block,tag=thisone] x
scoreboard players operation @s yrelative -= @e[type=falling_block,tag=thisone] y
scoreboard players operation @s zrelative -= @e[type=falling_block,tag=thisone] z
=======
scoreboard players operation @s xrelative -= @e[type=armor_stand,tag=thisone] x
scoreboard players operation @s zrelative -= @e[type=armor_stand,tag=thisone] z
>>>>>>> parent of f3d7e0d... added y

function gravity_sim:acceleration