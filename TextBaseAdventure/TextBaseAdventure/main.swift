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

print("Hi! Do you have a name? Tell me your name.")
let name = readLine()!
print("How old are you?")
let age = readLine()
print ("welcome to ladyfly! would you like to be butterfly 🦋 or beetles 🐞?")
var storyLevel = 0

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
    storyLevel += 1
    print(" are you ready to climb the tree?! say go!")
    let ready = readLine()!
    print("lets climb!")
        }
}
    print("go up or down")
    let upordown = readLine()!
    switch upordown {
    case "up":
        print("You see a bumblebee, she has a blueberry. Take the blueberry")
    case "down":
        print("fly back up!")
    default:
        print("You need to go up or down")
        print("it's picnic time!")
        let picnic = readLine()!
    }
    while storyLevel == 2 { //garden zone
        print("choose where you'd like to go. pond or the farm")
        let pondOrFarm = readLine ()!
        switch pondOrFarm {
        case "pond" :
            print("let make some new friends and pick blueberries!")
        case "farm" :
            print("let's dance")
        default:
            print("")
        }
        storyLevel += 1
    while storyLevel == 3 {
    print("it's picnic time!")
    let picnic = readLine()!
    let food = ("bluberries", "kiwis", "pineapples", "mangos", "roti", "butterchicken", "okara", "bittermelon")
    print("choose one of these \(food)")
    print("choose number from 0 - 7")
    let number = readLine()!
//    var userFoodInput = readLine()!
    var number1 = Int(number)
            switch number1 {
        case 0:
            print("i love blueberries too!")
        case 1:
            print("peel the kiwi before you eat it!")
        case 2:
            print("you're a fine apple ;)")
        case 3:
            print("all south asains love mangoes!")
        case 4:
            print("make sure they're round otherwise no one will marry you!")
        case 5:
            print("all punjabis love butterchicken!")
        case 6:
            print("yo! I love bhindi too!")
        case 7:
            print("keralas are where its at!")
        default:
            print("sorry! thats all we have :(")
            }
print("you've had a good meal, it's nap time!")
let nap = readLine()!
let bedtime = 10
            for numbers in 0...bedtime {
                if numbers >= 5 {
                    print("let's take a nap")
                } else if numbers <= 5 {
                    print("go have fun")
                }
}
            }
                }

