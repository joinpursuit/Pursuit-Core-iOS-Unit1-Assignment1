//
//  main.swift
//  Text-Based-Adventure
//
//  Created by katty y marte on 10/10/18.
//  Copyright © 2018 katty y marte. All rights reserved.
//
//
import Foundation
/*
 
 sustainability game- keep the sealevels from rising or the sun from burning.
 add water everytime the answer could help global warming. add water on a timer on every 10 secs. so it is filling up faster with the wrong answers and could be subtracted by a little when one answers to do the right thing. anyway because of damage that is already done/ or change that is already in motion to happen.
 would you take a
 */
//string optional
//
//print("(Global Warming Is Real; Plant a tree) (Im with Trump) (No-where to run dearest)")
//
//if let response = readLine(){//gets input from the user
//    switch response{
//    case "plant a tree":
//        print("dont forget the goggles")
//    case "Im with Trump":
//        print("Make more polyester items, mix with a little cotton to make impossible to recycle!")
//    case "lots":
//        print("No-where to run dearest")
//    default:
//        print("no🍺 for you")
//        print("enter option again?")
//        let option2 = readLine()!//force unwrapps - dangerous
//        if option2 == "rest"{
//            print("happy recovery")
//        }else{
//            print("value does not exist")
//        }
//    }
//}
////for more on what to buld lookat excersice "sample from conditional
//
//print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters
//
//let UpOrDown = readLine()!
//var weapon = "" //Set variables here and you can change and use their values later
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

//var whoAreYou : [String]//empty to save users name and depeding on even/odd letter of alph print

// --- USER NAME AND INTRO MESSAGE



    var newName = readLine()
    var waterLevel : Int = 50 // it is about 50 units away from feet. damdage done
    var waterIncreaseRate = 10 + waterLevel //each time an increment happens it is done by 10 units to reach 100
    let range = 0...10
    var dateOfBirth = readLine()
    var day = Int!(dateOfBirth)


print("wtite your name brave crusader")//how to get input from console let response = readLine()!


if let newName = readLine(){// to make all lower case?
    print("Oh all habitants of mitierrita are so happy you came, \(newName). We are at peril. By keeping sea water levels low, you may save all the lives in our planet!  the problem is that levels will always rise inspite of our actions. It is up to you, with the use of  super powers and your good choices to keep it from reaching over our heads.")
    // what if they put bs name or no name ?
    
    print(" ")
    print("Save us brave crusader \(newName)!!")
    print(" ")
//what are the special power choices-- pick a number and it will be assigned according to number in range
    print("your birthday will reveal the super power destiny has granted you,")//better way to ask for birthday
    print(" ")
    print("enter only the day for identity theft protection")

}
// ----- SECOND QUESTION = PICKS A SUPER POWER

if day = readLine!(){// to make all lower case?
    if day < range {
    print("the creed for those born on the \(dateOfBirth) of the month is the following:")
}
}
//you have saved the planet but you just let all people 3 feet and under have died!
