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


print("enter your workout: (swim), (bike), (run): ")
if let response = readLine() {
    switch response {
    case "swim":
        print("don't forget your goggles")
    case "bike":
        print("pack an extra spare tube and hydration")
    case "run":
        print("nice day for a run in Central Park")
    default:
        //        print("no 🍺 for you")
        print("Enter option again:???: ")
        let option2 = readLine()! //! this force unwraps - dangerous
        if option2 == "rest"{
            print("happy recovery")
        } else {
            print("does not exist")
        }
    }
}

//Second example

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


//I want to make sure I can commit changes

print("test")

