//
//  main.swift
//  TextAdventure
//
//  Created by Amy Alsaydi on 10/1/19.
//  Copyright © 2019 Amy Alsaydi. All rights reserved.
//

/*
 Assignment Requirements:
 - no compiler errors/warnings ✅
 - 10 user decisions✅
 - user enter number ✅
 - switch statement ✅
 - if/else statment ✅
 - type annotation ✅
 - type inference ✅
 - 1 tuple ✅
 - 1 range ✅
 - for loop ✅
 - While loop ✅
 
 */

import Foundation

print("WAKE UP YOU GOT US INTO THIS MESS!!!!")
sleep(3)
print("Some one just slid a note ✉️ under the door, should I open it?")
let answer = readLine()?.lowercased()
print()
if answer == "yes" {
    print("Uh.. Ok.. ")
} else {
    print("I have no idea why Im even asking you")
}
print()
sleep(1)
print("It says........check under the painting... May the odds be ever in your favor.... wait oops that may be a copyright issue. Nevermind but good luck this should be fun to watch! 🥳")
print(); sleep(9)
print("Theres a vault under here."); sleep(3)
print("It says Im thinking of a number between 1 and 20, you have 4 tries.")
sleep(3)
let maxTries: Int = 3
var numOfTries: Int = 0
let codeNum = 12
var passed = false

print()
print("Enter your choice. ")

repeat {
    if numOfTries == maxTries {
        sleep(3)
        print()
        print("ACTUALLY! I lied you only get 3! 😬")
        break
    }
    let choice = Int(readLine() ?? "-1") ?? -1 // readline is a string
    if choice == codeNum {
        print("OMG GOOD GUESS IT OPENED!!!!")
        passed = true
        break
    } else {
        print("WRONG 😂 Choose again")
        numOfTries += 1 }
    // passed = false
} while numOfTries <= maxTries

//PATH IF GUESSED CODE NUM RIGHT

if passed == true {
    print("""
        Good Start... Lets see how long your luck lasts 😒
        I do however reccomend remembering that number...
        """)
    print(); sleep(6)
    
    //PATH IF GUESSED RIGHT
    
    print("*VOLT OPENS*")
    print(); sleep(3)
    print("Thers another note....")
    print(); sleep(3)
    print("It says: So I'll give you the opportunity to choose a tool, a meal, and how long I give you to get out! YAY 😏")
     
    let aid1 = (tool: "hammer", food: "mac anc cheese", time: 5)
    let aid2 = (tool: "key", food: "sandwich", time: 30)
    let aid3 = (tool: "icecream scooper", food: "ice cream", time: 1)
    print(); sleep(5)
    print("Ok choose ANY number, it can even be a negative. Lol you didnt think I was just going to let you choose?")
    let selection = Int(readLine() ?? "-1") ?? -1
    
    var aid = (tool: "", food: "", time: 0)

    switch selection {
    case ..<1:
        aid = aid1
    case 1..<10_000:
        aid = aid2
    case 10_000...:
        aid = aid3
    default:
        break
    }

    print("Hmmmm Interesting Choice, Look behind you.....")
    print(); sleep(3)
    print("OMG HOW DID THAT BOX GET IN HERE")
    print(); sleep(3)
    print("Theres a \(aid.tool), \(aid.food), and a timer set to \(aid.time) minutes.....?"); sleep(3)
    // IF THEY GET THE KEY:
    //=======================================================================
    
    if aid.tool == "key" {
        
        print("Do you think this key unlocks the door? Could we be that lucky?")
        let reply = readLine()?.lowercased()
        print()
        print("Im Going to try"); sleep(3)
        print()
        print("uh... how many times do you think I should turn it?")
        var turns = Int(readLine() ?? "-1") ?? -1
        let turnsToOpenLock = 12
       
        if turns < 1 || turns > 30 {
               
                repeat {
                print("Dont be ridiculous!! How many???")
                turns = Int(readLine() ?? "-1") ?? -1
                } while turns < 1 || turns > 50
                
            } else {
                print("OK")
            }
            
            if turns >= turnsToOpenLock {
                for turnNumber in 1...turns {
                    print("\(turnNumber)...")
                }
                
                print("It unlocked!!! We’re freeeee")
                if reply != "yes" {
                    print(" You see it worked!!! UH I dont even know why I let you make any of the decisions")
                    
                }
                print("Oh shit there’s another note “good job.... youre always welcome back. Good Bye 😈")
                print("Grab the \(aid.food) and lets get the hell out of here")

            } else {
                for turnNumber in 1...turns {
                    print("\(turnNumber)...")
                }
                print("That wasn’t enough, how many more times should I turn this thing?")
               let turns2 = Int(readLine() ?? "-1") ?? -1
                
                if turns2 < 1 || turns2 > 50 {
                   
                    repeat {
                    print("Im serious!! Tell me a number???")
                    // turns2 = Int(readLine() ?? "-1") ?? -1
                    } while turns < 1 || turns > 50
                    
                } else {
                    print("OK.. here goes again")
                    
                let combinedTurns = turns + turns2
                
                if combinedTurns >= turnsToOpenLock {
                    for turnNumber in 1...turnsToOpenLock - turns {
                        print("\(turnNumber)...")
                    }
                    print("It unlocked!!! We’re freeeee")
                    if reply == "no" {
                        print(" You see it worked!!! UH I dont even know why I let you make any of the decisions")
                        
                    }
                    print("Oh shit there’s another note “good job.... youre always welcome back. Good Bye 😈")
                    print("Grab the \(aid.food) and lets get the hell out of here")
                
                } else {
                    for turnNumber in 1...turns {
                        print("\(turnNumber)...")
                    }
                    print("The key is jammed???!!!... I cant turn it anymore")
                    print()
                    print("*LIGHTS GO OFF*")
                    print()
                    print("Does that mean were stuck here forver?")
                    print()
                    print("!GAME OVER!")
                }
            }
        }
        
    }
    
    // IF THEY GET THE HAMMER
    //=======================================================================
    let hitsToBreakLock = 12
    
    if aid.tool == "hammer" {
        print("Maybe we can use this to break the lock on the door, how many times do you think I should hit it?")
        var hits = Int(readLine() ?? "-1") ?? -1
        
        if hits < 1 || hits > 50 {
           
            repeat {
            print("Dont be ridiculous!! How many???")
            hits = Int(readLine() ?? "-1") ?? -1
            } while hits < 1 || hits > 50
            
        } else {
            print("OK")
        }
        
        if hits >= hitsToBreakLock {
            for hitnumber in 1...hits {
                print("\(hitnumber) .... BAM")
            }
            print("It unlocked!!! We’re freeeee")
            print("Oh shit there’s another note “good job.... youre always welcome back. Good Bye 😈")
            print("Grab the \(aid.food) and lets get the hell out of here")

        } else {
            for hitnumber in 1...hits {
                print("\(hitnumber) .... BAM")
            }
            print("That wasn’t enough, how many more times should I hit it?")
            var hits2 = Int(readLine() ?? "-1") ?? -1
            
            if hits2 < 1 || hits > 50 {
               
                repeat {
                print("Dont be ridiculous!! How many???")
                hits2 = Int(readLine() ?? "-1") ?? -1
                } while hits < 1 || hits > 50
                
            } else {
                print("OK.. here goes again")
                
            let combinedHits = hits + hits2
            
            if combinedHits >= hitsToBreakLock {
                for hitnumber in 1...hitsToBreakLock - hits {
                    print("\(hitnumber) .... BAM")
                }
                print("It unlocked!!! We’re freeeee")
                print("Oh shit there’s another note “good job.... youre always welcome back. Good Bye 😈")
                print("Grab the \(aid.food) and lets get the hell out of here")
            
            } else {
                for hitnumber in 1...hits {
                    print("\(hitnumber) .... BAM")
                }
                print("The hammer broke???!!!")
                print("*LIGHTS GO OFF*")
                print("Does that mean were stuck here forver?")
                print("!GAME OVER!")
            }
        }
    }
    }
    //IF THEY GET THE ICE CREAM SCOOPER
    //=======================================================================
    
    if aid.tool == "icecream scooper" {
        
        print("What are we supposed to do with this?")
        sleep(3)
        print("*OVER LOUD SPEAKER* You've made the wrong choices, you'll be here forever!")
        sleep(2)
        print("But hey im a great host... you have ice cream and an ice cream scooper. 🍦")
        sleep(3)
        print("For now.....")
        sleep(2)
        print("!GAME OVER!")
            
        }
 
//PATH IF GUESSED LOCK WRONG
} else if passed == false {
    print("......Hmm well looks like you suck at guessing.")
    print()
    sleep(2)
    print("*OVER LOUD SPEAKER*")
    print("OK I'll give you one more try... Do you see the two levers behind you?")
    var answer = readLine()?.lowercased()
    
    while answer != "yes" {
        print("Keep looking, how about now?")
        answer = readLine()?.lowercased()
    }
    print()
    print("Great.... Now which do you want to pull? The red or the black lever")
    sleep(2)
    print("One can save you and the other..... well you'll find out... ")
    let pulledLever = readLine()?.lowercased()
    
    if pulledLever == "red" {
        print("*DOOR TO TUNNEL OPENS*")
        sleep(2)
        print("Lets go this can be our way out...")
        sleep(2)
        print("Its a dead end! Do we go right or left?")
        let direction = readLine()?.lowercased()
        
        if direction == "right" {
            print("Is that an open door?")
            sleep(2)
            print("IT IS!!! KEEP CRAWLING... WERE FREE")
            print()
            sleep(3)
            print("Job Well Done... You've redeemed yourself")
            sleep(2)
            print("You're welcome to come play again 😈")
            
        } else {
            print("Its another dead end")
            sleep(2)
            print("GO BACK!!!!!")
            sleep(2)
            print("*TUNNEL DOORS SHUT*")
            sleep(2)
            print("You've made a lot of poor decisions.... but I mean isn't that what got you here in the first place?")
            sleep(2)
            print("You're trapped here forever 😈")
            sleep(2)
            print("Game Over")
        }
        
    } else if pulledLever == "black" {
        print("*WATER SPILLS OVER YOU*")
        print();sleep(1)
        print("😂😂😂😂😂😂😂😂😂😂😂😂")
        print();sleep(1)
        print("That was funny")
        print("I think Ive taugh you a lesson... you've been embarrassed enough")
        print("*DOOR SWINGS OPEN*")
        sleep(1);print()
        print("Get out")
    }
}

