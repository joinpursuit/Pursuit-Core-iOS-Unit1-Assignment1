////
////  main.swift
////  Text Based adventure
////
////  Created by Ian Bailey on 10/10/18.
////  Copyright © 2018 Ian Bailey. All rights reserved.
//////ENTER THE DUNGEON
var total = 0
var enemyHP = 40
var playerHP = 30
var array = [1,2,3,4,5,6,7,8,9,10,45]
var arrayEnemy = [1,2,3,4,5,6,7,8]
var damage = array.randomElement()
var enemyDamage = arrayEnemy.randomElement()



print ("Welcome to the Dungeon! The monster you've been hunting is sure to be inside. Forge ahead or turn back?")
loop: while enemyHP > 0 && playerHP > 0{
let forwardOrBackward = readLine()!
switch forwardOrBackward.lowercased() {
    case "forward", "up", "forge ahead" ,"go" ,"enter":
    print("you make your way into the darkness of the dungeon, as your eyes adjust to the inky blackness around you, you notice a large dial on the wall")
    print("How many times do you turn it?")
    innerloop0: while enemyHP > 0 && playerHP > 0 {
    var dialTurns = readLine()!
    if let dialTurnsAsInt = Int(dialTurns) {
        total += dialTurnsAsInt
        print("You Turn the dial \(total) time/s")
   
    
         while total < 10{
     if (total < 10) {
        print ("keep turning")
         dialTurns = readLine()!
        if let dialTurnsAsInt = Int(dialTurns) {
        total += dialTurnsAsInt
            print (total)
        
    }
    }
    }
        
    if total % 2 == 0 {
        print ("The wall slides open revealing a chamber.")
        print("Inside the chamber is the Hulking Ogre that's been terrorizing your village!, you draw your Sword and prepare to fight.")

    } else {
        print ("The ceiling splits open and rocks fall! You died a very flat death. GAME OVER!")
        break loop
    }
   
    
    if total % 2 == 0 {
        print("The Ogre draws close! What do you do? Enter fight or run")
        innerloop1: while enemyHP > 0 && playerHP > 0{
    let combat = readLine()!
        switch combat.lowercased() {
        case "fight":
            enemyDamage = arrayEnemy.randomElement()
            damage = array.randomElement()
            enemyHP -= damage ?? 1
            playerHP -= enemyDamage ?? 1
            if let damageUnwrapped = damage {
                if damageUnwrapped <= 10 {
                   
                        print("You swing your sword dealing \(damage ?? 1 ) damage")
                        print("The Ogre's hp is \(enemyHP)")
                        print("The Ogre Clobbers you for \(enemyDamage ?? 1) damage")
                        print("Your HP is \(playerHP)")
                    
                    
                    if enemyHP <= 0{
                        print("The Beast is felled, peace can finally return to the land but, the beast may some day return...")
                        
                       
                    
                    }
                    do {
                    if playerHP <= 0{
                            print("The ogre has bested you")
                        
                        if playerHP <= 0 && enemyHP <= 0 {
                            print("You felled the ogre but at what cost?")
                        }
                        }
                        
                            }
            }
            if let damageUnwrapped = damage {
                if damageUnwrapped >= 12 {
                    print("The Vorpal Blade goes snicker Snap!")
                    print("You swing your sword dealing \(damage ?? 1 ) damage")
                    print("The Ogre's hp is \(enemyHP)")
                    print("The Ogre Clobbers you for \(enemyDamage ?? 1) damage")
                    print("Your HP is \(playerHP)")
                    
                    if enemyHP <= 0{
                        print("The Beast is felled, peace can finally return to the land! You return to your village victorious and they erect a statue in your honor.")
                        
                        if playerHP <= 0 {
                            print("The ogre has bested you")
                            
                            if playerHP <= 0 && enemyHP <= 0 {
                                print("You felled the ogre but at what cost?")
                            
                            }
                        }
            
                    }
                    var player = (name:"Hero", age:"Unknown")
                    print("ENTER YOUR NAME BRAVE HERO:")
                    let nameResponse = readLine() ?? "Hero"
                    player.name = nameResponse
                    print("ENTER YOUR AGE")
                    let ageResponse = readLine() ?? "Unknown"
                    let age = ageResponse
                    for ageResponse in age{
                        player.age = age
                        print ("ALL HAIL \(player.name.uppercased()) AGE \(player.age), OGRE SLAYER")
                        
                    }
        
                    
                    
                }
               
            }
            }
            
        
            
        
        case "run":
            print("You turn tail and run for your life! Who will save the village now?")
            break loop
        default:
            print ("I'm not sure what you mean")
            continue innerloop1
        }
        
        }
        }
    } else {
      print("enter a number")
        
    }
    
        continue innerloop0 }
    
case "back", "leave", "turn back", "return", "retreat", "run" :
    print("You turn tail and run for your life! Who will save the village now?")
     break loop
default:
    print ("I'm not sure what you mean")
    continue loop
}


}




