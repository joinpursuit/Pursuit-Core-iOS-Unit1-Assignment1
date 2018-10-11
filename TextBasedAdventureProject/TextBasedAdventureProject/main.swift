//
//  main.swift
//  TextBasedAdventureProject
//
//  Created by Biron Su on 10/10/18.
//  Copyright © 2018 Biron Su. All rights reserved.
//

import Foundation

var menuRepeat: Bool = true
var menuExit: Bool = false
var classWarrior: Bool = false
var slayBandits: Bool = false
var questOffer: Bool = false
var questEncounter: Bool = false
var gameEnd: Bool = false
var warriorHealth = 300
var banditHealth = 200
var warriorDamage = 0...100
var banditDamage = 0...20
var difficulty: Bool = true
// MENU REPEAT ////////////////////////////////////////////////
repeat {
    print("Select difficulty\n1) Easy\n2) Medium\n3) Hard\n4) Info")
    if let response = readLine(){
        switch response.lowercased(){
        case "easy", "1":
            print("Takin' it easy are yah? Not that hard to begin with...")
            warriorHealth = 400
            banditHealth = 200
            difficulty = false
        case "medium", "2":
            print("Ah, the way I originally planned")
            warriorHealth = 300
            banditHealth = 300
            difficulty = false
        case "hard", "3":
            print("Oh you might have to see this menu again deeper down the road... Good luck!")
            warriorHealth = 200
            banditHealth = 400
            banditDamage = 10...30
            difficulty = false
        case "info", "4":
            print("This is where the Health is adjusted between you and the enemy. Since I have no idea how to use functions yet, you will have to start completely over when you lose.")
        default:
            print("Go on, choose your difficulty!")
        }
    }
} while difficulty
print("Welcome adventurer! What class would you like to be? \n1) Warrior 2) Exit")

repeat {
    if let response = readLine() {
        switch response.lowercased() {
        case "warrior", "1":
            sleep(1)
            print("You've chosen a warrior! A mighty individual that is able to slice through mountains with his trusty sword.")
            menuRepeat = false
            classWarrior = true
            sleep(1)
        case "exit", "2":
            print("Are you sure you want to exit? \n1) Yes \n2) No")
            if let playerChoice = readLine() {
                switch playerChoice.lowercased(){
                case "yes", "1":
                    print("Come again adventurer")
                    menuRepeat = false
                    menuExit = true
                case "no", "2":
                    print("What class would you like to be? \n1) Warrior \n2) Exit")
                    sleep(1)
                default:
                    print("No clue what you wrote, but here's the main menu again! \n")
                    print("What class would you like to be? \n1) Warrior \n2) Exit")
                    sleep(1)
                }
            }
        default:
            print("You didn't choose anything, choose again!")
            print("What class would you like to be? \n1) Warrior \n2) Exit")
            sleep(1)
        }
    }
    
} while menuRepeat


// QUEST OFFER ////////////////////////////////////////////////

if classWarrior == true {
    questOffer = true
}

while questOffer {
    let greetings = ("Greetings Warrior! I am the wise old chief of this fine establishment!", "We are glad you are here with us today in our town.", "We currently have a bit of a problem with our merchants are unable to travel back and forth with our neighboring town due to bandits.", "Would you be kindly to rid them off our routes?", "1) Yes", "2) No")
    print(greetings.0)
    sleep(1)
    print(greetings.1)
    sleep(1)
    print(greetings.2)
    sleep(1)
    print(greetings.3)
    sleep(1)
    print(greetings.4)
    print(greetings.5)
    repeat {
        if let response = readLine() {
            switch response.lowercased(){
            case "yes", "1":
                print("Perfect! The sun is already setting, continue on your quest tomorrow.")
                questEncounter = true
                questOffer = false
                sleep(3)
            case "no", "2":
                print("Well, what's the point of being an adventurer if you can't even accept the only quest that you will ever get?")
                menuExit = true
                questOffer = false
            default:
                print("Speak clearly, please. I can't hear you well cause of my old age")
            }
        }
    } while questOffer
}
// QUEST ENCOUNTER ////////////////////////////////////////////////
if questEncounter == true {
    print("As the sun starts to reveal itself to you from the distant mountains, you noticed a campsite with a few messy fellows approaching you.")
    print("Do you draw your sword or flee? \n1) Fight \n2) Flee")
    repeat {
        if let response = readLine() {
            switch response.lowercased(){
            case "fight", "1":
                print("You've decided to stand your ground as you see they are the bandits that need to be taken care of. Get ready!")
                sleep(1)
                questEncounter = false
                slayBandits = true
            case "flee", "2":
                questEncounter = false
                menuExit = true
            default:
                print("Invalid action!")
            }
        }
    } while questEncounter
}

// SLAY BANDITS ////////////////////////////////////////////////
var questReward: Bool = false
//let warriorHit = Int.random(in: warriorDamage)
//let banditHit = Int.random(in: banditDamage)
//let warriorBlockPercentage = Double(Int.random(in: 50...90)) * 0.01
while slayBandits {
    print("Choose your action!\n1) Attack\n2) Defend\n3) Flee")
    if let response = readLine() {
        let warriorHit = Int.random(in: warriorDamage)
        let banditHit = Int.random(in: banditDamage)
        switch response.lowercased() {
        case "attack", "1":
            banditHealth = banditHealth - warriorHit
            print("You swing your sword doing total of \(warriorHit) to the bandits as they now have \(banditHealth) health remaining.")
            sleep(1)
            warriorHealth = warriorHealth - banditHit
            print("The bandits retaliate back doing total of \(banditHit) leaving you with \(warriorHealth) health left")
        case "defend", "2":
            print("You hold up your sturdy shield for incoming attacks blocking total of \(banditHit)")
        case "flee", "3":
            print("You can't flee from this fight, your blade wont allow that")
        default:
            print("INVALID ACTION!!")
        }
        if warriorHealth <= 0 {
            slayBandits = false
            sleep(2)
            print("OH NO YOU LOSTTTTTT")
        }
        if banditHealth <= 0 {
            slayBandits = false
            sleep(2)
            questReward = true
        }
    }
}
if questReward == true {
    sleep(1)
    print("\n\nVictorious!! The bandits have been taken care of!")
    print("Here is the reward bucket filled with gold coins!")
    print("How much would you like to get paid? \nInsert Value")
    if let response = readLine() {
        if let intVal = Int(response) {
            if intVal <= 200 {
                print("That's all? Let me treat you to a meal too then.")
                gameEnd = true
            } else if intVal >= 400 {
                print("Woah, a bit too much there... I wont have enough to make this town a better place for another few decades")
                gameEnd = true
            } else {
                print("Generous amount, sounds about right. My town is your town, go get settled in.")
                gameEnd = true
            }
        }
    }
}
if gameEnd == true {
    sleep(2)
    let gameEndMessage = """
        .@@@@@@@@@@.    *@@@@@@@@@@.   @@@@@@@@ @@@@@@@@  @@@@@@@@@@@@@@
       @@@@@           @@@@@    @@@@@  @@@@% @@@@@ @@@@@  @@@@%
       @@@@@           @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@#
       @@@@@ @@@@@@@@  @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@@@@@@@@@@
       @@@@@    @@@@@  @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@
       @@@@@    @@@@@  @@@@@@@@@@@@@@  @@@@# @@@@@ @@@@@  @@@@&
        .@@@@@@@@@@*   @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@@@@@@@@@@
"""
    let gameEndMessage2 = """

          @@@@@@@@@@@    @@@@     @@@@/ .@@@@@@@@@@@@@/ (@@@@@@@@@@@@
         @@@@/    @@@@#  @@@@     @@@@/ .@@@@.          (@@@@    .@@@@
         @@@@/    @@@@#  @@@@     @@@@/ .@@@@.          (@@@@    .@@@@
         @@@@/    @@@@#  @@@@     @@@@/ .@@@@@@@@@@@@@. (@@@@@@@@@@@@
         @@@@/    @@@@#  @@@@     @@@@/ .@@@@           (@@@@     @@@@
         @@@@/    @@@@#   @@@@@ @@@@@   .@@@@           (@@@@     @@@@
          @@@@@@@@@@@        @@@@@      .@@@@@@@@@@@@@* (@@@@     @@@@



        Thanks for playing!!!


"""
    print(gameEndMessage)
    sleep(2)
    print(gameEndMessage2)
}
// MENU EXIT ////////////////////////////////////////////////
if menuExit == true {
    classWarrior = false
    print("Hope to see you again adventurer, come back when you are brave enough to venture.")
}

