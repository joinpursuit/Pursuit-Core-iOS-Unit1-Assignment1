//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Genesis Mosquera on 10/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//
//
import Foundation
var imageTop = """
    H E L L O !
"""
print (imageTop)
sleep (1)
print("🧙🏼‍♀️🔎🧙🏻‍♂️Welcome to the WKND Hunt🧙🏼‍♀️🔍🧙🏻‍♂️")
sleep (2)
var imageWelcome = """
  🔎🔎🔎
        Let Us Begin Our Search
                                🔍🔍🔍
"""
print (imageWelcome)
sleep (2)

print ("What would you like me to call you?")
let responseName = readLine()!

print ("Hey \(responseName) 😃! Is that your birth name? That's such a cheeky response!")
print ()
sleep (2)
print ("What state are you in? Pick between New York, New Jersey, or Connecticut")

var responseState = readLine()!.lowercased()

let newYork = (state: "new york", events: 1.0)
let newJersey = (state: "new jersey", events: 1.0)
let connecticut = (state: "connecticut", events: 2.0)

var eventsState = [1.0, 2.0]

for player in eventsState {
    if responseState == connecticut.state {
        print ("Whoa \(responseName) is there any way you can make a trip to NY or NJ?")
    } else {
        print ()
        print ("Your state has tons of hidden treasures.\nCare to explore?")
    }
    break
    }
print ()
var rightChoice = false
while rightChoice == false {
    print ("If you are rady to start the WKND HUNT select \"Yes\" or \"No\"")

let choice = readLine()!.lowercased()
    
    if choice == "yes" {
        rightChoice = true
    }
    
    
}
print ()
var rightResponse = false
var response = ""
while rightResponse == false {
    print ("What would you want to do: (Eat) (Party) (Hunt)")
    
    response = readLine()!.lowercased()
    
    if response == "eat" || response == "party" || response == "hunt"  {
        rightResponse = true
}
}

switch response {
    case "eat":
        print ()
        print ("What are you in the mood for 🤔: (Cooking) (Eating Out) (Ordering In)")
        let foodResponse = readLine()!.lowercased()
        switch foodResponse {
        case "cooking":
            print ()
            print ("Check the cupboard for a box of cookbooks with money in each page📚💸, Little Chef! When you are ready to HUNT for even more dollar bills, press Command and R and select the option to HUNT")
        case "eating out":
            print ()
            print ("Okay, Big Spender🤑! How much money do you want to spend? (Enter amount in numbers, do not include 💲. Max amount is 50)")
            let eatResponse = readLine()!
            if Int(eatResponse)! >= 50 {
                print ("Dress up and head Downtown🍽 When you are ready to HUNT, press Command and R and select the option to HUNT")
            } else {
                print ("The local bakery serves affordable breakfast options🍳 and if you sit at table 7, there's money taped to the bottom of the table. When you are ready to HUNT for more prizes, press Command and R and select the option to HUNT")
            }
        case "ordering in":
            print ()
            print ("Are you sure you want to stay in? Search under the kitchen table for an UberEats Gift Card🎁. When you are ready to HUNT, press Command and R")
        default:
            print ()
            print ("Game Over")
            sleep (2)
            print ("☠️Game OVER☠️")
            sleep (2)
            print ("☠️Game OVER☠️")
            sleep (2)
            print ("☠️Game OVER☠️")
    }
    case "hunt":
        print ()
        print ("Yes, hunter! You are never too old for an adventure 👵🏼👴🏻 Let's go!")
        sleep(1)
        print ()
        print ("Choose option (1) (2) (3)")
        let huntResponse = readLine()!
        switch huntResponse {
        case "1":
            print ()
            print ("Take the 7 to Hunters Point Ave and look for the man in the red hat in the convenience store /nDid you find him \"Yes\" or \"No\"?")
            let sevenResponse = readLine()!.lowercased()
            if sevenResponse ==  "yes" {
            print ()
                print ("Tell him the code phrase is \"PURSUIT OF HAPPINESS\", collect $500. You won! ")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                sleep(1)
                print ("YOU WON")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
            } else {
                print ()
                print ("Thank you for playing. This game of life hasn't ended but this chapter has. /nGAME OVER!")
                print ("GAME OVER")
                sleep (2)
                print ("☠️Game OVER☠️")
                sleep (2)
                print ("☠️Game OVER☠️")
                sleep (2)
                print ("☠️Game OVER☠️")
            }
        case "2":
            print ()
            print ("Pick a number from 1-10. I will give you a minute to think ")
            let numberResponse = readLine()!
            if Int(numberResponse)! >= 5{
                print ()
                print ("Whoa! Mind reader! Head to your local 7/11 and collect $250.")
                sleep (1)
                print ("I am serious! You won! The secret phrase is \"PURSUIT ON\"")
                print ("YOU ARE SUCH A WINNER")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                sleep(1)
                print ("YOU WON THIRD PLACE")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
            } else {
                print ()
                print ("Sorry, bud! You are way off but you are welcomed to play again")
                sleep (2)
                print ("☠️Game OVER☠️")
                sleep (2)
                print ("☠️Game OVER☠️")
                sleep (2)
                print ("☠️Game OVER☠️")
            }
        case "3":
        
            var rightAnswer = false
            var oprahResponse = ""
            while rightAnswer == false {
                print ()
                print ("You get a car! She gets a car! You all get a car! All you have to do is guess who said that phrase. Type your answer below. Feel free to Google it, I will ask until you get it right")
                
                oprahResponse = readLine()!.lowercased()
                
                if oprahResponse == "oprah" || oprahResponse == "oparah" || oprahResponse == "opra"  {
                    rightAnswer = true
                }
            }
            
            switch oprahResponse {
            case "oprah":
                print ()
                print("You spelled it properly! YOU WON! Head to your local Toyota dealership and pick up your new eco-friendly PRIUS!")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                sleep(1)
                print ("YOU WON THE ULTIMATE PRIZE")
                sleep (1)
                print ("YOU ARE NUMBER ONE 🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                case "opra":
                    print ()
                    print ("Not quite how you spell it but close enough to get you a vespa courtesy of Piaggio, Vespa, Aprilia & Moto Guzzi of Manhattan ")
                    print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                    sleep(1)
                    print ("YOU WON SECOND PLACE")
                    print ("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                case "oparah":
                    print ()
                    print ("Okay, that's definitely not how you spell it. You have lost. You don't have to go home but you can't stay here 🤷🏻‍♀️🤷🏻‍♀️🤷🏻‍♀️ GAME OVER!")
                    sleep (2)
                    print ("☠️Game OVER☠️")
                    sleep (2)
                    print ("☠️Game OVER☠️")
                    sleep (2)
                    print ("☠️Game OVER☠️")
                default:
                    print ("You lost! You should learn Oprah's name, she may just be our next president 🙃🙃🙃 GAME OVER!")
                    print ("☠️Game OVER☠️")
                    print ("☠️Game OVER☠️")
                    print ("☠️Game OVER☠️")
                    print ("☠️Game OVER☠️")
            }
        default:
            print ()
            print("Why don't we start over? LET'S GO BACK TO THE GENESIS OF IT ALL. Press Command and R ")
        }
    
case "Party":
    print ()
    print ("Alright, Wild Child. Since, you are not ready to play WKND HUNT, go party and let's try again next weekend! FYI, you could have won a car")
    default:
        print ("☠️Game OVER☠️")
        print ("☠️Game OVER☠️")
        print ("☠️Game OVER☠️")
    
    }
