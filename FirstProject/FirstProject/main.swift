//
//  main.swift
//  FirstProject
//
//  Created by Elizabeth Peraza  on 10/10/18.
//  Copyright © 2018 Elizabeth Peraza . All rights reserved.
//




import Foundation

print("HOW TO BEGIN AN ADVENTURE")
print("")
print("")
print("You passed through security at JFK. The flight is delayed. If you want to go to the bar to kill time? (enter: \"bar\"): ")
// could also be a good while opportunity
let barOrRelax = readLine()!.lowercased()
switch barOrRelax {
case "bar", "yes":
    let barDrinkMenu = ("cerveza", "vodka", "wine")
    print("Can I offer you a cerveza, vodka, or wine? Happy hour is about to end: ")
    let userWantsToDrink = readLine()?.lowercased()
    switch userWantsToDrink {
    case barDrinkMenu.0, barDrinkMenu.1, barDrinkMenu.2:
        print("You need to order at least two drinks. All drinks are $8.99. How many do you want?: ")
        let howManyDrinks = readLine()!
        let howManyDrinksInt = Int(howManyDrinks)!//if user enters charcter it crashes
        var counterDrinks = 0
    if howManyDrinksInt >= 2 {
            for _ in 2...howManyDrinksInt{
                counterDrinks += 1
                //                repeat {
                //                    print("skål!!!")
                //                } while counterDrinks == 2
            }
            let check: Double = 14.99 * Double(counterDrinks)
            print("Here is your check for drinks: $\(check). The food is on the house. ")
    } else if howManyDrinksInt < 2 {
             print("Get out of here!!! You will never gonna make it in the land if the vikings...")
    } else {
            print("The gnomes of Island can sense you are a smart ass and killed you from afar...")
        }
    print("Ready for your flight?: ")
    let isUserReadyForFlight = readLine()!
        switch isUserReadyForFlight{
        case "yes":
            print("You had an awesome time at the bar last night, huh?...", "Finally you arrived in ICELAND!!!", "You off off the plane, went to the toilet, picked up the car, and started driving east when suddenly, under a sunny and clear sky, a hail storm unleashes, with hails the size of coins and winds so strong that shakes your car. Drivers on the other side keep hunking at you and blinking their lights. Do you STOP or KEEP GOING?: ", terminator: " ")
            let stopOrKeepGoing = readLine()!.lowercased()
                switch stopOrKeepGoing{
                case "stop":
                print("The board indicates that all is well.", "The only other thing to check is if the LIGHTS are working but is bright out, you have to get off the car to CHECK or stay in the car until the storm passes...\"CHECK\" or \"STAY\": ", separator: " ",terminator: "")
                let stayOrGoOut = readLine()?.lowercased()
                stayOrGoOut == "stay" ? print("Those five minutes saved your life! and you are off to an adventure 🗻 🧗🏽‍♂️ 🚵🏽‍♂️"):print("Some common sense is what you lacked! Opening that door cost you a life ☠️")
                
                case "keep going":
                print("You lucky dare devil! A couple of kilometers later the sky cleared and you are making good time on your way to your hotel, which is 8 hours away from Reikjavik.", "Will you stop to explore this magestic and powerful waterfall or go straigth to the hotel...\"WATERFALL\" or \"HOTEL\": ", separator: " ")
                let exploreOrContinue = readLine()
                if exploreOrContinue == "waterfall"{
                    print("While you were braving the cold water to reach behind the waterfall a gnome appeared behind a rock and it is smiling at you...are you afraid?: ")
                    let doYouSeeAGnome = readLine()!.lowercased()
//                    while doYouSeeAGnome == "afraid"{
//                        print("Good instincts until you last breath! pitty that you are now a dish")
//                        while doYouSeeAGnome == "no" {
//                           print("You should be. He just made you his dinner ☠️☠️☠️")
//                        }
//                    }
                    }else if exploreOrContinue == "hotel"{
                    print("You made it to the hotel! What a trip just to get to the starting point of your vacation. Enjoy!") //if there is time maybe do a while loop here
                }else {
                    print("You were doomed to begin with...")
                }
        default:
            print("The gnomes that only understand true or false have killed you for having those poor motor skills...and for being a smart ass")
            }
    default:
            print("Yeah...your plane just departed...On the bright side, you can keep drinking overpriced drinks!")
        }
        
    default:
        print("If you are here, you are here to be brave and drink, and to stick to the forking menu... With my bartender / magical icelandic gnome / cool tour guide powers, I reject you and YOU SHALL NOT PASS!!!")
}
default:
    print("Yeah...your trip is done before it began 😏... You either overslept or got lost shopping unnecesary stuff at the duty free, the flight is gone")
}

    




