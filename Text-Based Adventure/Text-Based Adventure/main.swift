//
//  main.swift
//  Text-Based Adventure
//
//  Created by Matthew Huie on 10/10/18.
//  Copyright © 2018 Matthew Huie. All rights reserved.
//

import Foundation

//This is my text-based adventure: Oregon Trail
var playerName = ""
var age = ""
var parentsGift = ""
var parentsGift1: String = "rifle"
var parentsGift2 = "medicine"
var parentsGift3 = "food"
let banditDiceRoll = Int.random(in: 1...6)
var playerWin = false

print("Please enter your name.")
playerName = readLine()!
print("Please enter your age name.")
age = readLine()!

var readyPlayer = false
var playerNamer = (name: playerName, age: age)
print("")
print(" \(playerNamer), Are you ready to embark on your journey?")
print("Are you ready?: Yes or No")
if let yesOrNo = readLine()?.lowercased() {
    switch yesOrNo {
    case "yes":
        print("Welcome to the Oregon Trail!")
        print("A game based loosely on the popular PC and board game, Oregon Trail")
        print("Your adventure takes place in 1830, during the height of Westward expansion. You decide to journey to Oregon - where rumors claim to have bountiful riches.")
        print("You set off from your hometown with nothing but your knapsack and your horse-pulled wagon.")
        print("Before you leave, your parents decide to gift you an item. Choose one: Rifle, Medicine, Food, or Refuse Gift")
        
            parentsGift = readLine()!.lowercased()
            switch parentsGift {
            case parentsGift1:
                print("You took the rifle and set off on your journey.")
            case parentsGift2:
                print("You took the medicine and set off on your journey.")
            case parentsGift3:
                print("You took the food and set off on your journey.")
            default:
                print("You refused one of the helpful items your parents tried to gift you. You set off on your journey and died of dysentery.")
                print("Start again.")
            }
    case "no":
        readyPlayer = true
    default:
        readyPlayer = true
        }
    }
if readyPlayer == true {
    print("Come back when you are ready.")
} else {
    print("The daylight starts to fade and you decide to camp out for the night")
    print("In the middle of the night you hear a noise. Do you investigate? Yes or No")
}


var survived = false
if let nightNoise = readLine()?.lowercased() {
    switch nightNoise {
    case "yes":
        print("A black bear jumped out of the bushes")
        print("Do you have a rifle? Yes or No")
        
        if let doYouHaveRifle = readLine()?.lowercased() {
        switch doYouHaveRifle {
        case "yes":
            print("You killed the bear")
            print("After killing the bear, you go back to sleep so that you have enough strength for the next day's journey.")
        case "no":
            survived = true
            
        default:
            print("")
        }
        }
    case "no":
        print("You sleep through the night")
    default:
        break
    }
}
if survived == true {
    print("You were mauled to death.")
    print("Play again")
} else {
print("On the following morning, you continue down the road")
print("You bump into a group of bandits that love to gamble")
print("The leader comes up to you and tells you to choose a number from 1 to 6")
print("The leader also tells you that if he can roll a higher number than the one you chose, he would like you pass. Additionally, you can try as many times as you like since he tells you that he has never lost once")
print("")
print("You pick: A number from 1 to 6")
}

while playerWin == false {
    if let playerNum = readLine() {
        let playerNumInt = Int(playerNum)!
        switch playerNumInt < banditDiceRoll {
        case true:
            print("You lose, Try again.")
        case false:
            print("You beat the bandit leader!")
            playerWin = true
            break
        }
    }
}
print("After beating the bandit leader, you continue down the road")
print("Weeks past until you stumble upon a satchel laying on the side of the road.")
print("Stop to look inside it? Yes or No")

var trapActivated = false
if let lookAtSatchel = readLine()?.lowercased() {
    switch lookAtSatchel {
    case "yes":
        print("You see gold coins inside the satchel. How many do you take?")
        let goldCoins = readLine()!
        let goldCoinsAsInt = Int(goldCoins)!
        for currentCoin in 1...goldCoinsAsInt {
            print("You slowly take coin number \(currentCoin)")
            if currentCoin == 10 {
                print("It was a trap! You were too greedy and the bear trap activates. It chops your hand off and you bleed to death whilst contracting dysentery")
                trapActivated = true
              
            }
        }
        if !trapActivated {
            print("Congrats! You made it out with \(goldCoinsAsInt) gold coins!")
        }
    default:
        print("")
    }
}
if trapActivated {
    print("Don't take too many coins!")
} else {
print("You continued down the path and eventually stumble upon a sick stranger just outside of Oregon.")
print("Do you want to help this stranger? Yes or No")
}

var contractedDysentery = false

if let helpStranger = readLine()?.lowercased() {
    switch helpStranger {
    case "yes":
        print("You contracted dysentery off this stranger and you died.")
        contractedDysentery = true
    default:
        print("Congrats! You made it to Oregon!")
    }
}
if contractedDysentery {
    print("Don't help random sick strangers!")
}


