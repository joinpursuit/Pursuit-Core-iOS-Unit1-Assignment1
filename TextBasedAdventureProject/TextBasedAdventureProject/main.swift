//
//  main.swift
//  Playing with project
//
//  Created by Biron Su on 10/11/18.
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
var warriorMinDamage = 0
var warriorMaxDamage = 100
var banditDamage = 0...20
var difficulty: Bool = true
var easyMode: Bool = false
var mediumMode: Bool = false
var hardMode: Bool = false
var wholeGame: Bool = false
// continue stats
var gameContinue: Bool = false
var userName = ""
var coins = 0
var weaponUpgrade = 10
var warriorTotalDamage = warriorMinDamage...warriorMaxDamage
var weaponCost = 200
// MENU REPEAT ////////////////////////////////////////////////
repeat {
    wholeGame = false
    repeat {
        print("Hello adventurer! What is your name?")
        if let response = readLine() {
            userName = String(response)
        }
        print("Select difficulty\n1) Easy\n2) Medium\n3) Hard\n4) Info")
        if let response = readLine(){
            switch response.lowercased(){
            case "easy", "1":
                print("Takin' it easy are yah? Not that hard to begin with...")
                easyMode = true
                difficulty = false
            case "medium", "2":
                print("Ah, the way I originally planned")
                mediumMode = true
                difficulty = false
            case "hard", "3":
                print("Oh you might have to see this menu again deeper down the road... Good luck!")
                hardMode = true
                difficulty = false
            case "info", "4":
                print("""
                    This is where the Health is adjusted between you and the enemy.
                    Since I have no idea how to use functions yet, you will have to start completely over when you lose.
                    """)
            default:
                print("Go on \(userName), choose your difficulty!")
            }
        }
    } while difficulty
    if easyMode == true {
        warriorHealth = 400
        banditHealth = 200
    }
    if mediumMode == true {
        warriorHealth = 300
        banditHealth = 300
    }
    if hardMode == true {
        warriorHealth = 200
        banditHealth = 400
        banditDamage = 10...30
    }
    print("Welcome \(userName)! What class would you like to be? \n1) Warrior 2) Exit")
    
    repeat {
        if let response = readLine() {
            switch response.lowercased() {
            case "warrior", "1":
                sleep(1)
                print("You've chosen a warrior! A mighty individual that is able to slice through mountains with his trusty sword.")
                menuRepeat = false
                classWarrior = true
                questOffer = true
                sleep(1)
            case "exit", "2":
                print("Are you sure you want to exit? \n1) Yes \n2) No")
                if let playerChoice = readLine() {
                    switch playerChoice.lowercased(){
                    case "yes", "1":
                        print("Come again \(userName)")
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
    
    //    if classWarrior == true {
    //        questOffer = true
    //    }
    
    while questOffer {
        let greetings = ("Greetings \(userName)! I am the wise old chief of this fine establishment!", "We are glad you are here with us today in our town.", "We currently have a bit of a problem with our merchants are unable to travel back and forth with our neighboring town due to bandits.", "Would you be kindly to rid them off our routes?", "1) Yes", "2) No")
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
    while slayBandits {
        let warriorHit = Int.random(in: warriorTotalDamage)
        let banditHit = Int.random(in: banditDamage)
        print("Choose your action!\n1) Attack\n2) Defend\n3) Flee")
        if let response = readLine() {
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
                print("Restart Entire game?\n1) Yes\n2) No")
                if let response = readLine() {
                    switch response.lowercased() {
                    case "yes", "1":
                        wholeGame = true
                    case "no", "2":
                        gameEnd = true
                    default:
                        print("Sorry, I didn't get that.")
                    }
                }
            } else if banditHealth <= 0 {
                slayBandits = false
                sleep(2)
                questReward = true
            }
        }
    }
    ///// QUEST REWARD - OPTION TO CONTINUE?
    if questReward == true {
        sleep(1)
        print("\n\nVictorious!! The bandits have been taken care of!")
        print("Here is the reward bucket filled with gold coins!")
        print("How much would you like to get paid? \nInsert Value")
        if let response = readLine() {
            if let intVal = Int(response) {
                if intVal <= 200 {
                    print("That's all? Let me treat you to a meal too then.")
                    coins += intVal
                    gameContinue = true
                } else if intVal >= 401 {
                    print("Woah, asking for way too much. Just have what I was going to offer")
                    coins += 400
                    gameContinue = true
                } else {
                    print("Generous amount, sounds about right. My town is your town, go get settled in.")
                    coins += intVal
                    gameContinue = true
                }
            }
        }
        print("Now that the bandits are gone, we need an adventurer like you around here to help clear out the dangers completely.")
        sleep(1)
        print("Would you like to stay and defend my town? There will be rewards!\n1) Yes\n2) No")
        if let response = readLine() {
            switch response.lowercased() {
            case "yes", "1":
                print("GREAT! Get some rest and we will continue after.\nRefine your weapon for more damage or rest for full health!")
                sleep(2)
                gameContinue = true
            case "no", "2":
                print("That is understandable, good luck to you on your journey.")
                gameEnd = true
            default:
                print("Huh? Speak louder!")
            }
        }
    }
    /// GAME CONTINUEEEE//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    var monRotation: Bool = false
    var prepare: Bool = false
    
    if gameContinue {
        print("Before we head out, would you like to rest or refine?")
        repeat {
            print("1) Rest\n2) Refine\n3) Ready!\n4) Status\n5) Exit")
            if let response = readLine() {
                switch response.lowercased() {
                case "1", "rest":
                    if easyMode == true {
                        warriorHealth = 400
                    } else if mediumMode == true {
                        warriorHealth = 300
                    } else if hardMode == true {
                        warriorHealth = 200
                    }
                    print("You now have full \(warriorHealth) Health after resting!")
                    prepare = true
                case "2", "refine":
                    print("Time to enhance that weapon of yours! Each refine cost \(weaponCost) coins for a bonus of \(weaponUpgrade) damage")
                    var refineLoop: Bool = true
                    repeat {
                        print("1) Refine\n2) Done!")
                        if let response = readLine() {
                            switch response.lowercased() {
                            case "1", "refine" :
                                print("Refining...")
                                if coins >= 200 {
                                    coins -= weaponCost
                                    warriorMinDamage += weaponUpgrade
                                    warriorMaxDamage += weaponUpgrade
                                    print("You now do minimum of \(warriorMinDamage) to maximum of \(warriorMaxDamage) after refine!")
                                } else {
                                    print("NOT ENOUGH COINS!! It cost \(weaponCost) coins, you need \(weaponCost - coins) more to refine.")
                                }
                            case "2", "done" :
                                print("Alrighty lets go!")
                                refineLoop = false
                            default:
                                print("Don't undertstand ya'")
                            }
                        }
                    } while refineLoop
                    prepare = true
                case "3", "ready!":
                    print("Ready to head out again are yah? Let's get to it then!")
                    monRotation = true
                    prepare = false
                case "4", "status":
                    print("You currently have \(warriorHealth) Health and \(coins) coins")
                    prepare = true
                case "5", "exit":
                    print("Ah, changed your mind have we? I was looking forward of seeing you in action. Welp Good luck!")
                    prepare = false
                    gameEnd = true
                default:
                    print("Not a valid response!")
                    prepare = true
                }
            }
            while monRotation {
                print("You've entered a cave near a mountain where villagers said monsters have been coming out at night attacking innocents.")
                print("What do you do?\n1) Move(deeper) \n2) Flee")
                if let response = readLine() {
                    switch response.lowercased() {
                    case "1", "move":
                        print("You venture deeper in...")
                    case "2", "flee":
                        print("Time to head back to the village")
                        monRotation = false
                        prepare = true
                    default:
                        print("Wat.")
                    }
                }
            }
        } while prepare
        
    }
    //// END GAME!
    if gameEnd == true {
        sleep(2)
        let gameEndMessage = """
            .@@@@@@@@@@.    *@@@@@@@@@@.   @@@@@@@@ @@@@@@@@  @@@@@@@@@@@@
           @@@@@           @@@@@    @@@@@  @@@@% @@@@@ @@@@@  @@@@%
           @@@@@           @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@#
           @@@@@ @@@@@@@@  @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@@@@@
           @@@@@    @@@@@  @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@
           @@@@@    @@@@@  @@@@@@@@@@@@@@  @@@@# @@@@@ @@@@@  @@@@&
            .@@@@@@@@@@*   @@@@@    @@@@@  @@@@# @@@@@ @@@@@  @@@@@@@@@@@@@
    """
        let gameEndMessage2 = """
        
         @@@@@@@@@@@    @@@@     @@@@/ .@@@@@@@@@@@@@/ (@@@@@@@@@@@@
        @@@@/    @@@@#  @@@@     @@@@/ .@@@@.          (@@@@    .@@@@
        @@@@/    @@@@#  @@@@     @@@@/ .@@@@.          (@@@@    .@@@@
        @@@@/    @@@@#  @@@@     @@@@/ .@@@@@@@@@@@@@. (@@@@@@@@@@@@
        @@@@/    @@@@#  @@@@     @@@@/ .@@@@           (@@@@     @@@@
        @@@@/    @@@@#   @@@@@ @@@@@   .@@@@           (@@@@     @@@@
         @@@@@@@@@@@        @@@@@      .@@@@@@@@@@@@@* (@@@@     @@@@
        
        
        Thanks for playing \(userName)!!!
        
        """
        print(gameEndMessage)
        sleep(2)
        print(gameEndMessage2)
    }
    // MENU EXIT ////////////////////////////////////////////////
    if menuExit == true {
        classWarrior = false
        print("Hope to see you again \(userName), come back when you are brave enough to venture.")
    }
} while wholeGame

