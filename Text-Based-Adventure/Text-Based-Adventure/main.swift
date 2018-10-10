//
//  main.swift
//  Text-Based-Adventure
//
//  Created by TingxinLi on 10/10/18.
//  Copyright © 2018 TingxinLi. All rights reserved.
//

import Foundation
//print("Enter your workout: (1) swim, (2) bike, (3) bike")
//// String? - optional
//if let response = readLine() {   //unwraps an optional
//    switch response {
//    case "swim":
//        print("don't forget your goggles")
//    case "bike":
//        print("pack an extra spare tube and hydration")
//    case "run":
//        print("nice day for a run in Central Park")
//    default:
//        print("enter option again: ???")
//        let option2 = readLine()!   //force unwraps - dangerous (crashes)
//        if option2 == "rest" {
//            print("Happy Recovery")
//        }
//    }
//} else {
//    print("value doesn't exist")
//}





print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters

let UpOrDown = readLine()!
var weapon = "" //Set variables here and you can change and use their values later
var eggExploded = false
switch UpOrDown {
case "Up":
    print("You see a basket of eggs.  How many do you take?")
    let eggNum = readLine()!
    let eggNumAsInt = Int(eggNum)!
    for currentEgg in 1...eggNumAsInt {
        print("You carefully remove egg number \(currentEgg)")
        if currentEgg == 4 {
            print("It was a trap!  The egg explodes")
            eggExploded = true
        }
    }
    if !eggExploded {
        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
    }
    //More decisions ahead! Use conditionals and switch statements here

case "Down":
    print("Down you go!")
//Instructions for the "Down" option ahead!
default:
    print("You stand your ground. Choose a weapon")
    weapon = readLine()!
    //Fighting conditionals ahead!
}

if weapon != "" {
    print("You survived your first ordeal and evan have a \(weapon) to take home")
}
if eggExploded {
    print("Bad luck!  Don't take so many eggs")
}




// 10 options (at least 1 should enter by number)10次输入其中一次必须是数字
//use Swith and if/else statement
//
