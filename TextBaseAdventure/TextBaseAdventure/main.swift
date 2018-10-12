////
////  main.swift
////  TextBaseAdventure
////
////  Created by Jabeen's MacBook on 10/10/18.
////  Copyright © 2018 Jabeen's MacBook. All rights reserved.
////
//
//import Foundation
//


print ("welcome to ladyfly! would you like to be butterfly 🦋 or beetles 🐞?")
var storyLevel = 0
var berriesCounter = 4

//
while storyLevel == 0{
    let butterandbeetle = readLine()
switch butterandbeetle {
case "butterfly":
    print("let's fly")
    storyLevel += 1
case "beetles":
    print("let's climb")
    storyLevel += 1
default:
print("try again")
}
}
    if storyLevel == 1{
        print("where would you like to go? garden 🌷 or trees🌳?")  // everything under a while loop will be repeated in the brackets of the whie loop
}
    while storyLevel == 1 {
   var gardenOrTrees = readLine()
if gardenOrTrees == "garden"{
    print("lets pick bluberries!")
    storyLevel += 1
}
if gardenOrTrees == "trees"{
        print("lets find the hidden bluberries!")
    storyLevel += 3

    } 
}
while storyLevel == 2 { //garden zone
    print("choose where you'd like to go. pond or the tree")
    let pondOrTree = readLine ()!
    var garden1 = 1
    let pondInt = (0...4)
    print("choose a number between 0 & 4")
    let numbers = readLine()!

        if pondInt % 2 == 0 {
        print("lets make some new friends, and pick some blueberries!")
        } else if pondInt % 2 == 1 {
        print("lets dance!")
        }
}
while storyLevel == 3{ //garden zone
let garden2 = 5
let farm = 1...garden2
let numbers = readLine()!
    for numbers in farm {
    if numbers == 3 || numbers == 5 {
    print("collect blueberries 🔵")
    } else {
    print("say hi to the farm animals")
        }
    }
}


//while storyLevel == 4{//tree zone
//print(" choose which brach you want")
//let tree1 = 8
//
//let leftBranch
//}
//
//while storyLevel == 5{//treezone
//}
//}
//print("hi im in tree")
}
