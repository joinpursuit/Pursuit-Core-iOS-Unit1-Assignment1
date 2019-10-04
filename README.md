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
```
import Foundation

print("Hello Guest! Are You Readyyyy????")
sleep(3)

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
var spinOrStomp = (choice1: "Stomp" , choice2: "Spin")

while userInput != emptyString {
    
    if userInput == east.lowercased() ||  userInput == east.uppercased(){
        
        print("A light appears! As it dims you see a door. Open the door at you're own risk. To open type \"open\"")
         userInput=readLine()
            if userInput==open.lowercased() {
        print("There's a Goblin with 3 boxes. Pick box \"(1) , (2) , or (3)\".")
        userInput=readLine() }
        
            switch userInput {
                    case one:
        print("You Lose!")
                    case two:
        print("You. Lose!")
                    case three:
        print("YOURE IN A FAIRY LAND! you can either spin around or stomp your feet. Type \"Stomp\" or \"Spin\" !!")
                    default:
        print("Something grabbed youre leg and dragged you into HELL!! AHHH! ")
        }
userInput = readLine()
        if userInput == spinOrStomp.choice1.lowercased() {
            print("You are a bit angry! Eat A snickers!")
            
        }
           else
        if userInput == spinOrStomp.choice2.lowercased() {
                print("As You Should Fairy Babe! The spin turns you into a genie and you've turned the dungeon into a palace. YOU WIN!🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳")
            } else
        { print("PAY ATTENTION!!!!!!")
            
        }
        break
    }
        
    if userInput==west.lowercased() || userInput == west.uppercased() {
        print ("The ground begins to Shake and the Earth begins to open! There's a tree to your right! Climb the tree or fall through the cracks. type \"Climb\" or \"Fall\"")
        userInput = readLine()
        
      if userInput==climb.lowercased() {
            print("Your In the tree! thought you were safe? HA! An eagle Grabs your wig. to get it back type \"fly\"")
        
            userInput = readLine()
      
            switch userInput {
        case fly.lowercased() :
            print("Silly 🦃 ! YOU CANT OUT FLY AN 🦅 GAME OVER")
        default:
            print("The wig was ugly anyway")
                
        }
    break
            }
            
            
        if userInput==fall.lowercased() {
            print("Youre in a dungeon. theres a treasure chest on the floor. Type a MAGIC NUMBER TO OPEN IT")
            
        userInput = readLine()
            
            let turnIntoRealNumber = Int(userInput ?? "20") ?? 20
            
            if turnIntoRealNumber <= 25 {
            
                print("YOU WIN!!!")
                for _ in 0...3 {
                    print("🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳🎉🥳")
                }
            } else {
                print("Why you gotta be so extra! You die")
            }
            break
        }
    }
    else {
                print("Please Follow directions. Its for your own good")
break
    }

}
            
        
    





