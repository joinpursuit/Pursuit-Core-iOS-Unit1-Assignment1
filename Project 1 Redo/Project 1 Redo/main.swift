//
//  main.swift
//  Project 1 Redo
//
//  Created by Bienbenido Angeles on 10/3/19.
//  Copyright © 2019 Bienbenido Angeles. All rights reserved.
//

import Foundation


//project simple

//Decision #1
print("Hello what is your name?")
//Decision #2
let userName = readLine()?.lowercased() ?? "X"
print("How are you feeling today \(userName)?, you can only type in \"Good\" or \"Bad\" for now")

//Tuple
var emotionalState = ("Good", "Bad")

//Decision #3
let userEmotionalState = readLine()?.lowercased() ?? "Good"

//while loop
repeat {
    //If-statements
    if (userEmotionalState == emotionalState.0.lowercased()) {
        print("It's nice to know you're felling \(emotionalState.0.lowercased()). Would you like to play a game? You can only enter \"Yes\" or \"No\"")
    } else if (userEmotionalState == emotionalState.1.lowercased()){
        print("It's sad to here that. Are you interested in playing a game?")
    } else {
        print("You can only type in \"Good\" or \"Bad\"")
    }
} while (emotionalState.0.lowercased() != "good" || emotionalState.1.lowercased() != "bad")

//Decision #4
let userChooseGame = readLine()?.lowercased() ?? "yesIncorrect"

//type inference
let gameMessage = "You're going to play a game where your going to have to guess a number from a certain range. You have three levels of difficulty: Easy, Intermediate, and, Hard. All difficulties have 3 attempts per round and a total of 3 rounds. You win the game if you can win at least 2 of the 3 rounds."
//switch
switch userChooseGame.lowercased() {
case "yes":
    print(gameMessage)
case "yesIncorrect":
    print("You entered a nil value but that's fine. \(gameMessage)")
default:
    print("Too bad, you're playing this game anyway! Here's how it goes. \(gameMessage)")
}

//Decision #5
print("What difficulty level would you like to choose? Easy, Intermediate or, Hard?")
let userDifficulty = readLine()?.lowercased() ?? "easy"
var attempts = 3
var round = 1
var roundsRemaining = 3
var roundsWon = 0
var roundsLost = 0
var roundContinue = true

let difficulties = ["easy", "intermediate", "hard"]
//Each case has a total of 9 possible decisions
switch userDifficulty {
case difficulties[0]:
    repeat {
        print("Round: \(round)")
        print("The AI is thinking between a number of 1 through 10, inclusive. Choose wisely!")
        print("You currently have \(attempts) attempts.")
        let randomNumAiEasy = Int.random(in: 1...10)
        
        let userNumChoice = Int(readLine() ?? "-1") ?? -1
       print("The AI choose the number:  \(randomNumAiEasy)")
        if (randomNumAiEasy == userNumChoice){
            round += 1
            roundsRemaining -= 1
            roundsWon+=1
            attempts = 3
           // print(roundsRemaining)
            print("You guessed correctly. You've won \(roundsWon) out of 3 rounds with \(attempts) attempts.")
            print()
//            roundContinue = false
            if roundsWon == 2{
                print("YOU WON ")
                roundContinue = false
                break
            }
            

        } else if randomNumAiEasy != userNumChoice{
            
            attempts -= 1
//            roundsLost += 1
            print("You guessed incorrectly, try again. Number of attempts remaining: \(attempts)")
            print()
//            print("Current loses \(roundsLost)")
            if attempts == 0 {
                round += 1
                attempts = 3
                roundsLost += 1
                print("Currently loses \(roundsLost)")
            }
            if roundsLost == 2 {
                roundContinue = false
                print("YOU LOST")
                
                break
            }

        }
    } while roundContinue
    
    print("GAME ENDED, Rounds won: \(roundsWon), Rounds lost: \(roundsLost)")
    
case difficulties[1]:
    
    repeat {
            print("Round: \(round)")
            print("The AI is thinking between a number of 1 through 100, inclusive. Choose wisely!")
            print("You currently have \(attempts) attempts.")
            let randomNumAiEasy = Int.random(in: 1...100)
            
            let userNumChoice = Int(readLine() ?? "-1") ?? -1
           print("The AI choose the number:  \(randomNumAiEasy)")
            if (randomNumAiEasy == userNumChoice){
                round += 1
                roundsRemaining -= 1
                roundsWon+=1
                attempts = 3
               // print(roundsRemaining)
                print("You guessed correctly. You've won \(roundsWon) out of 3 rounds with \(attempts) attempts.")
                print()
    //            roundContinue = false
                if roundsWon == 2{
                    print("YOU WON ")
                    roundContinue = false
                    break
                }
                

            } else if randomNumAiEasy != userNumChoice{
                
                attempts -= 1
    //            roundsLost += 1
                print("You guessed incorrectly, try again. Number of attempts remaining: \(attempts)")
                print()
    //            print("Current loses \(roundsLost)")
                if attempts == 0 {
                    round += 1
                    attempts = 3
                    roundsLost += 1
                    print("Currently loses \(roundsLost)")
                }
                if roundsLost == 2 {
                    roundContinue = false
                    print("YOU LOST")
                    
                    break
                }

            }
        } while roundContinue
        
        print("GAME ENDED, Rounds won: \(roundsWon), Rounds lost: \(roundsLost)")
case difficulties[2]:
    repeat {
            print("Round: \(round)")
            print("The AI is thinking between a number of 1 through 1000, inclusive. Choose wisely!")
            print("You currently have \(attempts) attempts.")
            let randomNumAiEasy = Int.random(in: 1...1000)
            
            let userNumChoice = Int(readLine() ?? "-1") ?? -1
           print("The AI choose the number:  \(randomNumAiEasy)")
            if (randomNumAiEasy == userNumChoice){
                round += 1
                roundsRemaining -= 1
                roundsWon+=1
                attempts = 3
               // print(roundsRemaining)
                print("You guessed correctly. You've won \(roundsWon) out of 3 rounds with \(attempts) attempts.")
                print()
    //            roundContinue = false
                if roundsWon == 2{
                    print("YOU WON ")
                    roundContinue = false
                    break
                }
                

            } else if randomNumAiEasy != userNumChoice{
                
                attempts -= 1
    //            roundsLost += 1
                print("You guessed incorrectly, try again. Number of attempts remaining: \(attempts)")
                print()
    //            print("Current loses \(roundsLost)")
                if attempts == 0 {
                    round += 1
                    attempts = 3
                    roundsLost += 1
                    print("Currently loses \(roundsLost)")
                }
                if roundsLost == 2 {
                    roundContinue = false
                    print("YOU LOST")
                    
                    break
                }

            }
        } while roundContinue
        
        print("GAME ENDED, Rounds won: \(roundsWon), Rounds lost: \(roundsLost)")
default:
    print("You cracked the code")
}

for _ in 0...3{
    print("Project Completed!!!")
}
