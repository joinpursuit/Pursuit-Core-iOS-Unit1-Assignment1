//
//  main.swift
//  textBasedAdventureDraft
//
//  Created by Jane Zhu on 10/11/18.
//  Copyright © 2018 Jane Zhu. All rights reserved.
//

import Foundation

 Introduction - enter name
print("Hello there! Now before we begin our adventure, what is your name?")
let userName = readLine()!
let greeting: String = "Hello "
let greeting2 = ", let's go on our adventure!"
let fullGreeting = greeting + userName + greeting2
print(fullGreeting)
print("")

// Heading to train station - choosing destination
print("After an exhausting Friday afternoon at Pursuit, you got so hungry and decided to grab some food.")
print("")
print("You hop on the 7 Train at Hunters Point Avenue, which direction do you want to head to? (queens) or (manhattan)")

if let destination = readLine() {
    switch destination.lowercased() {
    case "queens":
        print("You are on your way to Flushing, Main Street.")
    case "manhattan":
        print("You are on your way to Manhattan, Times Square.")
    default:
        print("ERROR 404: Invalid Answer. Please choose again.😂")
        print("Enter Option Again! (queens) or (manhattan)")
        let destination2 = readLine()!
        if destination2.lowercased() == "manhattan" {
            print("On your way to the city.")
        } else if destination2.lowercased() == "queens" {
            print("To Flushing, Main Street.")
        }
    }
}

print("")

// Rat problem
print("On the train, you spot a huge rat crawling toward you in godspeed!  OH NOOOOO!!!")
print("")
print("Do you choose to (fight) or (flight)?")

if let fightOrFlight = readLine() {
    switch fightOrFlight {
    case "fight" :
        print("...how brave of you.")
        print("Now choose your weapon: (umbrella), (macbook), (your feet)")
        if let weaponChoice = readLine() {
            switch weaponChoice.lowercased() {
            case "umbrella":
                print("Hitting rat with full force.")
            case "macbook" :
                print("Rat escaped...MacBook broke...and you're broke 😫")
            case "your feet" :
                print("Stomping rat as hard as you can.")
            default:
                print("Do you even have a(n) \(weaponChoice)?")
            }

        }
    case "flight" :
        print("...but there's nowhere to go! You are on a moving train!")
        print("RUN to the next train car NOW.")
    default:
        print("\(fightOrFlight) is not a good idea, but maybe it will work.")
    }
}

// Transition to restaurant
print("")
print("Congrats! You made it out of the NYC subway station alive.")
print("")
print("That was quite an adventure. Now you gotta find food to refuel.")
print("")

// Choosing restaurant
print("Which restaurant do you want to eat at?")
let restaurantChoice = readLine()!
print("Alright, \(restaurantChoice) sounds like a great choice!")
print("")

// Ordering drink
print("Do you want to order a magarita? (yes) or (no)")
let yesOrNo = readLine()!
if yesOrNo == "yes" {
    print("WAIT WAIT WAIT...How old are you?")
    let userAgeAsString = readLine()!
    let userAgeAsInt = Int(userAgeAsString)!
        if userAgeAsInt >= 21 {
            print("Alright. You can order a glass of magarita.")
} else {
    let ageAwayFromLegal = 21 - userAgeAsInt
    print("Shame on you trying to drink underage! 😡 You need to wait \(ageAwayFromLegal) more years to be able to drink.")
}
} else {
print("I guess you just want a normal day.")
}

print("")

// Ordering food
print("Now let's order the food. What do you want to eat? 🍕 🥞 🍖 🍣")
let foodOrder = readLine()!
print("Cool. I like to eat \(foodOrder) too")

print("")

// Hunger Level
print("On a scale of (1-10) what is your hunger level?")
let hungerLevelAsString = readLine()
var hungerLevelAsInt = Int(hungerLevelAsString!)!
while hungerLevelAsInt > 0 {
    print("Order one more order of \(foodOrder).")
    hungerLevelAsInt -= 1
}

// More desserts?
print("Can you eat more?? (yes) or (no)")
let eatMore = readLine()
switch eatMore {
    case "yes":
        print("It's time for desserts. 🍪 🎂 🍦")
        print("What's your favorite dessert?")
            let favDessert = readLine()!
                print("How many orders?")
                    let numberOfOrders = readLine()
                    let numberOfOrdersInt = Int(numberOfOrders!)!
                        for dessertOrder in 1...numberOfOrdersInt {
                            print("You've had \(dessertOrder) \(favDessert)")
    }
    default:
        print("Don't forget to tip your server.")
}

// Ending
print("This is the end of your food adventure.")

print("")

print("Please enter today's date.")
let date = readLine()!
let userInfoTuple = (Name: userName, Date: date)
let endingMessage = "Thanks for completing our adventure, your information has been stored as follows: \(userInfoTuple)."
print(endingMessage)
