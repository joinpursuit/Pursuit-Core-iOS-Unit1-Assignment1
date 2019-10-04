//
//  main.swift
//  Text Advanture Game
//
//  Created by Liubov Kaper  on 10/1/19.
//  Copyright © 2019 Luba Kaper. All rights reserved.
//

import Foundation

var reapeatGame = false
var pickSandwichOrSalad = false

gameLoop: repeat {
print("Hi!")
print("What is your name?")
    let yourAnswer = String(readLine()?.lowercased() ?? "ha")
print("Hi \(yourAnswer), you had a long day, let's see what's for DINNER! 🍽")
print("Are you hungry? 🤔")
print("YES or NO ?")
    let yourAnswer2 = readLine()?.lowercased()

if yourAnswer2 == "yes" {
    print("Would you like to COOK or ORDER ?")
    let yourAnswer3 = String(readLine()?.lowercased() ?? "what?")
    if yourAnswer3 == "cook" {
        print("HOT or COLD ?")
       let yourAnswer4 = String(readLine()?.lowercased() ?? "what?")
        if yourAnswer4 == "hot" {
            print("How long do you want to spend on cooking? (IN MINUTES) 😬")
            
        } else if yourAnswer4 == "cold" {
            
            repeat {
            print ("Would you like to make SALAD or SANDWICH?")
            let yourAnswer5 = String(readLine()?.lowercased() ?? "what?")
            if yourAnswer5 == "sandwich" {
                print("Here is a SANDWICH recipe for you: 🥪")
                pickSandwichOrSalad = false
                sleep(3)
                print("Open your rfrigirator 🥶")
                sleep(2)
                print("See what you have in there")
                sleep(2)
                print("Take 2 slices of bread and put whatever you want (or have) in between them!")
                sleep(2)
                print("Add some condiments! E.g mystard, mayo, honey🍯...")
                sleep(2)
                print("🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪 🥪")
                print("Enjoy!")
                sleep(2)
                print("The End")
                break gameLoop
                
            } else if yourAnswer5 == "salad" {
                print("Here is a SALAD recipe for you: 🥗")
                pickSandwichOrSalad = false
                sleep(3)
                print("Use some greens 🥬")
                sleep(2)
                print("Add some veggis like 🍅, 🥑, 🥒...")
                sleep(2)
                print("Add a protein: Chicken, Tuna, Tofu... 🥓")
                sleep(2)
                print("Be adventurous and add some Fruits and Nuts!")
                sleep(2)
                print("And add dressing!")
                sleep(2)
                print("🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗 🥗")
                sleep(2)
                print("ENJOY!")
                sleep(2)
                print("The END")
                break gameLoop
            } else {
                pickSandwichOrSalad = true
                print("Hey you didnt pick salad or sandwhich TRY AGAIN")
                }
                
            } while pickSandwichOrSalad
            
        }
    } else {
            print("Lazy night!:) Seamless is your friend!")
        print("Come back when you decide to cook!)")
        break
    }
} else if yourAnswer2 == "no" {
print("Lucky You!")
    sleep(2)
print("You're not hungry go back to bed and try again later!")
    break
    }


let numberOfMinutes: Int = Int(readLine() ?? "") ?? 30 // seconds


switch numberOfMinutes {
case 0...30:
    print("Mac & Cheese! Let's get to it! 🍝")
case 31...50:
    print("Roasted chicken Anyone? 🍗")
case 51...90:
    print("BBq spare ribs: some advanced cooking skills! 🍖")
    
default:
    print("You can slow cook all night!:)")
}

for _ in 0...5 {
    print("meal is being cooked.....")
    sleep(1)
}

print("Your meal is ready")
print("Mission accopmlished!!!")
sleep(1)

print("Do you want to play again?")
    sleep(2)
print("Tell me on a scale from 1 to 10")
     sleep(2)
    print("1 is being NOT at all")
     sleep(2)
    print("and 10 is: YES PLEASE")
    
    let ifYouWantToPlayAgain = Int(readLine() ?? "") ?? 30

    if ifYouWantToPlayAgain < 5 {
        print("Game over")
        reapeatGame = false
        break
        
    } else if ifYouWantToPlayAgain >= 5 {
        reapeatGame = true
    }

} while reapeatGame
    
    
