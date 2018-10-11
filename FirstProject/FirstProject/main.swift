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

print("An adventure guide for the indecisive and introverted fellow with questions")
print("are you a fellow? (\"Yes\" or \"No\"): ")
let isUserFellow = readLine()!

isUserFellow == "Yes" ? print("Do you have a question: \"think so\", \"Yes\", \"No\": ") : print("You can relax for the next ten months!")
let yesOrNo = readLine()!
switch yesOrNo {
case "Yes":
    print("Do you really need to ask the question?: (1: I can survive to 5 I'll probably die without the info): ")
    let importanceOfQuestion = readLine()!
    let importanceOfQuestionAsInt = Int(importanceOfQuestion)!

    if importanceOfQuestionAsInt >= 4{
        print ("Your question is important. It'll help me if you'd ask!")
    } else if importanceOfQuestionAsInt <= 3 {
        print("Did you research?: \"yes\" \"no\"")
        let researched = readLine()!
        switch researched{
        case "yes":
            print("How many minutes have you been looking for an anwswer?: ")
            let minInDoubt = readLine()!
            let minInDoubtInt = Int(minInDoubt)!
            for minutes in 0...minInDoubtInt{
                if minutes > 25{
            print("Go for it! It might help other fellows 🙌🏼 ")
                } else {
                    print("From 1 to 5, five being the max, how lost are you now?: ")
                    let userIsLost = readLine()!
                    var userIsLostInt = Int(userIsLost)!
                    while userIsLostInt <= 5 {
                     userIsLostInt = userIsLostInt - 1
                        print("You'll be lost forever and die!!!")
                    }
            }
        }
        default:
            print("wanna do some googling first?")
            //insert the link to google
        }
    }
case "No":
    print("You decisive you 😜...go help an indecisive introverted and ask a ❓ for them!!!")

case "think so":
    print("would you like to evaluate the importance of the question?:  \"sure\" \"...\"")
    let areYouSure = readLine()!
    let userIsSure = "sure"
    areYouSure == userIsSure ? print ("Lets go eat pizza and live in ignorance together!!!") : print ("Courage, my padawan. Fear is the way to the dark side of the force.")
default:
    print("Be comfy!!!")
}
////
//
//
//
//print("It is late. Are you tired of the manipulating and forking of variable types? \"Yes\", \"No\", \"I can keep going\": ")
//let isUserTired = readLine()!
//
//switch isUserTired{
//case "Yes", "yes":
//    print("Are you hungry or sleepy?: ")
//    let isUserhungryOrSleepy = readLine()!
//    if isUserhungryOrSleepy == "hungry"{
//        print("Deffinately, forking takes it all out of you 😉. How many tacos would you like?: ")
//        let numOfTacos = readLine()!
//        var numOfTacosInt = Int(numOfTacos)!
//        let userTaco = (howMany: 3, filling: "crickets")
//        if numOfTacosInt <= 3 {
//         print("Enjoy these \(userTaco.howMany) tacos of crispy \(userTaco.filling) 🌮 🦗 🌮 🦗!!!")
//            numOfTacosInt -= 0
//        } else if isUserhungryOrSleepy == "sleepy" {
//            print("Should I set a timer")
//            let minInTimer: Int = 5
//            for minutes in 0...minInTimer {
//                let charachterToPrint: Character = "🧛🏽‍♀️"
//                print("\(charachterToPrint)")
//            }
//        } else {
//            print("Die of hunger")
//        }
//    }
//case "No", "no" :
//    print("So... you are a master manipulator?: ")
//default:
//    print("this is crazy")
//}

//print("Deffinately, forking takes it all out of you 😉. How many tacos would you like?: ")
//var  numOfTacos = readLine()!
//let  numTacosInt = Int(numOfTacos)!
//print("Do you want some cheese in that... there is nothing like a quesadilla! \"Si\" \"No\": ")
//var cheesePref = readLine()
//print("The main thing is the filling! Do you want beef or fish?: ")
//let filling = readLine()




