//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Genesis Mosquera on 10/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//
//
//import Foundation
//
//print("Enter your workout:(swim), (bike), (run) ")
//// String? - optional
//if let response = readLine () { // unwraps an optional
//    switch response {
//    case "swim":
//        print("don't forget your goggles 🏊🏼‍♀️")
//    case "bike":
//        print("pack an extra spare tube and hydration 🚴🏼‍♀️")
//    case "run":
//        print ("nice day for a 🏃🏻‍♀️ in Central Park")
//    default:
//        print ("Enter option again:???")
//        let option2 = readLine()! //force unwraps - dangerous
//        if option2 == "rest" {
//            print ("happy recovery")
//        }
//    }
//} else {
//    print ("value does not exist")
//}
//print ("Welcome to the weekend, want to: (work out), (meet up with friends), (self-care)")
//if let response = readLine () {
//    switch response {
//    case "work out":
//        print ("book your class, pack the essentials, and get going!")
//    case "meet up with friends":
//        print ("is it too late for brunch?")
//    case "self-care":
//        print ("Turn your phone off. Head for a massage or meditate")
//    default:
//        print ("Let's try this again")
//}
//}
print("The weekend has begun! Is it before noon \"Yes\" or \"No\"")

let choice = readLine()

switch choice {
case "Yes":
    print("What would you want to do: (Party) (Sleep) (Eat)")
    let response = readLine()
    switch response {
    case "Eat":
        print("What are you in the mood for: (Cooking) (Eating Out) (Ordering In)")
        let foodResponse = readLine()!
        switch foodResponse {
        case "Cooking":
            print ("Try a recipe from Pinterest, Little Chef!")
        case "Eating Out":
            print ("Okay, Big Spender! How much money do you want to spend? (Enter amount in numbers, do not include the dollar sign")
            //            let dollarResponse: Int = 0...1000
            //            if Int(dollarResponse) >= 100 {
            //                print ("Dress up and head Downtown")
            //            } else {
            //                print ("The local bakery serves affordable breakfast options")
            //                default:
            //                print ("Don't eat out!)
        //            }
        case "Ordering In":
            print ("Are you sure you want to stay in? Fine, try UberEats")
        default:
            print ("you have to eat so make a choice")
            
        }
    case "Sleep":
        print ("Sleep is for the old! How many hours (1) (2) (3)")
        let sleepResponse = readLine()
        switch sleepResponse {
        case "1":
            print ("A short nap sounds good! But get going after that")
        case "2":
            print ("A power nap may interfere with your sleep tonight")
        case "3":
            print("you're a bum")
        default:
            print("Why don't we scratch the plan for sleep and go out instead")
        }
        
    default:
        print ("Enter option again:???")
        //            if option2 == "rest" {
        //                print ("happy recovery")
    }
case "No":
    print ("Are you in the mood for brunch or is it too late for brunch?")
default:
    print ("Make a choice!")
}

