//
//  main.swift
//  Text Based Adventure
//
//  Created by Tanya Burke on 10/3/19.
//  Copyright © 2019 Tanya Burke. All rights reserved.
//

import Foundation

print("Hello, World!")

print("Your adventure begins!")
sleep(3)

print("Pick a number from 1 to 100")
let response = readLine()


let userEnteredNumAsString = readLine()
let userEnteredNumAsInt = Int(userEnteredNumAsString ?? "") ?? 3

if userEnteredNumAsInt % 2 == 0{
    print ("I love even numbers, do you?")
    sleep(2)
    print("Now let's figure out what path you will choose, It's Friday night what would you like to do...Choose one \"Movie\" or \"Date\" or \" Study\")
    
}else {
    print(" The number you chose was a bit odd, but hopefully this adventure won't be. Let's get to it, It's Friday night what would you like to do... Choose one \"Movie\" or \"Date\" or \" Study\")

}

//print("Choose your direction \"Up\" or \"Down\"")//Use \ to escape characters

let movieOrDateOrStudy = readLine()
//var weapon = "" //Set variables here and you can change and use their values later
//var eggExploded = false
switch movieOrDateOrStudy {
case "Movie":
    print("What type of movie would you lie to see? \"Action\" or \"Horror\" or \" Fantasy\")
    let movieType = readLine()
    for movieType{
        case "Action"
        print("You head to the theaters and run into your favorite actor. You get invited out for drinks an")
    
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
    weapon = readLine() ?? ""
    //Fighting conditionals ahead!
}

if weapon != "" {
    print("You survived your first ordeal and even have a \(weapon) to take home")
}
if eggExploded {
    print("Bad luck!  Don't take so many eggs")
}





