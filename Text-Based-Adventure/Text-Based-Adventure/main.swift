//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Jian Ting Li on 10/10/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

var playerName: String
var restartGame = true
var inGame = true
//var enterToContinue: String
var gameOver = "Game Over 😵. Please try again 🙂."
var beatGame = false
var earlyBeat = false
var reEnterResponse = true


while restartGame {     //this let the player to restart the game
    print("Please enter you name:  \n")
    playerName = readLine()!    //player's name will be used several times in the game
    print("\(playerName), Welcome to Text-Adventure-Game. Enjoy!")
    
    game: while inGame {   //this let me stops the game and jumps to the game over session when the player beats the game early or makes a bad choice and dies
        //waking up
        print("""
        
        Baby, baby, baby.. oh....
        Like baby, baby, baby no.....

        """)
        print("I jumped out from my sleep...sweating! OH SHIT! Who set this song for my alarm? \nWell...at least, it woke me up. I only had 3 hrs of sleep last night working on a coding project. Normal alarms won't wake me up.\n")
        
        while reEnterResponse {
            reEnterResponse = false
            print("I am feeling so tired.....What should I do?    Here are your choices: ")
            print("(drink coffee)   (take a shower)   (take a day off)\n")
            if let input2 = readLine()?.lowercased() {
                switch input2 {
                case "drink coffee":
                    print("How many cups?")
                    if let input2B = Int(readLine()!) {
                        switch Int(input2B) {
                        case 1...5:
                            for cupNum in 1...input2B {
                                if cupNum > 1 {
                                    print("You drink \(cupNum) cups of coffee.")
                                } else {
                                    print("You drink 1 cup of coffee.")
                                }
                            }
                            print("That was some GOOD COFFEE! You feel energized!\n")
                        case 5...:
                            for cupNum in 1...input2B {
                                if cupNum > 1 {
                                    print("You drink \(cupNum) cups of coffee.")
                                } else {
                                    print("You drink 1 cup of coffee.")
                                }
                            }
                            print("")
                            print("I feel more and more agitated. My heart is beating faster and faster....OMG I am so BUMP!!! \nWithout any care of consequences, I run out door and scream like a maniac. \nAll of a sudden, I can't breath and feel pain on my chest. I collapsed and died from a heartattack.\n Caffeine Overdose!!! 😵")
                            print(gameOver)
                            break game
                        default:
                            print("I didn't drink any coffee, but I feel much better after a hot shower. Ahhhh....🚿")
                        }
                    } else {
                        print("I don't know what to do, so I take a hot shower and feel much better. Ahhhh....🚿")
                    }
                case "take a shower":
                    print("I go to the bathroom to brush my teeth and then take a shower. After a steaming hot shower, I feel refreshed 😃.")
                case "take a day off":
                    print("Not sure what happened...After I went back to sleep, I never woke up. Whoah..Whoah...whoah....😵")
                    earlyBeat = true
                    break game
                default:
                    print("Invalid Response")
                    reEnterResponse = true
                }
            }
        }
        
        //Going to Pursuit
        print("\nI get dressed, eat breakfast, pack my lunch, and then walk out the door to go to Pursuit.\n")
        print("On the train, I see a fellow from another Cohort. I believe her name is Sally. She looks even more tire than I am. \nAs soon as she sits down, her head drops and falls into deep sleep immediately😴.")
        print(".......\nIt's the stop to get off. I looked at Sally. She is sleeping soundly😪. Everyone can hear her snoring.\n")
        
        
        reEnterResponse = true
        while reEnterResponse {
            reEnterResponse = false
            print("Should I wake Sally up? (wake her up) or (let her sleep)\n")
        }
        
        if let input3 = readLine()?.lowercased() {
            switch input3 {
            case "wake her up":
                print("\(playerName): \"Sally...Sally Wake UP!! You are going to miss your stop.\"\n")
                print("Sally: \"Oh...thank you so much. I didn\'t sleep for 3 days working on the Capstone Project. Today, we are going to present. You're' a life-saver😊.")
            case "let her sleep":
                print("Seeing those deep black circles around her eyes, you didn't wake her up and left her in the train. She needs to rest. It wouldn't hurt if she misses a day or two.\n")
                print("As the train leaves, you recall that today is day where Sally's cohort presents their Capstone Projects. Oh...Shh...😲")
            default:
                print("Huh? I am not sure if I understand your response.")
                reEnterResponse = true
            }
        }
        
        //Arrived to Pursuit. Saving a person from commiting suicide.
        print("")
        print("You arrived to pursuit. The entrance is crowded. You wonder what happened.")
        print("Ohh...Myyyyy..Lady...God! Someone is standing on the edge of the rooftop😱.\n")
        print("I am going to......:")
        print("(talk to someone)  (scream don't jump!)")

      
        if let input4 = readLine() {
            print("")
            switch input4 {
            case "talk to someone":
                print("I turn to closest person and ask: \"What is going on?\" \n")
                print("Stranger: He's going to commit suicide. I think he's a game addict. He said that his World of Warcraft account got hacked and now life is over for him. Poor guy, he lost himself in a game fantasy.")
            case "scream don't jump":
                print("With all strength......I SCREAM: \"DON\'T JUMP!\"\n")
                print("Dispite my best effort, he didn't heard me. It's tooo noisy 😥. As a matter of fact. No one heard one. They are so fixate on the guys who's about to kill himself.")
            default:
                print("I am talking jibberish and no one undersand a thing I say. It's better to go with the flow.")
                
            }
        }
        
        print("")
        print("All of a sudden, I heard a random shout on the loudspeaker: \"What can we do to get you down?\"\n")
        print("The guy on the roof said \"Beat me in any game. If you win, I come down. If not, I JUMP! Who dares to challenge me?\"")
        
        for min in 1...5 {
            if min > 1 {
               print("\(min) minutes have passed.")
               continue
            }
            print("\(min) minute has passed.")
        }
        print("It's been 5 minutes and no one step out. Things are getting tense. \n I should.....")
        print("(step out and volunteer) or (remain passive) \n")
        
        reEnterResponse = true
        while reEnterResponse {
            reEnterResponse = false
            if let input5 = readLine()?.lowercased() {
                switch input5 {
                case "step out and volunteer":
                    print("You step out to the middle and SHOUT! \n\(playerName): \"I can play \"Rock, Paper, & Scissors\" with you. If I win, you will listen to me and come down. Your life is precious.\"")
                case "remain passive":
                    print("I remain standing still...hoping that someone will step out. \nOut of no where, someone pushes me HARD from behind....Wahhh \nI stumble forward onto the middle. Everyone looks at me. \nRoof Person: So...you are the challenger. \nHow about this. Play \"Rock, Paper, & Scissors\" with me. \nIf you win, I will listen to you. If I win, this is where my life ends.")
                default:
                    print("Invalid Response")
                    reEnterResponse = true
                }
            }
        }
        
        //rock paper scissors game   (user has to input 2-5 times)
        print("\n 👏 CHEERS from the crowd 🍻\n")
        var score = (player: 0, roofPerson: 0)
        let playerChoices = ["✊", "👋", "✌️"]
        let computerChoices = ["✊🏾", "👋🏾", "✌🏾"]
        var playerInput: String
        var roofPersonInput: String
        
        while score.roofPerson < 3 && score.player < 3 {
            //player input
            print("What are you going to throw? \n(rock)✊ (paper)👋 (scissors)✌️\n")
            playerInput = readLine()!.lowercased()
            
            switch playerInput {
            case "rock", "paper", "scissors":
                if playerInput == "rock" {
                    playerInput = playerChoices[0]
                } else if playerInput == "paper" {
                    playerInput = playerChoices[1]
                } else {
                    playerInput = playerChoices[2]
                }
                
            default:
                print("Is that a Rock, Paper, or Scissors?")
                continue
            }
            
            //computer input
            roofPersonInput = computerChoices.randomElement()!
            
            //duel
            print("")
            print("\(playerName) → \(playerInput)    \(roofPersonInput) ← Roof Person")
            
            //conditions
            if playerInput == "✊" && roofPersonInput == "👋🏾" {
                print("You Lose!😣")
                score.roofPerson += 1
            } else if playerInput == "👋" && roofPersonInput == "✌🏾" {
                print("You Lose!😣")
                score.roofPerson += 1
            } else if playerInput == "✌️" && roofPersonInput == "✊🏾" {
                print("You Lose!😣")
                score.roofPerson += 1
            } else if playerInput == "✊" && roofPersonInput == "✌🏾" {
                print("You Win!😃")
                score.player += 1
            } else if playerInput == "👋" && roofPersonInput == "✊🏾" {
                print("You Win!😁")
                score.player += 1
            } else if playerInput == "✌️" && roofPersonInput == "👋🏾" {
                print("You Win!😄")
                score.player += 1
            } else {
                print("It's a draw!")
            }
            //print the score
            print("Here's the Score: \(score)\n")
        }
        
        if score.player == 3 {
            print("I win and the roof person comes down. We call 911 and the he is sent to a mental institution for treatment.")
            beatGame = true
        } else {
            print("I lost the game. The guy jumped down and died RIP GG!")
            print(gameOver)
            break
        }
        
        inGame = false
    }
    
    //Game Over
    if earlyBeat {
        print("You beat the game! That was way too fast...😕. You should replay to see more 😏.")
        earlyBeat = false
    }
    
    if beatGame {
        print("You beat the game!!! Thank you for playing 😎.")
        beatGame = false
    }
    
    //restart game?
    reEnterResponse = true
    while reEnterResponse {
        reEnterResponse = false
        print("Do you want to play again? (yes) (no)")
        if let finalInput = readLine()?.lowercased() {
            if finalInput == "yes" {
                print("Restarting......䷄")
            } else if finalInput == "no" {
                restartGame = false
            } else {
                print("Invalid response XX")
                reEnterResponse = true
            }
        }
    }
    
    //reset settings for restarting the game
    beatGame = false
    earlyBeat = false
    reEnterResponse = true
}


