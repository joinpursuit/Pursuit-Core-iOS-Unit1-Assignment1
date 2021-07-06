//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Leandro Wauters on 10/10/18.
//  Copyright © 2018 Leandro Wauters. All rights reserved.
//

import Foundation

let goal = """
|===============================================|
|       |       |       |       |       |       |
|   1   |   2   |   3   |   4   |   5   |   6   |
|_______|_______|_______|_______|_______|_______|
|       |       |       |       |       |       |
|   7   |   8   |   9   |   10  |   11  |   12  |
|_______|_______|_______|_______|_______|_______|
|       |       |       |       |       |       |
|   13  |   14  |   15  |   16  |   17  |   18  |
🌿🌿🌿🌿🌿🌿🌿⚽️🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿

"""
print("🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿🌿")
print("""
Welcome to the 2019 Champions League Final 🏆 at Wanda Metropolitano in Madrid, It's Barcelona VS. Real Madrid, the score is 0-0 it's the last minute of extra time. You play as Barcelona and you begin with a goal kick. Who do you want to pass the ball to?
PLAYER  OPTIONS: JORDI ALBA[1] SERGI ROBERTO[2] BUSQUETS[3])
""")

var goalRangeTop = 1...6
var goalRangeMid = 7...12
var goalRangeBottom = 13...18
let randomNum = Int.random(in: 1...18)
let goalsInArray = [1, 4, 5, 8, 12, 13, 16,17]
let goalsMissedArray = [2,3,6,7,9,10,11,14,15,18]
var playerWin = false
let playersPosition = (LB: "Jordi Alba" , LCB: "Umtiti" , RCB: "Pique" , RB: "Sergi Roberto" , LM: "Coutinho" , DCM: "Busquets", RM: "Rakitic" , LW: "Dembele" , RW: "Messi" , ST: "Suarez")
let saveMessege = "THE KEEPER SAVES IT!!! PASS: JORDI ALBA[1], SERGI ROBERTO[2], BUSQUETS [3]"

var playerOptionInt: Int
while var playerOption = readLine() {
    switch playerOption {
    case "1":
        print("⚽️ Ter Stegen decides to play it short to \(playersPosition.LB.uppercased()), Real Madrid applies pressure, What would you like to do? PLAYER OPTIONS: RUN [1] PASS [2]")
        playerOption = readLine()!
        switch playerOption {
        case "1":
            print("\(playersPosition.LB) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
            playerOption = readLine()!
            playerOptionInt = Int(playerOption)!
            if playerOptionInt == 3 {
                print("OH NO BIG MISTAKE BY PLAYER!! Real Madrid steals the ball, they aproach the goal, they SHOOT ⚽️ ⚽️ ⚽️ ⚽️")
                
                
                print(goal)
                print("CHOOSE A BOX TO SAVE THE GOAL")
                playerOption = readLine()!
                playerOptionInt = Int(playerOption)!
                if playerOptionInt == randomNum {
                    print("REAL MADRID SCORES GAME OVER")
                } else {
                    print("SAVED!")
                    print(saveMessege)
                    break
                }
            } else {
                for _ in  1...playerOptionInt where playerOptionInt <= 10{
                    print("\(playersPosition.LB) runs")
                    for _ in 0...8 {
                        print("🏃‍♂️", terminator: "  ")
                    }
                }
                
            }
            print("After runing, you need you pass the ball. PLEASE CHOOSE PLAYER: DEFENDER: \(playersPosition.LCB.uppercased())[1] MIDFIELDER: \(playersPosition.LM.uppercased())[2]")
            playerOption = readLine()!
            switch playerOption {
            case "1":
                print("Oh no big mistake by player, Real Madrid steals ball, runs to box and shoots !!!")
                print(goal)
                print("CHOOSE A BOX TO SAVE THE GOAL")
                playerOption = readLine()!
                if playerOptionInt == randomNum {
                    print("REAL MADRID SCORES GAME OVER")
                } else {
                    print("SAVED!")
                    print(saveMessege)
                    break
                }
            case "2":
                print("Player passes the ball to COUTINHO, He sees Casemiro coming after him, he sees Messi open PLAYER OPTIONS: RUN[1] Or MESSI[2]")
                playerOption = readLine()!
                switch playerOption {
                case "2":
                    print("MESSI runs with the ball 🏃‍♂️, he dribles pass one🏃‍♂️, pass two🏃‍♂️🏃‍♂️, he sees Suarez open PLAYER OPTION: STRIKER: \(playersPosition.ST.uppercased())[1] OR SHOOT[2]" )
                    playerOption = readLine()!
                    
                    switch playerOption {
                    case "1":
                        print("⚽︎ SUAREZ has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT[1] ⚽️")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("PLEASE SELECT A BOX")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS!!!! ⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS!!!! ⚽︎⚽︎⚽︎!")
                            default:
                                print("YOU MISSED GAME OVER!")
                                break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                        
                    case "2":
                        print(goal)
                        print("CHOOSE A BOX")
                        
                        
                        while playerWin == false {
                            if let playerOption = readLine() {
                                let playerOptionInt = Int(playerOption)!
                                switch playerOptionInt < randomNum {
                                case true:
                                    print("The Keeper saves it and the games over ...GAME OVER")
                                case false:
                                    print("GOAL MESSI SCORES!!! YOU WIN!!!")
                                    playerWin = true
                                    break
                                }
                            }
                        }
                    default:
                        print("Real Madrid steals the ball and game is over")
                        
                    }
                    
                case "1":
                    print("\(playersPosition.LM.uppercased()) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 3 {
                        print("Oh NO! Casemiro steals the ball, He plays with Bale. Bale SHOOTS!")
                        print(goal)
                        print("CHOOSE A BOX TO SAVE THE GOAL")
                        playerOption = readLine()!
                        if playerOptionInt == randomNum {
                            print("REAL MADRID SCORES GAME OVER")
                        } else {
                            print("SAVED!")
                            print(saveMessege)
                            break
                        }
                    } else {
                        for _ in  1...playerOptionInt where playerOptionInt <= 10{
                            print("\(playersPosition.LM) runs")
                            for _ in 0...8 {
                                print("🏃‍♂️", terminator: "  ")
                            }
                        }
                        
                    }
                    print("After running Coutinho has to pass the ball PLAYER OPTION: \(playersPosition.RW.uppercased())[1] or \(playersPosition.ST.uppercased())[2]")
                    playerOption = readLine()!
                    switch playerOption {
                    case "2":
                        print("⚽︎ Suarez has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT[1]")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("⚽︎⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎⚽︎⚽︎")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎")
                            default:
                                print("YOU MISSED GAME OVER!")
                            break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                    case "1":
                        print("Messi runs with the ball, he dribles pass one, pass two HE SHOOTS")
                        print(goal)
                        print("⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt % 2 == 0 {
                            print("GOAL!!⚽︎⚽︎⚽︎⚽︎⚽︎⚽︎ Barcelona Wins!!!")
                        } else {
                            print("The keeper saves it and the games over ...GAME OVER")
                            break
                        }
                    default:
                        print("Ball goes out of bounds game over")
                        
                    }
                    
                    
                    
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
                
            default:
                print("Casemiro steals the ball, long pass to Bale , and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                
            }
            
        case "2":
            print("PLEASE CHOOSE PLAYER: MIDFIELDER: \(playersPosition.LM.uppercased())[1] WINGER: \(playersPosition.LW.uppercased())[2]")
            playerOption = readLine()!
            switch playerOption {
            case "1":
                print("Player passes the ball to COUTINHO, He sees Casemiro coming after him, he sees Messi open PLAYER OPTIONS: RUN[1] Or MESS[2]")
                playerOption = readLine()!
                switch playerOption {
                case "2":
                    print("\(playersPosition.RW) has the ball he runs by the width of the pitch PLAYER CHOICE: CROSS THE BALL TO THE BOX[1], SHOOT[2]")
                    playerOption = readLine()!
                    switch playerOption {
                    case "1":
                        print("\(playersPosition.RW) crosses the ball...\(playersPosition.ST) is waiting for it...he jumps for the header...")
                        print(goal)
                        print("WHERE WOULD YOU LIKE THE BALL TO GO")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        switch playerOptionInt {
                        case goalRangeTop:
                            print("GOAL!!! BEAUTIFUL HEADER BY SUAREZ, BARCELONA WINS!!!")
                        default:
                            print("SAVED BY THE KEEPER GAME OVER!")
                        break
                        }
                    case "2":
                        print("\(playersPosition.RW) DECIDES TO SHOOT FROM FAR AWAY")
                        print(goal)
                        print("PLEASE SELECT A BOX")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt == 1 || playerOptionInt == 6 || playerOptionInt == 13 || playerOptionInt == 18 {
                            print("WHAT A GOAL BY DEMBELE RIGHT IN THE CORNER OF THE BOX")
                        } else {
                            print("DEMBELE MISSES AND THE GAME IS OVER...YOU LOOSE")
                            break
                        }
                    default:
                        print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                    }
                case "1":
                    print("\(playersPosition.LM.uppercased()) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 3 {
                        print("Oh NO! Casemiro steals the ball, He plays with Bale. Bale SHOOTS!")
                        print(goal)
                        print("CHOOSE A BOX TO SAVE THE GOAL")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt == randomNum {
                            print("REAL MADRID SCORES GAME OVER")
                        } else {
                            print("SAVED!")
                            print(saveMessege)
                            break
                        }
                    } else {
                        for _ in  1...playerOptionInt where playerOptionInt <= 10{
                            print("\(playersPosition.LM) runs")
                            for _ in 0...8 {
                                print("🏃‍♂️", terminator: "  ")
                            }
                        }
                        
                    }
                    print("After running player has to pass the ball PLAYER OPTION: \(playersPosition.RW.uppercased())[1] or \(playersPosition.ST)[2]")
                    playerOption = readLine()!
                    switch playerOption {
                    case "2":
                        print("SUAREZ has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT [1]")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("⚽︎⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎⚽︎⚽︎")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎")
                            default:
                                print("YOU MISSED GAME OVER!")
                                break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                    case "1":
                        print("Messi runs with the ball, he dribles pass one, pass two HE SHOOTS")
                        print(goal)
                        print("PLEASE CHOOSE WHERE TO SHOOT")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt % 2 == 0 {
                            print("GOAL!!⚽︎⚽︎⚽︎⚽︎⚽︎⚽︎ Barcelone Wins!!!")
                        } else {
                            print("The keeper saves it and the games over ...GAME OVER")
                            break
                        }
                    default:
                        print("Ball goes out of bounds game over")
                        
                    }
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
                
            case "2":
                print("\(playersPosition.LW) has the ball he runs by the width of the pitch PLAYER CHOICE: CROSS THE BALL TO THE BOX[1], SHOOT[2]")
                playerOption = readLine()!
                switch playerOption {
                case "1":
                    print("\(playersPosition.LW) crosses the ball...\(playersPosition.ST) is waiting for it...he jumps for the header...")
                    print(goal)
                    print("WHERE WOULD YOU LIKE THE BALL TO GO")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    switch playerOptionInt {
                    case goalRangeTop:
                        print("GOAL!!! BEAUTIFUL HEADER BY SUAREZ, BARCELONA WINS!!!")
                    default:
                        print("SAVED BY THE KEEPER GAME OVER!")
                        break
                    }
                case "2":
                    print("\(playersPosition.LW) DECIDES TO SHOOT FROM FAR AWAY")
                    print(goal)
                    print("PLEASE SELECT A BOX")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 1 || playerOptionInt == 6 || playerOptionInt == 13 || playerOptionInt == 18 {
                        print("WHAT A GOAL BY DEMBELE RIGHT IN THE CORNER OF THE BOX")
                    } else {
                        print("DEMBELE MISSES AND THE GAME IS OVER...YOU LOOSE")
                        break
                    }
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
            default:
                print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
            }
            
            
        default:
            print("You lost the ball, Real Madrid counterattacks, Bale Scores!!!! YOU LOOSE GAME OVER")
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    case "2":
        print("⚽️ Ter Stegen decides to play it short to \(playersPosition.RB.uppercased()), Real Madrid applies pressure, What would you like to do? PLAYER OPTIONS: RUN [1] PASS [2]")
        playerOption = readLine()!
        switch playerOption {
        case "1":
            print("\(playersPosition.RB) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
            playerOption = readLine()!
            playerOptionInt = Int(playerOption)!
            if playerOptionInt == 3 {
                print("OH NO BIG MISTAKE BY PLAYER!! Real Madrid steals the ball, they aproach the goal, they SHOOT ⚽️ ⚽️ ⚽️ ⚽️")
                
                
                print(goal)
                print("CHOOSE A BOX TO SAVE THE GOAL")
                playerOption = readLine()!
                playerOptionInt = Int(playerOption)!
                if playerOptionInt == randomNum {
                    print("REAL MADRID SCORES GAME OVER")
                } else {
                    print("SAVED!")
                    print(saveMessege)
                    break
                }
            } else {
                for _ in  1...playerOptionInt where playerOptionInt <= 10{
                    print("\(playersPosition.LB) runs")
                    for _ in 0...8 {
                        print("🏃‍♂️", terminator: "  ")
                    }
                }
                
            }
            print("After runing, you need you pass the ball. PLEASE CHOOSE PLAYER: DEFENDER: \(playersPosition.RCB.uppercased())[1] MIDFIELDER: \(playersPosition.RM.uppercased())[2]")
            playerOption = readLine()!
            switch playerOption {
            case "1":
                print("Oh no big mistake by player, Real Madrid steals ball, runs to box and shoots !!!")
                print(goal)
                print("CHOOSE A BOX TO SAVE THE GOAL")
                playerOption = readLine()!
                playerOptionInt = Int(playerOption)!
                if playerOptionInt == randomNum {
                    print("REAL MADRID SCORES GAME OVER")
                } else {
                    print("SAVED!")
                    print(saveMessege)
                    break
                }
            case "2":
                print("Player passes the ball to \(playersPosition.RM.uppercased()), He sees Casemiro coming after him, he sees Messi open PLAYER OPTIONS: RUN[1] Or MESSI[2]")
                playerOption = readLine()!
                switch playerOption {
                case "2":
                    print("MESSI runs with the ball 🏃‍♂️, he dribles pass one🏃‍♂️, pass two🏃‍♂️🏃‍♂️, he sees Suarez open PLAYER OPTION: STRIKER: \(playersPosition.ST.uppercased())[1] OR SHOOT[2]" )
                    playerOption = readLine()!
                    
                    switch playerOption {
                    case "1":
                        print("⚽︎ SUAREZ has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT[1] ⚽️")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("PLEASE SELECT A BOX")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS!!!! ⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS!!!! ⚽︎⚽︎⚽︎!")
                            default:
                                print("YOU MISSED GAME OVER!")
                                break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                        
                    case "2":
                        print(goal)
                        print("CHOOSE A BOX")
                        
                        
                        while playerWin == false {
                            if let playerOption = readLine() {
                                let playerOptionInt = Int(playerOption)!
                                switch playerOptionInt < randomNum {
                                case true:
                                    print("The Keeper saves it and the games over ...GAME OVER")
                                case false:
                                    print("GOAL MESSI SCORES!!! YOU WIN!!!")
                                    playerWin = true
                                    break
                                }
                            }
                        }
                    default:
                        print("Real Madrid steals the ball and game is over")
                        
                    }
                    
                case "1":
                    print("\(playersPosition.RM.uppercased()) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 3 {
                        print("Oh NO! Casemiro steals the ball, He plays with Bale. Bale SHOOTS!")
                        print(goal)
                        print("CHOOSE A BOX TO SAVE THE GOAL")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt == randomNum {
                            print("REAL MADRID SCORES GAME OVER")
                        } else {
                            print("SAVED!")
                            print(saveMessege)
                            break
                        }
                    } else {
                        for _ in  1...playerOptionInt where playerOptionInt <= 10{
                            print("\(playersPosition.LM) runs")
                            for _ in 0...8 {
                                print("🏃‍♂️", terminator: "  ")
                            }
                        }
                        
                    }
                    print("After running Coutinho has to pass the ball PLAYER OPTION: \(playersPosition.RW.uppercased())[1] or \(playersPosition.ST.uppercased())[2]")
                    playerOption = readLine()!
                    switch playerOption {
                    case "2":
                        print("⚽︎ Suarez has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT[1]")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("⚽︎⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎⚽︎⚽︎")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎")
                            default:
                                print("YOU MISSED GAME OVER!")
                                break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                    case "1":
                        print("Messi runs with the ball, he dribles pass one, pass two HE SHOOTS")
                        print(goal)
                        print("⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt % 2 == 0 {
                            print("GOAL!!⚽︎⚽︎⚽︎⚽︎⚽︎⚽︎ Barcelona Wins!!!")
                        } else {
                            print("The keeper saves it and the games over ...GAME OVER")
                        }
                    default:
                        print("Ball goes out of bounds game over")
                        break
                        
                    }
                    
                    
                    
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
                
            default:
                print("Casemiro steals the ball, long pass to Bale , and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                
            }
            
        case "2":
            print("PLEASE CHOOSE PLAYER: MIDFIELDER: \(playersPosition.RM.uppercased())[1] WINGER: \(playersPosition.RW.uppercased())[2]")
            playerOption = readLine()!
            switch playerOption {
            case "1":
                print("Player passes the ball to \(playersPosition.RM.uppercased()), He sees Casemiro coming after him, he sees Messi open PLAYER OPTIONS: RUN[1] Or MESS[2]")
                playerOption = readLine()!
                switch playerOption {
                case "2":
                    print("MESSI runs with the ball, he dribles pass one, pass two HE SHOOTS")
                    print(goal)
                    print("⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎⚽︎")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt % 2 == 0 {
                        print("GOAL!!⚽︎⚽︎⚽︎⚽︎⚽︎⚽︎ Barcelone Wins!!!")
                    } else {
                        print("The keeper saves it and the games over ...GAME OVER")
                        break
                    }
                case "1":
                    print("\(playersPosition.RM.uppercased()) runs 🏃‍♂️ 🏃‍♂️ 🏃‍♂️...FORWARD[1] RIGHT[2] BACK[3]")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 3 {
                        print("Oh NO! Casemiro steals the ball, He plays with Bale. Bale SHOOTS!")
                        print(goal)
                        print("CHOOSE A BOX TO SAVE THE GOAL")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt != randomNum {
                            print("SAVED! BUT THE CLOCK RUNS OUT GAME OVER")
                        } else {
                            print("GOAL REAL MADRID SCORES!!! GAME OVER")
                            break
                        }
                    } else {
                        for _ in  1...playerOptionInt where playerOptionInt <= 10{
                            print("\(playersPosition.RM) runs")
                            for _ in 0...8 {
                                print("🏃‍♂️", terminator: "  ")
                            }
                        }
                        
                    }
                    print("After running player has to pass the ball PLAYER OPTION: \(playersPosition.RW.uppercased())[1] or \(playersPosition.ST.uppercased)[2]")
                    playerOption = readLine()!
                    switch playerOption {
                    case "2":
                        print("SUAREZ has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT [1]")
                        playerOption = readLine()!
                        switch playerOption {
                        case "1":
                            print(goal)
                            print("⚽︎⚽︎⚽︎⚽︎ PLEASE SELECT A BOX ⚽︎⚽︎⚽︎⚽︎⚽︎")
                            playerOption = readLine()!
                            let playerOptionInt = Int(playerOption)!
                            switch playerOptionInt {
                            case goalRangeTop:
                                print("⚽︎⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎⚽︎")
                            case goalRangeBottom:
                                print("⚽︎⚽︎⚽︎ GOAL BARCELONA WINS! ⚽︎⚽︎⚽︎")
                            default:
                                print("YOU MISSED GAME OVER!")
                                break
                            }
                            
                            
                            
                        default:
                            print("Real Madrid steals the ball and game is over")
                        }
                    case "1":
                        print("Messi runs with the ball, he dribles pass one, pass two HE SHOOTS")
                        print(goal)
                        print("PLEASE CHOOSE WHERE TO SHOOT")
                        playerOption = readLine()!
                        playerOptionInt = Int(playerOption)!
                        if playerOptionInt % 2 == 0 {
                            print("GOAL!!⚽︎⚽︎⚽︎⚽︎⚽︎⚽︎ Barcelone Wins!!!")
                        } else {
                            print("The keeper saves it and the games over ...GAME OVER")
                            break
                        }
                    default:
                        print("Ball goes out of bounds game over")
                        
                    }
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
                
            case "2":
                print("\(playersPosition.RW) has the ball he runs by the width of the pitch PLAYER CHOICE: CROSS THE BALL TO THE BOX[1], SHOOT[2]")
                playerOption = readLine()!
                switch playerOption {
                case "1":
                    print("\(playersPosition.RW) crosses the ball...\(playersPosition.ST) is waiting for it...he jumps for the header...")
                    print(goal)
                    print("WHERE WOULD YOU LIKE THE BALL TO GO")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    switch playerOptionInt {
                    case goalRangeTop:
                        print("GOAL!!! BEAUTIFUL HEADER BY SUAREZ, BARCELONA WINS!!!")
                    default:
                        print("SAVED BY THE KEEPER GAME OVER!")
                        break
                    }
                case "2":
                    print("\(playersPosition.RW) DECIDES TO SHOOT FROM FAR AWAY")
                    print(goal)
                    print("PLEASE SELECT A BOX")
                    playerOption = readLine()!
                    playerOptionInt = Int(playerOption)!
                    if playerOptionInt == 1 || playerOptionInt == 6 || playerOptionInt == 13 || playerOptionInt == 18 {
                        print("WHAT A GOAL BY DEMBELE RIGHT IN THE CORNER OF THE BOX")
                    } else {
                        print("DEMBELE MISSES AND THE GAME IS OVER...YOU LOOSE")
                        break
                    }
                default:
                    print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
                }
            default:
                print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
            }
            
            
        default:
            print("You lost the ball, Real Madrid counterattacks, Bale Scores!!!! YOU LOOSE GAME OVER")
        }
        
    case "3":
        print("Ter Stegen decides to blast the ball forward to \(playersPosition.DCM.uppercased()). PLAYER OPTIONS: LEFT[1]) or RIGHT[2]")
        playerOption = readLine()!
        switch playerOption {
        case "1":
            print("\(playersPosition.DCM) decides to play it left to \(playersPosition.LW)")
            print("\(playersPosition.LW) has the ball he runs by the width of the pitch PLAYER CHOICE: CROSS THE BALL TO THE BOX [1], SHOOT[2]")
            playerOption = readLine()!
            switch playerOption {
            case "1":
                print("\(playersPosition.LW) crosses the ball...\(playersPosition.ST) is waiting for it...he jumps for the header...")
                print(goal)
                print("WHERE WOULD YOU LIKE THE BALL TO GO")
                playerOption = readLine()!
                playerOptionInt = Int(playerOption)!
                switch playerOptionInt {
                case goalRangeTop:
                    print("GOAL!!! BEAUTIFUL HEADER BY SUAREZ, BARCELONA WINS!!!")
                default:
                    print("SAVED BY THE KEEPER GAME OVER!")
                    break
                }
            case "2":
                print("\(playersPosition.LW) DECIDES TO SHOOT FROM FAR AWAY")
                print(goal)
                print("PLEASE SELECT A BOX")
                playerOption = readLine()!
                playerOptionInt = Int(playerOption)!
                if playerOptionInt == 1 || playerOptionInt == 6 || playerOptionInt == 13 || playerOptionInt == 18 {
                    print("WHAT A GOAL BY DEMBELE RIGHT IN THE CORNER OF THE BOX")
                } else {
                    print("DEMBELE MISSES AND THE GAME IS OVER...YOU LOOSE")
                    break
                }
            default:
                print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
            }
        case "2":
            print("\(playersPosition.DCM) decides to play it left to \(playersPosition.RW)")
            print("Messi runs with the ball, he dribles pass one, pass two, he sees Suarez open PLAYER OPTION: \(playersPosition.ST)[1] OR SHOOT[2]" )
            playerOption = readLine()!
            
            switch playerOption {
            case "1":
                print("Suarez has it, he's near the goal, his only option is to shoot PLEASE SELECT SHOOT [1]")
                playerOption = readLine()!
                switch playerOption {
                case "1":
                    print(goal)
                    print("PLEASE SELECT A BOX")
                    playerOption = readLine()!
                    let playerOptionInt = Int(playerOption)!
                    switch playerOptionInt {
                    case goalRangeTop:
                        print("GOAL BARCELONA WINS!")
                    case goalRangeBottom:
                        print("GOAL BARCELONA WINS!")
                    default:
                        print("YOU MISSED GAME OVER!")
                        break
                    }
                    
                    
                    
                default:
                    print("Real Madrid steals the ball and game is over")
                }
                
            case "2":
                print(goal)
                print("PLEASE SELECT A BOX")
                
                
                while playerWin == false {
                    if let playerOption = readLine() {
                        let playerOptionInt = Int(playerOption)!
                        switch playerOptionInt < randomNum {
                        case true:
                            print("The Keeper saves it and the games over ...GAME OVER")
                        case false:
                            print("GOAL MESSI SCORES!!! YOU WIN!!!")
                            playerWin = true
                            break
                        }
                    }
                }
            default:
                print("Real Madrid steals the ball and game is over")
                
            }
        default:
            print("Casemiro steals the ball, long pass to Bale, and HE SCORES!!⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ ⚽︎ GAME OVER👎👎👎👎👎 ")
        }
        
    default:
        print("Test")
        
    }
}






