//
//  main.swift
//  Assignment_1
//
//  Created by Brendon Cecilio on 10/1/19.
//  Copyright © 2019 Brendon Cecilio. All rights reserved.
//

import Foundation
import GameplayKit

print("Welcome to my knock off Dungeons and Dragons Game 🐲!")
print()
sleep(4)

print("Choose your weapon! (Axe/Staff/Bow and Arrow)")
let weapon = readLine()?.lowercased() ?? ""
print()

switch weapon {
case "axe":
    sleep(1)
    print("You are a warrior! ⚔️ You are an young orc about to enter your first Mak'gora, a duel of honor. Frightened and full of adrenaline you stare at your opponent intensely as you continue to sharpen your axe. Suddenly your enemy leaps to strike you!")
case "staff":
    sleep(1)
    print("You are a mage! 🔮 While on a research expedition you and your ranging party come across an artifact. It is an ancient object from a different time, or different world perhaps. As you gaze upon it's glowing aura you are overwhelmed with a sense of greed and paranoia, urging you to take the artifact. As you reach for the glimmering orb a cave troll appears")
case "bow and arrow":
    sleep(1)
    print("You are a hunter! 🏹 During your a hunting expedition you find a wild boar! After successfully killing the beast you and your hunting party capture your game and proceed to venture back to your village. The ground begins to shake and a thundering roar pierces your ear drums as you realize you've hunted someone else's game. A giant cyclops 👁 breaks through the trees and run towards you and your party...")
default:

    sleep(3)
    print("\(weapon) was not an option 😡")
    break
}
print()

print("Do you fight or run?")
let fight = readLine()?.lowercased()
sleep(2)
print()


var randomNumber = Int.random(in: 12...20)

if weapon == "staff" {
    switch fight {
    case "fight":
        sleep(1)
        print("You reach for your staff and quickly cast a barrier spell to protect yourself and your research party ✨. As the cave troll attempts to break your magical shield with brute force, it begins to exhaust itself. You notice the beast is tired and see an opening and cast firebolt 🔥...")
    case "run":
        sleep(1)
        print("You successfully ran away and made it out of the mysterious cave alive... coward!")
    default:
        print()
    }
    
    print()
    sleep(5)
    
    if randomNumber >= 15 && fight != "run" {
        print("if here \(weapon)")
        sleep(1)
        print("💥 Critical Strike! You rolled a \(randomNumber)! You have defeated the Cave Troll and successfully retrieved the ancient artifact!")
    } else if randomNumber <= 15 && fight != "run"{
        print("else here \(weapon)")
        sleep(2)
        print("You rolled a \(randomNumber). You have weakened the troll but have yet to defeat him. Roll again quickly!")
        randomNumber -= -1
        print()
        sleep(3)
        print("You re-rolled a \(randomNumber)! You have slain the cave troll and successfully retrieved the ancient artifact!")
    }
}

if weapon == "axe" {
    switch fight {
    case "fight":
        sleep(1)
        print("Relying fully on insticts you grab your axe and block their strike. Your opponent is quick but weaker than you. Realizing this you decide to wait until they show an opening in their attacks. As you parry and block the incoming strikes you see an opening to attack...")
    case "run":
        sleep(2)
        print("You attempt to run away but your opponent catches up and strikes you. As you plead for mercy from your enemy, they slowly walk towards your immoblie body and finish you off... coward!")
    default:
        print("dead")
    }
    
    print()
    sleep(5)
    
    if randomNumber >= 15 && fight != "run"{
        sleep(1)
        print()
        print("💥 Critical Strike! You rolled a \(randomNumber)! You have defeated your opponenet and have won your first Mak'gora!")
    } else if randomNumber <= 15 && fight != "run"{
        sleep(2)
        print()
        print("You rolled a \(randomNumber). You have weakened your enemy but have yet to defeat them. Roll again quickly!")
        randomNumber -= -1
        sleep(3)
        print()
        print("You re-rolled a \(randomNumber)! You have slain the your opponent in 2 strikes! You have won your first Mak'gora!")
    }
}

if weapon == "bow and arrow" {
    switch fight {
    case "fight":
        sleep(1)
        print("You and your hunting party quickly dodge the cyclops and hide behind the trees and rocks in the forest. You weild your bow and arrow, thinking of a way to take your new enemy down. The cyclops is dumb and slow and realize shooting his eye will buy you and your party enough time to escape. You find an opening and shoot!...")
    case "run":
        sleep(1)
        print("Why would you try to run from a giant cyclops?! Those dudes are mad fast and you just died... coward!")
    default:
        print("dead")
    }
    
    print()
    sleep(5)
    
    if randomNumber >= 15 && fight != "run"{
        sleep(1)
        print("💥 Critical Strike! You rolled a \(randomNumber)! You have defeated the mighty cyclops! You retrieve the game you've hunted and procced to leave the forest and return to your village.")
    } else if randomNumber <= 15 && fight != "run"{
        sleep(2)
        print("You rolled a \(randomNumber). You fire your arrow but miss your mark! Roll again quickly!")
        randomNumber -= -1
        print()
        sleep(3)
        print("You re-rolled a \(randomNumber)! You have finally slain the the mighty cyclops! You retrieve the game you've hunted and procceed to leave the forest and return to your village.")
    }
}

print()
print()
sleep(1)
print("Would you like to play again?")

let decision = readLine()?.lowercased()
switch decision {
case "yes":
    print("Then hit ⌘ R!")
default:
    print("CYA 👋")
}
