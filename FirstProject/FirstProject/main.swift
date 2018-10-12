//
//  main.swift
//  FirstProject
//
//  Created by Elizabeth Peraza  on 10/10/18.
//  Copyright © 2018 Elizabeth Peraza . All rights reserved.
//




import Foundation

//Examples by Alex //
/*
 print("Hello, World!")
 
 print ("Enter your option: ")
 String? - optional
 
 optional
 let name = "Bob"
 
 let workout: String? = nil
 if let response = readLine()
 
 
 if readLine() != nil {
 
 }*/
//
//
//print("enter your workout: (swim), (bike), (run): ")
//if let response = readLine() {
//    switch response {
//    case "swim":
//        print("don't forget your goggles")
//    case "bike":
//        print("pack an extra spare tube and hydration")
//    case "run":
//        print("nice day for a run in Central Park")
//    default:
//        //        print("no 🍺 for you")
//        print("Enter option again:???: ")
//        let option2 = readLine()! //! this force unwraps - dangerous
//        if option2 == "rest"{
//            print("happy recovery")
//        } else {
//            print("does not exist")
//        }
//    }
//}





//Second example

//var eggExploded = false
//switch UpOrDown {
//case "Up":
//    print("You see a basket of eggs.  How many do you take?")
//    let eggNum = readLine()!
//    let eggNumAsInt = Int(eggNum)!
//    for currentEgg in 1...eggNumAsInt {
//        print("You carefully remove egg number \(currentEgg)")
//        if currentEgg == 4 {
//            print("It was a trap!  The egg explodes")
//            eggExploded = true
//        }
//    }
//    if !eggExploded {
//        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
//    }
//    //More decisions ahead! Use conditionals and switch statements here
//
//case "Down":
//    print("Down you go!")
////Instructions for the "Down" option ahead!
//default:
//    print("You stand your ground. Choose a weapon")
//    weapon = readLine()!
//    //Fighting conditionals ahead!
//}
//
//if weapon != "" {
//    print("You survived your first ordeal and evan have a \(weapon) to take home")
//}
//if eggExploded {
//    print("Bad luck!  Don't take so many eggs")
//}
//


//let areYouSure = readLine()!
//let userIsSure = "sure"
//areYouSure == userIsSure ? print ("lets eat pizza and live in ignorance together!!!") : print ("Courage, my padawan. Fear is the way to the dark side of the force.")
//

//print("An adventure guide for the indecisive and introverted fellow with questions")
//print("are you a fellow? (\"Yes\" or \"No\"): ")
//let isUserFellow = readLine()!.lowercased()
//
//isUserFellow == "yes" ? print("Do you have a question: \"think so\", \"Yes\", \"No\": ") : print("You can relax for the next ten months!")
//let yesOrNo = readLine()!.lowercased()
//switch yesOrNo {
//case "yes":
//    print("Do you really need to ask the question?: (1: I can survive to 5 I'll probably die without the info): ")
//    let importanceOfQuestion = readLine()!
//    let importanceOfQuestionAsInt = Int(importanceOfQuestion)!
//
//    if importanceOfQuestionAsInt >= 4{
//        print ("Your question is important. It'll help me if you'd ask!")
//    } else if importanceOfQuestionAsInt <= 3 {
//        print("Did you research?: \"yes\" \"no\"")
//        let researched = readLine()!.lowercased()
//        switch researched{
//        case "yes":
//            print("How many minutes have you been looking for an anwswer?: ")
//            let minInDoubt = readLine()!
//            let minInDoubtInt = Int(minInDoubt)!
//            for minutes in 0...minInDoubtInt{
//                if minutes > 25{
//            print ("Go for it! It might help other fellows 🙌🏼 ")
//                } else {
//                    print("From 1 to 5, five being the max, how lost are you now?: ")
//                    let userIsLost = readLine()!
//                    var userIsLostInt = Int(userIsLost)!
//                    while userIsLostInt >= 5 {
//                     userIsLostInt -= 1
//                        print("You'll be lost forever and die!!!")
//                    }
//            }
//        }
//        default:
//            print("You are lazy...so...you die")
//            //insert the link to google
//        }
//    }
//case "no":
//    print("You decisive you 😜...go help an indecisive introverted and ask a ❓ for them!!!")
//
//case "think so":
//    print("would you like to evaluate the importance of the question?:  \"sure\" \"...\"")
//    let areYouSure = readLine()!
//    let userIsSure = "sure"
//    areYouSure == userIsSure ? print ("There is no remedy for you... just give up on life, and live in ignorance while eating pizza!!!") : print ("Courage, my padawan. Fear is the way to the dark side of the force.")
//default:
//    print("You died... as every other human, questions or not 🤷🏽‍♀️!!!")
//}
////
//
//
//
//print("It is late. Are you tired of the manipulating and forking of variable types? \"Yes\", \"No\", \"I can keep going\": ")
//let isUserTired = readLine()!.lowercased()
//
//switch isUserTired{
//case "yes":
//    print("Are you hungry or sleepy?: ")
//    let isUserhungryOrSleepy = readLine()!
//    if isUserhungryOrSleepy == "hungry"{
//        print("Deffinately, forking takes it all out of you 😉. How many tacos would you like?: ")
//        let numOfTacos = readLine()!
//        var numOfTacosInt = Int(numOfTacos)!
//        let userTaco = (howMany: 3, filling: "crickets")
//        if numOfTacosInt <= 3 {
//         print("Enjoy these \(numOfTacosInt) tacos of crispy \(userTaco.filling) 🌮 🦗 🌮 🦗!!!")
//            numOfTacosInt -= 0
//        } else if isUserhungryOrSleepy == "sleepy" {
//            print("Should I set a timer")
//            let minInTimer: Int = 5
//            for _ in 0...minInTimer {
//                let charachterToPrint: Character = "🧛🏽‍♀️"
//                print("\(charachterToPrint)")
//            }
//        } else {
//            print("Die of hunger")
//        }
//    }
//case "no" :
//    print("So... you are a master manipulator?: ")
//default:
//    print("this is crazy")
//}


//while barOrRelax == "bar"{
//    print("Would you like to order some food? (enter: \"Yes\" or \"no\"): ")
//    var orderFood = readLine()!.lowercased()
//    if orderFood == "yes"{
//        atAirport.food = true
//    }
//    break
//}

var atAirport = (bar: "bar", food: true)
print("You passed through security at JFK. The flight is delayed. If you want to go to the bar to kill time? (enter: \"bar\"): ")
let barOrRelax = readLine()!
atAirport.0 = barOrRelax.lowercased()

switch atAirport {
case ("bar", true):
    let barDrinkMenu: Array = ["cerveza", "vodka", "wine"]
    print("Can I offer you a cerveza, vodka, or wine? Happy hour is about to end. All drinks are $8.99: ")
   let userWantsToDrink = readLine()?.lowercased()
    switch userWantsToDrink {
    case barDrinkMenu[0], barDrinkMenu[1], barDrinkMenu[2]:
        print("You need to order at least one drink. How many do you want?: ")
        let howManyDrinks = readLine()!
        let howManyDrinksInt = Int(howManyDrinks)!//if user enters charcter it crashes
        var counterDrinks = 0
        for _ in 1...howManyDrinksInt{
            counterDrinks += 1
        }
        let check: Double = 9.99 * Double(counterDrinks)
        print("Cheers! Here is your check for drinks: $\(check). The food is on the house. Ready for your flight?: ")
        let isUserReadyForFlight = readLine()!
        switch isUserReadyForFlight{
        case "yes":
            print("You had an awesome time at the bar last night and you got some shut eye during the overnight flight", "Finally you arrived in iceland!!!", "You got off the plane, went to the toilet, picked up the car, and started driving east when suddenly, under a sunny and clear sky, a hail storm unleashes, with hails the size of coins and winds so strong that shake your car. Drivers on the other side keep hunking at you and blinking their lights. Do you stop or keep going?: ", separator: " ", terminator: " ")
            let stopOrKeepGoing = readLine()!
            switch stopOrKeepGoing{
            case "stop":
                print("The board indicates that all is well and you are aqcuainted with the car.", "The only other thing to check is if the lights are working but is bright out, you have to get off and check or stay in the car until the storm passes...\"get off\" or \"stay\": ", separator: " ",terminator: "")
                let stayOrGoOut = readLine()
                stayOrGoOut == "stay" ? print("Waiting those five minutes saved your life! Bring on the adventure 🗻 🧗🏽‍♂️ 🚵🏽‍♂️"):print("Some common sense is what you lacked! Opening that door cost you a life ☠️")
                
            case "keep going":
                print("You lucky dare devil! A couple of kilometers later the sky cleared and you are making good time on your way to your hotel, which is 8 hours away from Reikjavik.", "Will you stop to explore this magestic and powerful waterfall or go straigth to the hotel...\"waterfall\" or \"hotel\": ", separator: " ")
                let exploreOrContinue = readLine()
                if exploreOrContinue == "waterfall"{
                    print("While you were braving the cold water to reach behind the waterfall a gnome appeared behind a rock and it is smiling at you...are you afraid?: ")
                    let doYouSeeAGnome = readLine()!.lowercased()
                    doYouSeeAGnome == "yes" ? print("Good instincts until you last breath! pitty that you are now a dish"):print("You should be. He just made you his dinner ☠️☠️☠️")
                
                } else if exploreOrContinue == "hotel"{
                    print("You made it to the hotel! What a trip just to get to the starting point of your vacation. Wait... the hotel is small and the front door is closed. You are on your own...")
                    
                }else {
                    print("You were doomed to begin with...")
                }
            default:
                print()
            }
        default:
            print("Your gate is calling your name...run!")
        }
        
    default:
        print("Get out of here, don't make my night more difficult than it is...")
}
case ("bar", false):
    print("aca va todo lo que pasa cuando la persona toma y no come")
default:
    print("Sucker 😏 You overslept, the flight is gone, your trip is done...")
}

    




