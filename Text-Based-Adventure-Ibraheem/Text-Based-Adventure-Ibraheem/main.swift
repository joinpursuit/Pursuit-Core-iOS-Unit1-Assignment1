//
//  main.swift
//  Text-Based-Adventure-Ibraheem
//
//  Created by Ibraheem rawlinson on 10/10/18.
//  Copyright © 2018 Ibraheem rawlinson. All rights reserved.
//
//force on rapid
//defnesive programing
import Foundation


print("So do you want be a Millionare!!! 🤑💰 \"Yes💰\" or \"Nah🙅🏾‍♂️\" Attention: This game is case senstive! Only type the words and type them exactly how you see them ignore the emojis that is for decoration")
//whether or not you want to play the game
print("Anime Version🏯")

let AreYouPlaying = readLine()!
var choice: String
var GameQuestion: String
var answerInput: String
var choices: Array<String>
var points = 0
let MoneyPotPerLevel = (lvl1: 100, lvl2: 200, lvl3: 300, lvl4: 500,lvl5: 1000,lvl6: 2000,lvl7: 4000,lvl8: 8000,lvl9: 16000,lvl10: 32000,lvl11: 64000,lvl12: 125000,lvl13: 250000, lvl14: 500000, lvl15: 1000000)

switch AreYouPlaying {
case "Yes":
    print("Lets get started!!!!")
    print("")
    
    GameQuestion = "1. In the TV show called Pokemon what was Ash’s first Pokemon?"
    choices = ["Pickachu", "Bulbasaur", "Meowth", "Mew"]
    print("\(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3]) ? ")
    print("")
    print("")
    answerInput = readLine()!
    if answerInput == choices[0] {
        points += MoneyPotPerLevel.lvl1
        print("You are correct 🎉 you have $\(points)💰")
        print("")
        print("")
        print("")
        
        GameQuestion = "2. Finish the Title of this show: Digi…"
        choices = ["Go","Ku","Mon","Ray"]
        print("Ok You're off on a good start. Here is the next question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3]) ? ")
        print("")
        print("")
        answerInput = readLine()!
        if answerInput == choices[2] {
            points += MoneyPotPerLevel.lvl2
            print("That is..... Wro")
            print("")
            print("")
            print("Correct!!! .... You got Scared didn't you?!🤣 You now have $\(points)💰")
            print("")
            print("")
            print("")
            
            GameQuestion = " In Naruto what village is he apart of?YesYey"
            choices = ["Hidden Mist",
                "Hidden Sand",
                "Hidden Clouds",
                "Hidden Leaves"]
            print("This one is for my Naruto Fans 🍥 3. \(GameQuestion) is it \(choices[0])🌫, \(choices[1])🏝, \(choices[2])☁️, or \(choices[3])🍃 ? ")
            answerInput = readLine()!
            if answerInput == choices[3] {
                points += MoneyPotPerLevel.lvl3
                print("")
                print("")
                print("You got it Right!!! You Just might be the Next Hokage In the Making... Believe it!!")
                print("")
                print("")
                print("")
                GameQuestion = "4. In the show, Attack on Titian (First Season) what did the Titans mainly eat?"
//                "Youre doing good so far, Keep it Up! Next:"
                choices = ["Man",
                          "Other Titans",
                          "Animals",
                          "Nothing"]
                print("Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                print("")
                print("")
                answerInput = readLine()!
                if answerInput == choices[0]{
                    points += MoneyPotPerLevel.lvl4
                    print("You are correct 🎉 you have $\(points)💰")
                    print("")
                    print("")
                    print("")
                    GameQuestion = "5. In My Hero Academia what is All Might’s Quirk?"
                    choices = ["All for One",
                        "One for All",
                        "Super Strength",
                        "Super Speed"]
                    print(" I Need you to go PLUS ULTRA on this question 💪🏾: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                    print("")
                    print("")
                    answerInput = readLine()!
                    if answerInput == choices[1] {
                        print("")
                        print("")
                        points += MoneyPotPerLevel.lvl5
                        print("HA HA HAAA Looks Like You Are Worthy of having All Might's Quirk You Now have $\(points)💰")
                        
                        GameQuestion = "6. In Full Metal Alchemist Brotherhood why were the Elric bother searching for the Philsopher’s stone?"
                        choices = ["To resurrect their mom",
                            "To restore their bodies",
                            "To kill their father",
                            "To stop the hemunkquli"]
                        print("")
                        print("Warm Up is over. Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])?")
                            print("")
                            print("")
                         answerInput = readLine()!
                        if answerInput == choices[1]{
                            print("")
                            print("")
                            points += MoneyPotPerLevel.lvl6
                            print("You are correct 🎉 you have $\(points)💰")
                            print("")
                            print("")
                            GameQuestion = "7. In One Piece what is Sanji’s last name?"
                            choices = ["Silvers",
                                "Briefs",
                                "Vinsmoke",
                                "He doesn’t have a last name"]
                             print("")
                             print("Ok, Your treasure is on the line here so make sure you choose wisely: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                            print("")
                            print("")
                            answerInput = readLine()!
                            if answerInput == choices[2] {
                                print("")
                                print("")
                                points += MoneyPotPerLevel.lvl7
                                print("Luffy would be proud. You have now earned $\(points)🤑")
                                print("")
                                print("")
                                GameQuestion = "8. In Dragon Ball Super how long (In Mins) did Goku & Vegeta's Fusion last when they fought Black Goku & Zamasu Fusion? Hint: (Vegeito SSB Form) & Hint 2: It was within an hour. For Example you would type: 20 if you want to say 20 minutes"
                                print("")
                                print("Enter the Following: \(GameQuestion)")
                                print("")
                                print("")
                                answerInput = readLine()!
                                let intInput = Int(answerInput)
                                    if intInput == 15 {
                                        points += MoneyPotPerLevel.lvl8
                                        print("Wow you're a real fan 😱 you now have $\(points)💰")
                                        print("")
                                        print("")
                                        GameQuestion = "9. In SAO (Sword Art Online) what is Kirito’s real name?"
                                        choices = ["Kirito",
                                            "Kazuto",
                                            "Kabuto",
                                            "Kagami"]
                                        print("Let see if you know your SAO⚔️: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                        print("")
                                        print("")
                                        answerInput = readLine()!
                                        if answerInput == choices[1] {
                                            points += MoneyPotPerLevel.lvl9
                                            print("")
                                            print("")
                                            print("looks like you're on a roll I got to make these questions harder you have just earned $\(points)💰")
                                            print("")
                                            print("")
                                            GameQuestion = "10. In Fairy Tail Who smells like Gray according to Natsu?"
                                            choices = ["Lyon", "Silver", "Laxus", "Sting"]
                                            print("Getting Harder Now 😈: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                            print("")
                                            print("")
                                            answerInput = readLine()!
                                            if answerInput == choices[1] {
                                                points += MoneyPotPerLevel.lvl10
                                                print("Ok no more mister nice guy 😤 here is your money $\(points)💰")
                                                print("")
                                                print("")
                                                GameQuestion = "11. In One Punch Man where did the idea of his suit come from?"
                                                choices = ["Mario", "Anpanman", "Astro Boy", "Wrestling"]
                                                print("Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                                print("")
                                                print("")
                                                answerInput = readLine()!
                                                if answerInput == choices[1]{
                                                    points += MoneyPotPerLevel.lvl11
                                                    print("You got that in one Shot just like one punch HAHAHA you earned $\(points)💰")
                                                    print("")
                                                    print("")
                                                    GameQuestion = "12. In Bleach What is the meaning of Ichigos name?"
                                                    choices = ["Strawberry",
                                                        "One who protects",
                                                         "Savior",
                                                        "Chosen one"]
                                                    print("Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                                    answerInput = readLine()!
                                                    if answerInput == choices[1]{
                                                       points += MoneyPotPerLevel.lvl12
                                                        print("Damn should have made it harder: Here is your money $\(points)💰")
                                                        print("")
                                                        print("")
                                                        GameQuestion = "13. In Street Fighter what was M. Bison original name in Japan?"
                                                        choices = ["M.bison",
                                                             "Barlog",
                                                            "Vega",
                                                            "Claw" ]
                                                        print("WAIT NEW OPPONENT HAS ENTERED THE MATCH!!... HAHA JK Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                                        print("")
                                                        print("")
                                                        answerInput = readLine()!
                                                        if answerInput == choices[2]{
                                                            points += MoneyPotPerLevel.lvl13
                                                            print("YOU WIN ONE Mil.... SIKE NOT YET YOU'RE ALMOST THERE😱 HERE IS YOURE MONEY $\(points)💰")
                                                            print("")
                                                            print("")
                                                            GameQuestion = " 14. How old was Killua when he entered the hunter exams in the show Hunter X Hunter?"
                                                            choices = ["15",
                                                                "12",
                                                                "14",
                                                                "16"]
                                                            print("This one is a touch one Next Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                                            print("")
                                                            print("")
                                                            answerInput = readLine()!
                                                            if answerInput == choices[2]{
                                                                points += MoneyPotPerLevel.lvl14
                                                                print("One more question to go. Look at how much you earned $\(points)💰")
                                                                print("")
                                                                print("")
                                                                GameQuestion = "15. What anime was an inspiration of the Lion King?"
                                                                choices = ["Kimba the white lion",
                                                                     "King Hige",
                                                                    "Iso of the Jungle",
                                                                    "There was no inspiration"]
                                                                print("I guess I should call you Milly since you have a million dollars💰💰💰💰. So lets make this interesting. We will give you an extra 1M dollars🤑😱ß if you answer this right, But if you get it wrong you loose it all 😏👀. Bonus Question: \(GameQuestion) is it \(choices[0]), \(choices[1]), \(choices[2]), or \(choices[3])? ")
                                                                print("")
                                                                print("")
                                                                answerInput = readLine()!
                                                                if answerInput == choices[0]{
                                                                    points += MoneyPotPerLevel.lvl15
                                                                    print("You Did it!!!!! 🙌🏾🤑💰 take your money and live your best life $\(points)💰")
                                                                    break
                                                                    
                                                                } else {
                                                                    print("ooooooo so close 😣... I'll be taking that money back: Game Over")
                                                                    var pettyFace = 0
                                                                    while pettyFace <= 5{
                                                                        print("😜😜😜😜😜😜😜😜")
                                                                        pettyFace += 1
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                            } else {
                                                                print("ooooooo so close 😣: Game Over")
                                                            }
                                                        } else {
                                                            print("ooooooo so close 😣: Game Over")
                                                        }
                                                    } else{
                                                        print("HAHAHAHA You Lose no Million for you : Game Over")
                                                    }
                                                    
                                                } else {
                                                    print("HAHAHAHA You Lose no Million for you: Game Over")
                                                }
                                            } else {
                                                print("HAHAHAHA You Lose no Million for you: Game Over")
                                            }
                                        } else {
                                            print("Yea I didn't expect you get that either: Game Over")
                                        }
                                    }
                                
                                
                                
                            } else {
                                print("Yea I didn't expect you get that either: Game Over")
                            }
                            
                            
                        } else {
                            print("You are not a botherhood Fan I See 😭: Game Over")
                        }
                    } else {
                        print("It looks like youre Not Ready for this Quirk Yet 😭: Game Over")
                    }
                    
                } else {
                    print("How could you get that wrong 😭: Game Over")
                }
                
            } else {
                print("I guess you're not a naruto Fan 😭: Game Over")
            }
            
        } else {
            print("Wow you got that wrong? Things were just getting started 😭 Well see you next time 👋🏾: Game Over")
        }
        
        
        
        
        
    } else {
        print("Sorry you lose🙊: Game Over")
    }
    
    
    
default:
    print("Maybe Next Time 🤷🏽‍♂️")
    
}

