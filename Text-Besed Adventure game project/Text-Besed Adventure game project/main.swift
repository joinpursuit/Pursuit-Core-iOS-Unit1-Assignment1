//
//  main.swift
//  Text-Besed Adventure game project
//
//  Created by Jeffrey Almonte on 10/11/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import Foundation

print("Are you a Tuna the Dog 🐶 or a Grumpy Cat 😾 ? Start your assessment! Choose \"yay\" or \"nay\"")


let yayOrNay = readLine()!

let something = (in: 0...5)
switch yayOrNay {
 case "yay":
    print("from 1 to 5, how hungry are you?")
    let hungerLevel = readLine()!
    var  hungerLevelAsInt = Int(hungerLevel)!
    while (hungerLevelAsInt <= 6){
            print("want a \"bone\" or \"fish\"?")
        let food = readLine()
        switch food{
        case "bone":
            hungerLevelAsInt += 1
            print(hungerLevelAsInt)
        case "fish":
            hungerLevelAsInt += 1
            print(hungerLevelAsInt)
//            _ = readLine()!
        default:
            print("pick one your hungry")
            }
        if (hungerLevelAsInt == 5){
            print("Choose a \"belly rub?\" or a \"back scratch\"")
//        hungerLevel = readLine()!
    }
    let bellyRubOrBacScratch = readLine()!

    if bellyRubOrBacScratch  == "belly rub" || bellyRubOrBacScratch == "back scratch" {
print("Choose a \"walk in the park\" or \"nap by the window sill\"?" )
        let walkOrNap = readLine()!

        if walkOrNap == "walk in the park" {
            print("You're Tuna!🐶 ")
        } else {
            print("You're Grumpy Cat!😾")
        }


}
    }
default:
print("You're an Iguana!🦎 Start Over")
}


 //final outcome would be one of these two
//print("You're Tuna!🐶 ", "You're Grumpy Cat!😾")






