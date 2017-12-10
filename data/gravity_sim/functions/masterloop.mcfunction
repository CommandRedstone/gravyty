execute as @e[type=armor_stand] run function gravity_sim:attracttome

replaceitem entity @a hotbar.0 minecraft:armor_stand{EntityTag:{Tags:[new,size1],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 1",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.1 minecraft:armor_stand{EntityTag:{Tags:[new,size2],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 2",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.2 minecraft:armor_stand{EntityTag:{Tags:[new,size3],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 3",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.3 minecraft:armor_stand{EntityTag:{Tags:[new,size5],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 5",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.5 minecraft:armor_stand{EntityTag:{Tags:[new,size10],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 10",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.6 minecraft:armor_stand{EntityTag:{Tags:[new,size50],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 50",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.7 minecraft:armor_stand{EntityTag:{Tags:[new,size100],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 100",Lore:["Einstein's going to be mad!"]}} 1
replaceitem entity @a hotbar.8 minecraft:armor_stand{EntityTag:{Tags:[new,size500],Invisible:1,Marker:1},display:{LocName:"Spawn Body Mass 500",Lore:["Einstein's going to be mad!"]}} 1

execute as @e[type=armor_stand,tag=new] run function gravity_sim:setscore

execute as @e[type=armor_stand] run function gravity_sim:move