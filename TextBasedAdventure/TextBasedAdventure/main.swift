//
//  main.swift
//  TextBasedAdventure
//
//  Created by Manny Yusuf on 10/10/18.
//  Copyright © 2018 Manny Yusuf. All rights reserved.
//

import Foundation
// APP "GAME" SAMPLE
print("Lets play a game! Choose your destiny \"truth\" or \"dare\"")
let truthordare = readLine()
var weapon = ""
switch truthordare {
case "truth":
    
   
    
print("its a trap. Pick a number 1...5")
     let answer = readLine()!
let answerInt = Int(answer)
    if answerInt == 2 || answerInt == 4 {
        print("cut off a finger")
    } else {
        if answerInt == 1 || answerInt == 3 || answerInt == 5 {
        print("scoop out one eyeball")
        }
    } case "dare":
print("get ready to fight to the death. Choose your weapon")
    weapon = readLine()!
if  weapon.count % 2 == 1 {
    print("strangulation")
} else {
    print("castration")
    }
default:
print("stab yourself")
}
print("Games not over yet! Choose a room \"door1\" or \"door2")
let door1ordoor2 = readLine()!
switch door1ordoor2.lowercased() {
case "door1":
var doorKnob1 = 12
while (doorKnob1 >= 7){
        print("Congrarts you get a medipack")
    doorKnob1 -= 1
    }
case "door2":
    break
default:
    print("good luck escaping")
}
print("No luck with doors, go to a different floor \"floor6\" or \"floor13\"")
let floor6orfloor13 = readLine()!
var floor6 = 15
for number in 0...floor6 {
    if number % 5 == 0 {
    print("watch out there is poison gas in the air, breathe at your own risk")
} else {
    print("a blind man is firing bullets, hopefully you can doge it")
    }
}
print("choose a number")
var number = readLine()
var floor13 = number
if number == "4" || number == "5" || number == "6" || number == "7" || number == "8" {
    print("solve a puzzle to open lock")
} else {
    print("loose another finger")
    }
print("No other option other then turning around or going to the basement \"turn around\" or \"basement\"")
var turnAroundOrBasement = readLine()!
switch turnAroundOrBasement {
case "turn around":
    break
case "basement":
let randomRange = Int.random(in: 5...16)
    print("choose a number between 5 and 16")
if let playerInput = readLine() {
let intPlayerInput = Int(playerInput)!
switch intPlayerInput > randomRange {
case true:
    print("its empty leave before you get locked in" )
    default:
    print("oh too bad you got locked in anyways")
        }
    }
default:
print("lose another finger")
}
let item = ("spoon", "glue gun", "pennies")
print("choose one of these \(item)")
print("choose number from 0 - 2")
var userItemInput = readLine()!
let userItemInputAsInt = Int(userItemInput)
switch userItemInputAsInt {
case 0:
    print("scoop out your eyeballs with a \(item.0)")
case 1:
    print("break your bones and glue yourself together like a rubix cube with \(item.1)")
case 2:
    print("eat all the \(item.2)")
default:
    print("forced suicide")
}
print("choose your final fate \"good\" or \"bad\"")
let goodorbad = readLine()!
if goodorbad == "good" {
    print("Congrats you get to escapse severly injured")
} else if goodorbad == "bad" {
    print("so sad you get shot in the face")
} else {
    print("your are now my prisoner")
}
