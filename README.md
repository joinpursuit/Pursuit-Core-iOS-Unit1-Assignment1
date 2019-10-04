## Text-Based-Adventure

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link to your Pull Request (not your fork!) on Canvas and submit

## Lab 
//
//  main.swift
//  Don'tMESSUp
//
//  Created by Tiffany Obi on 10/3/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import Foundation

print("Hello, World!")

print("You are in a dark tunnel. It's Cold and wet. To escape type \"East\" or \"West\".")

var userInput = readLine()
var east: String = "east"
var west: String = "west"
var open = "open"
var emptyString = ""
var climb = "climb"
var fall: String = "fall"
var one = "1"
var two = "2"
var three = "3"
var fly = "fly"

~~~
while userInput != emptyString {
    
    if userInput == east.lowercased() {
        
        print("A light appears! As it dims you see a door. Open the door at you're own risk. To open type \"open\"")
        userInput=readLine()
    if userInput==open.lowercased() {
        print("There's a Goblin with 3 boxes. Pick box \"(1) , (2) , or (3)\".")
        userInput=readLine() }
        
    if userInput == one || userInput == two {
        print("YouLose!")
        userInput=readLine()
        
        }
        if userInput == three {
            print("YOU WIN!!!!!!!!!!!")
        }
        else
            if userInput != one || userInput != two || userInput != three {
            print("Testing")
        }
    }
        if userInput==west.lowercased() {
        print ("The ground begins to Shake and the Earth begins to open! There's a tree to your right! Climb the tree or fall through the cracks. type \"Climb\" or \"Fall\"")
        userInput = readLine()
        
      if userInput==climb.lowercased() {
            print("Your In the tree! thought you were safe? HA! An eagle Grabs your wig. to get it back type \"fly\"")
        
            userInput = readLine()
      
            switch userInput {
        case fly.lowercased() :
            print("Silly 🦃 ! YOU CANT OUT FLY AN 🦅 GAME OVER")
        default:
            print("The wig was ugly anyway") }
      }
        else if userInput==fall.lowercased() {
            print("Youre in a dungeon. theres a treasure chest on the floor. Type the MAGIC NUMBER TO OPEN IT")
            
        userInput = readLine()
        
        for digit in 0...1000000000 {
            
            if digit <= 100 {
                print("YOU WIN!!!")
                
                userInput = readLine()
                
            }
            else if
            digit >= 100000{
                print ("Why you gotta be so extra? OFF WITH YOUR HEAD!")}
                
            }
        }
    }

}

