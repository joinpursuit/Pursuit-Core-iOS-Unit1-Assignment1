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


print("This is a guide for the indecisive introverted with questions")
print("Do you have a question: \"not sure\", \"Yes\", \"No\": ")
let yesOrNo = readLine()!
print()

switch yesOrNo {
case "Yes":
    print("Do you really need to ask the question?: (1: I can continue to live in ignorance to 5 I'll probably die without the info): ")
    let importanceOfQuestion = readLine()!
    let importanceOfQuestionAsInt = Int(importanceOfQuestion)!
    if importanceOfQuestionAsInt >= 5 {
        print ("Your question is important. It'll help me if you'd ask!")
    } else if importanceOfQuestionAsInt <= 3 {
        print("Did you research?: \"yes\" \"no\"")
        let researched = readLine()!
        switch researched{
        case "yes":
            print("Go for it! It might help other fellows 🙌🏼 ")
        default:
            print("wanna do some googling first?")
            //insert the link to google
        }
    }
case "No":
    print("You decisive you 😜...go help an indecisive introverted and ask a ❓ for them!!!")

case "not sure":
    print("would you like to evaluate the importance of the question?:  \"sure\" \"...\"")
    let areYouSure = readLine()!
    let userIsSure = "sure"
    areYouSure == userIsSure ? print ("Lets eat pizza and live in ignorance together!!!") : print ("Courage, my padawan. Fear is the way to the dark side of the force.")
default:
    print("be comfy")
}


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
