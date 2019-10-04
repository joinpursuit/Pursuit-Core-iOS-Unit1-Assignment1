//
//  main.swift
//  Selections
//
//  Created by Adam Diaz on 10/2/19.
//  Copyright © 2019 Adam Diaz. All rights reserved.
//

import Foundation

var repeatGame = false
repeat {

print("Selections")

sleep(2)
    
let options = (game: "Start", special: "Special")

print("Type \(options.game) or \(options.special)")
    
let StartOrSpecial = readLine()?.lowercased() ?? "Girl what?"

let go = "game over"

let thirdBell = "Winds, they rush as your time ends, but waters wash you of your trends."

var sphereKill = false
    
//let Special = readLine()?.lowercased()

if StartOrSpecial == "start" {

sleep(2)
    
print("You've woken up to the taste of mildew, and the feeling of soft dirt below you.  Press \"Enter\" to continue")
    
let _ = readLine()

sleep(2)
    
print("You stand up, and observe your surroundings. Press \"Enter\" to continue")

let _ = readLine()

sleep(2)
    
print("You, look around. At first it is hard to determine, but you noticed that you are in a dark forest. It is hard to tell whether it is morning or night but you begin to feel a sick feeling in your stomach.")

sleep(2)
    
print("Make the decision, do you move \"Forward\" or \"Call\" out for help?")

let ForwardOrCall = readLine()?.lowercased() ?? "Nice Try :)"

sleep(2)
    
switch ForwardOrCall {
    
case "forward":

sleep(2)
    
    print("It's hard to see but you make your way through the forest, and come across a large tree. Press \"Enter\" to continue.")
    
case "call":
    
    print("There is no response")

sleep(2)
    
    print("Type \"Forward\" to continue")
    
default:
    
    print("I dont know that response")
    
}

    _ = readLine()

sleep(2)
    
print("You notice there are three screens with buttons labeled 1, 2, 3 under them. Which will you push?")

let buttonNum = Int(readLine() ?? "1...3") ?? -1

if buttonNum == 2 {

sleep(2)
    
    print("A bright light forces you to close your eyes, when you open them you see the tree has become a pillar, you also hear giggling above you. Press \"Enter\" to continue.")
    
    _ = readLine()
    
sleep(2)
    
    print("\"Hi\" A younger version of yourself appears to be sitting atop the pillar. They appear to be holding on to a strange box. Will you \"Ask\" what is going on, or say \"Hey\" " )
    
    let HeyOrAsk = readLine()?.lowercased() ?? "Your younger self begins to get angry, jumping up and down on the pillar, as they jump they stumble and fall to the sand breaking their neck, suddenly everything goes black. \(go)"
    
    switch HeyOrAsk {
        
    case "hey":
  
sleep(2)
        
        print("\"You really messed up this time, i can't believe you actually\" mini you, makes the gesture that you've hung yourself.")

sleep(2)

        print("Press \"Enter\" do you mean, to continue")
        
        let _ = readLine()

sleep(2)

        print("\"You tell me, I mean you're already dead.\" The realization that you are dead hits you and everything goes black. \(go), try again!")
        
    case "ask":
        
        
        print("Want to know how to get out of here?")

sleep(2)
        
        print("Type \"Yes\" or \"No\" to decide.")
        
        let YesOrNo = readLine() ?? "do you not know what yes or no is...."
        
        switch YesOrNo {
            
        case "Yes":
            
sleep(2)
            
            print("They toss you the box that they are holding.")
        
sleep(2)
            
            print("Will you \"open\" it or leave it \"closed\" ...")
            
            let OpenOrClosed = readLine()?.lowercased() ?? "if you dont..."
            
            switch OpenOrClosed {
                
            case "open":
 
sleep(2)
                
                print("You, wake up in your room struggling for air as you hang from the cieling, your sibling comes in and saves you! congratulations you're still alive!")
                
            case "closed":
        
sleep(2)
                
                print("The box explodes, killing you and your younger self. \(go) try again!")
                
            default:
        
sleep(2)

                print("\(go), try again!")
            }
        case "No":
      
sleep(2)
            
            print("Your younger self disappears. You notice a sphere with a button is in your hands and you press it.")

sleep(2)

            print("Congratulations, You've ascended!")
            
        default:

sleep(2)
            
            print("\(go), try again!")
        }
        
    default:

sleep(2)
        
        print("\(go) try again!")
    }
}

    //print("Will you \"open\" it or leave it \"closed\" ...")

innerloop: if buttonNum == 1 {
    
    print("Before you realize what is happening the soil becomes an ocean and you begin to sink. You try to swim to the top but your body feels heavier than it should.")
  
sleep(2)
    
    print("\(go), try again!")
    
    break innerloop
    
} else if buttonNum == 3 {

sleep(2)
    
    print("The sound of bells disorient you and cause you to fall to the ground. When you stand up the tree is gone but a staircase seems to be in front of you. You feel pulled towards the staircase and before you know it, you reach the top of it and are suddenly within a room with a small table and small bell in the center of it.")
  
sleep(2)
    
    print("\"You can ring it \"1\" \"2\" or \"3\" times.")
    
    let ringBell = Int(readLine() ?? "1...3") ?? -1
    
    switch ringBell {
        
    case 1:
 
sleep(2)
        
        print("you ring the bell once, everything goes black...")
  
sleep(2)

        print("\(go), try again!")
        
    case 2:
 
sleep(2)
        
        print("you ring the bell twice, and the ground around you begins to open up and you fall to your death.")

sleep(2)

        print("\(go), try again!")
        
    case 3:
  
sleep(2)
        
        print("you ring the bell and hear a voice, say \(thirdBell). and a sphere with numbers suddenly levitates before you. Which number will you select.")
        
        let sphereNum = readLine()
        
        let sphereNumAsInt = Int(sphereNum ?? "") ?? -1
        
        for sphereNum in 1...sphereNumAsInt {
        
sleep(2)
            
            print("The sphere rapidly counts up to the number you've selected \(sphereNum)")
            
            if sphereNum == 5 {
            
sleep(2)
                
                print("The sphere opens and cuts your head off. \(go), try Again!")
                    sphereKill = true
            }
        }
        
        if !sphereKill {
 
sleep(2)
            
            print("Congrats!  You've woken up, and survived the mysterious dream.")
        }
        
    default:
 
sleep(2)
        
        print("\(go), try again!")
    }
}
    
} else if StartOrSpecial == "special" {
 
sleep(2)
    
    print("Hey ✌🏽😊, maybe you'll get lucky.")
    
    let timerTom = Int.random(in: 1...60)
    

    if timerTom % 2 == 0 {

sleep(2)

        print("Restart game")

        repeatGame = true

    } else {

sleep(2)
        
        print("You, Win!")

        repeatGame = false
    }
        
    }
        
} while repeatGame
    


// tuple must be added let game = (ex: start ex: special)
