execute as @e[type=armor_stand] at @s run function gravity_sim:attracttome
execute as @e[type=armor_stand] at @s run function gravity_sim:collision_check
execute as @e[type=armor_stand,tag=Collision,limit=1,sort=arbitrary] at @s run function gravity_sim:collision
replaceitem entity TheBarfCreations hotbar.0 minecraft:armor_stand{EntityTag:{Tags:[new,size1],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:red_wool",Count:1}]},display:{LocName:"Spawn Body Mass 1",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.1 minecraft:armor_stand{EntityTag:{Tags:[new,size2],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:orange_wool",Count:1}]},display:{LocName:"Spawn Body Mass 2",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.2 minecraft:armor_stand{EntityTag:{Tags:[new,size3],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1}]},display:{LocName:"Spawn Body Mass 3",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.3 minecraft:armor_stand{EntityTag:{Tags:[new,size5],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:lime_wool",Count:1}]},display:{LocName:"Spawn Body Mass 5",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.5 minecraft:armor_stand{EntityTag:{Tags:[new,size10],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:light_blue_wool",Count:1}]},display:{LocName:"Spawn Body Mass 10",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.6 minecraft:armor_stand{EntityTag:{Tags:[new,size50],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:blue_wool",Count:1}]},display:{LocName:"Spawn Body Mass 50",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.7 minecraft:armor_stand{EntityTag:{Tags:[new,size100],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:purple_wool",Count:1}]},display:{LocName:"Spawn Body Mass 100",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity TheBarfCreations hotbar.8 minecraft:armor_stand{EntityTag:{Tags:[new,size500],Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1}]},display:{LocName:"Spawn Body Mass 500",Lore:["Einstein's going to be mad!"]}} 1

execute as @e[type=armor_stand,tag=new] run function gravity_sim:setscore
execute as @a run function gravity_sim:gui
execute as @e[type=armor_stand] run function gravity_sim:move
kill @e[tag=Collided]
tag @e[tag=Collision] remove Collision
tag @e[tag=CollisionP] remove CollisionP