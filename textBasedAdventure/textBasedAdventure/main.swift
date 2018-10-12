//
//  main.swift
//  textBasedAdventure
//
//  Created by Jane Zhu on 10/10/18.
//  Copyright © 2018 Jane Zhu. All rights reserved.
//

import Foundation

/* I originally created a text-based adventure that did not make much logical sense, so I redid this project and decided to create something more meaningful. My mom, who is my sponsor for the Pursuit program, is the manager and cashier at a buffet restaurant. When I decided to apply for Pursuit, she asked me if I can create an app to enable customers to pay at a kiosk upon entrance by themselves so that she no longer needs to cashier behind the register. I asked her for the current prices for lunch and dinner, adult and kids, and the beverages. */

print("Hello there! What is your name?")
let userName = readLine()!
let greeting: String = "Hello "
let greeting2 = ", welcome to Buffet Palace."
let fullGreeting = greeting + userName + greeting2
print(fullGreeting)


var subtotalAdults: Double = 0.0
var subtotalKids: Double = 0.0
var subtotalDrinks: Double = 0.0

print("")
sleep(1)

print("At Buffet Palace, you order drinks, pay here, and then dine.")
print("")
sleep(1)
print("Let's begin by answering a few questions.")
print("")
sleep(1)
print("**Lunch is served from 10:30AM-3:30PM. \n**Dinner is served from 3:30-9:30PM & ALL-DAY on Sundays.")
print("")
sleep(2)
print("Are you here for (lunch) or (dinner)?")

let lunchOrDinner = readLine()!
if lunchOrDinner == "lunch" {
    print("Thanks for coming in for \(lunchOrDinner) today.")
    print("")
    sleep(1)
    print("Are you dining by yourself? (yes) or (no)")
    let diningAlone = readLine()!
    if diningAlone == "yes" {
        subtotalAdults = 8.99
    } else {
        print("How many adults are in your group? We charge adult price for 13 and older.")
        let numOfAdults = readLine()!
        let numOfAdultsAsDouble: Double = Double(numOfAdults)!
        subtotalAdults = numOfAdultsAsDouble * 8.99
        print("Are there any kids under 12 in your group? (yes) or (no)")
        var diningWithKids = readLine()!
        if diningWithKids == "yes" {
            print("How many kids are under 3 years old? Enter 0 if none.")
            let numOf0to2 = readLine()!
            let numOf0to2Double: Double = Double(numOf0to2)!
            subtotalKids = numOf0to2Double * 0.0
            print("It's actually free for kids under 3! You're welcome.")
            print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 3 years old? Enter 0 if none.")
                let numOf3 = readLine()!
                let numOf3Double: Double = Double(numOf3)!
                subtotalKids = numOf3Double * 2.5
                print("")
                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 4 years old? Enter 0 if none.")
                let numOf4 = readLine()!
                let numOf4Double: Double = Double(numOf4)!
                subtotalKids = numOf4Double * 3.0
                print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 5 years old? Enter 0 if none.")
                let numOf5 = readLine()!
                let numOf5Double: Double = Double(numOf5)!
                subtotalKids = numOf5Double * 4.0
                print("")
                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 6 years old? Enter 0 if none.")
                let numOf6 = readLine()!
                let numOf6Double: Double = Double(numOf6)!
                subtotalKids = numOf6Double * 4.5
                print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 7 years old? Enter 0 if none.")
                let numOf7 = readLine()!
                let numOf7Double: Double = Double(numOf7)!
                subtotalKids = numOf7Double * 5.0
                print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 8 years old? Enter 0 if none.")
                let numOf8 = readLine()!
                let numOf8Double: Double = Double(numOf8)!
                subtotalKids = numOf8Double * 5.5
                print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 9 years old? Enter 0 if none.")
                let numOf9 = readLine()!
                let numOf9Double: Double = Double(numOf9)!
                subtotalKids = numOf9Double * 6.0
                print("")

            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 10 years old? Enter 0 if none.")
                let numOf10 = readLine()!
                let numOf10Double: Double = Double(numOf10)!
                subtotalKids = numOf10Double * 6.5
                print("")
 
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 11 years old? Enter 0 if none.")
                let numOf11 = readLine()!
                let numOf11Double: Double = Double(numOf11)!
                subtotalKids = numOf11Double * 7.0
                print("")
    
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 12 years old? Enter 0 if none.")
                let numOf12 = readLine()!
                let numOf12Double: Double = Double(numOf12)!
                subtotalKids = numOf12Double * 8.0
                print("")
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
        }
    }
} else if lunchOrDinner == "dinner" {
    print("Thanks for coming in for \(lunchOrDinner) today. We serve a great variety of steak, sushi, and seafood.")
    print("")
    sleep(1)
    print("Are you dining by yourself? (yes) or (no)")
    let diningAlone = readLine()!
    if diningAlone == "yes" {
        subtotalAdults = 11.99
    } else {
        print("How many adults are in your group? We charge adult price for 13 and older.")
        let numOfAdults = readLine()!
        let numOfAdultsAsDouble: Double = Double(numOfAdults)!
        subtotalAdults = numOfAdultsAsDouble * 11.99
        print("Are there any kids under 12 in your group? (yes) or (no)")
        var diningWithKids = readLine()!
        if diningWithKids == "yes" {
            print("How many kids are under 3 years old? Enter 0 if none.")
            let numOf0to2 = readLine()!
            let numOf0to2Double: Double = Double(numOf0to2)!
            subtotalKids = numOf0to2Double * 0.0
            print("It's actually free for kids under 3! You're welcome.")
            print("")
            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 3 years old? Enter 0 if none.")
                let numOf3 = readLine()!
                let numOf3Double: Double = Double(numOf3)!
                subtotalKids = numOf3Double * 3.0
                print("")
                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 4 years old? Enter 0 if none.")
                let numOf4 = readLine()!
                let numOf4Double: Double = Double(numOf4)!
                subtotalKids = numOf4Double * 4.0
                print("")
                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 5 years old? Enter 0 if none.")
                let numOf5 = readLine()!
                let numOf5Double: Double = Double(numOf5)!
                subtotalKids = numOf5Double * 4.5
                print("")
                        
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 6 years old? Enter 0 if none.")
                let numOf6 = readLine()!
                let numOf6Double: Double = Double(numOf6)!
                subtotalKids = numOf6Double * 5
                print("")
                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 7 years old? Enter 0 if none.")
                let numOf7 = readLine()!
                let numOf7Double: Double = Double(numOf7)!
                subtotalKids = numOf7Double * 5.5
                print("")
                                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 8 years old? Enter 0 if none.")
                let numOf8 = readLine()!
                let numOf8Double: Double = Double(numOf8)!
                subtotalKids = numOf8Double * 6.0
                print("")
                                    
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 9 years old? Enter 0 if none.")
                let numOf9 = readLine()!
                let numOf9Double: Double = Double(numOf9)!
                subtotalKids = numOf9Double * 6.5
                print("")
                                        
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 10 years old? Enter 0 if none.")
                let numOf10 = readLine()!
                let numOf10Double: Double = Double(numOf10)!
                subtotalKids = numOf10Double * 7.5
                print("")
                                            
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 11 years old? Enter 0 if none.")
                let numOf11 = readLine()!
                let numOf11Double: Double = Double(numOf11)!
                subtotalKids = numOf11Double * 8.5
                print("")
                                                
            print("Are there any more kids in your group? (yes) or (no)")
            diningWithKids = readLine()!
            if diningWithKids == "yes" {
                print("How many kids are 12 years old? Enter 0 if none.")
                let numOf12 = readLine()!
                let numOf12Double: Double = Double(numOf12)!
                subtotalKids = numOf12Double * 9.5
                print("")
            }
            }
            }
            }
            }
            }
            }
            }
            }
            }
}
}
} else {
    print("Invalid Answer. Please press 'command \u{2318}' + 'r' to restart.")
}

print("")

var subtotalSoFar: Double = subtotalAdults + subtotalKids
print("Your subtotal so far: $\(subtotalSoFar)")

print("")
print("Do you want any beverage? (yes) or (no)")
let beverageYesOrNo = readLine()!
if beverageYesOrNo == "yes" {
    print("Our choices of beverage: (soda), (coffee), (beer), (water)")
        let beverageChoice = readLine()!
            switch beverageChoice {
                case "soda":
                    print("How many orders of soda?")
                    let numOfSoda = readLine()!
                    let numOfSodaAsDouble: Double = Double(numOfSoda)!
                    subtotalDrinks += numOfSodaAsDouble * 1.88
                        print("Do you want anymore drinks? (yes) or (no)")
                        let anymoreDrinks = readLine()!
                        if anymoreDrinks == "yes" {
                            fallthrough
                        } else {
                            break
                        }
                case "coffee":
                    print("How many orders of coffee?")
                    let numOfCoffee = readLine()!
                    let numOfCoffeeAsDouble: Double = Double(numOfCoffee)!
                    subtotalDrinks += numOfCoffeeAsDouble * 1.88
                        print("Do you want anymore drinks? (yes) or (no)")
                        let anymoreDrinks = readLine()!
                        if anymoreDrinks == "yes" {
                            fallthrough
                        } else {
                            break
                        }
                
                case "beer":
                    print("Are you sure you want some beer? (yes) or (no)")
                    let beerConfirmation = readLine()!
                    if beerConfirmation == "yes" {
                        print("WAIT WAIT WAIT...How old are you?")
                        let userAgeAsString = readLine()!
                        let userAgeAsInt = Int(userAgeAsString)!
                        if userAgeAsInt >= 21 {
                        
                            print("How many cans of beer?")
                            let numOfBeer = readLine()!
                            let numOfBeerAsDouble: Double = Double(numOfBeer)!
                            subtotalDrinks += numOfBeerAsDouble * 3.25
                            print("Do you want anymore drinks? (yes) or (no)")
                            let anymoreDrinks = readLine()!
                            if anymoreDrinks == "yes" {
                                fallthrough
                            } else {
                                break
                            }
                            } else {
                                let ageAwayFromLegal = 21 - userAgeAsInt
                                print("It is not good to drink underage. 😡 You need to wait \(ageAwayFromLegal) more years to be able to drink.")
                            }
                }
                case "water":
                    print("How many orders of water?")
                    let numOfWater = readLine()!
                    let numOfWaterAsDouble: Double = Double(numOfWater)!
                    subtotalDrinks += numOfWaterAsDouble * 0.0
                default:
                    print("Invalid Answer. Please press command ⌘ + R to restart.")
                }
} else if beverageYesOrNo == "no" {
    print("Ok...let a server know if you change your mind later.")
} else {
    print("Invalid answer. lease press command ⌘ + R to restart or let a server know how we can accommodate you.") // Right here, I really want to stop running the rest of the code when the user gets to this. However, I don't know how to do this without over-complicating the code.
}


print("")
sleep(1)
subtotalSoFar = Double(round(100*(subtotalSoFar + subtotalDrinks))/100)
print("Your subtotal so far: $\(subtotalSoFar)")

let taxRate: Double = 0.08517
let tax: Double = subtotalSoFar * taxRate
let subtotalWithTax = subtotalSoFar + tax
let total: Double = Double(round(100*subtotalWithTax)/100)
print("")
sleep(1)
print("Your total including tax is: $\(total)")

var loopRepeat: Bool = true
var loopExit: Bool = false

print("")
sleep(1)
print("How would you like to pay? (cash) (card)")
repeat {
    if let payment = readLine() {
    switch payment {
        case "cash":
            print("Total: $\(total)")
            print("")
            sleep(1)
            print("Please enter how much you are paying. (just the number without the dollar sign $).")
            let cashPayment = readLine()!
            var cashPaymentAsDouble: Double = Double(cashPayment)!
            let change: Double = Double(round(100*(cashPaymentAsDouble - total))/100)
            if cashPaymentAsDouble > total {
                while cashPaymentAsDouble > total {
                print("Machine will dispense $1 change.")
                cashPaymentAsDouble -= 1.0
                sleep(1)
                }
                print("")
                sleep(1)
                print("You are getting back $\(change) as change.")
                loopRepeat = false
            }
            else if cashPaymentAsDouble == total {
                print("Thanks for paying the exact amount")
                loopRepeat = false
            } else {
                print("Insufficient Payment. Please press enter.")
                }
        case "card":
            let swipeNotification = 2
            for _ in 0..<swipeNotification {
                print("Please swipe your card.")
                print("")
                sleep(1)
            }
            sleep(1)
            print("When you are done, enter (swipe)")
                let pressEnter = readLine()!
                if pressEnter == "swipe" {
                    print("Card payment accepted.")
                    loopRepeat = false
                }
                else {
                    fallthrough
        }
        default:
            print("Invalid answer. Please choose again.")
            print("How would you like to pay? (cash) (card)")
        }
    }
} while loopRepeat

print("")
print("Thank you for paying using our new virtual cashier service.")
sleep(2)
print("")
print("Don't forget to tip your server after dining.")

print("")
let tip15: Double = Double(round(100*subtotalWithTax*0.15)/100)
let tip18: Double = Double(round(100*subtotalWithTax*0.18)/100)
let tip20: Double = Double(round(100*subtotalWithTax*0.20)/100)
print("15% Tips: $\(tip15) | 18% Tips: $\(tip18) | 20% Tips: $\(tip20)")
print("")

sleep(2)
print("We would like to inform you about our buy 10 buffets get 1 free promotion. You just need some info to update your punch card.")

print("")
sleep(2)
print("Please enter your phone number.")
let phoneNumber: String = readLine()!
print("Please enter your zip code.")
let zipCode: String = readLine()!

let customerInfoTuple = (Name: userName, PhoneNumber: phoneNumber, ZipCode: zipCode)

let endingMessage = ["Your information has been stored as follows: \(customerInfoTuple).", "We will store your information to update your punch card.", "Remember: Buy 10 buffets get 1 FREE.", "😄😄😄 Have a good day. Come back soon! 😄😄😄"]
for message in endingMessage {
    print(message)
    sleep(1)
}
