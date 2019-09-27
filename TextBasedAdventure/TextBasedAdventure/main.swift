//
//  main.swift
//  TextBasedAdventure
//
//  Created by Alfredo Barragan on 10/10/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//
import Foundation

let losingDiceRoll = false
var diceRoll = Int(arc4random_uniform(UInt32(6)))

print("Enter your name wanderer")
let userName = readLine()!
print("Enter your age wanderer (Choose a number between 1-100)")
let userAge = readLine()!

var userProfile = (userName, userAge)
print("Are you ready \(userProfile)")



print("Enter your class: (warrior),(mage),(paladin),(shaman),(normal human)")
if let answer = readLine() {
    switch answer {
    case "warrior":
        print("You have chosen the life of the strong. You seen a horde of demons, how many do you choose to take on?"  )
    let numOfDemons = readLine()!
    let numOfDemonsInt = Int(numOfDemons)!
        for deadDemons in 1...numOfDemonsInt {
            print("You dispatched of \(deadDemons) as you advanced towards future battles. Congratulations")
                if deadDemons >= 5 {
                print("You were overzealous, and now you are dead. Pretty anticlimatic")
                }
           }
            case "mage":
                
                print("You have chosen the life of the magical. You have many spells to cast, which do you choose: (red), (blue), (green)")
                if let spells = readLine() {
                switch spells {
                case "red":
                    print("You set the city ablaze, what a cool person you are")
                case "blue":
                    print("You filled the city with water, drowning everyone in sight. What a monster you are")
                case "green":
                    print("You filled the city with nature, revitalizing a once dying city...just kidding, you crushed all the homes there. Never pick mage.")
                default:
                    print("You have done nothing and wasted your talents. Pity")
                    }
                }
        case "normal human":
        print("You have chosen the life of the mundane. Did you choose this to be clever?  (Yes) or (No)")
        let rightAnswer =  readLine()!
        if rightAnswer == "Yes" {
            print("Then you shall advance no further")
        } else {
            print("I an curious as to why you chose the most basic of choices Do you feel that being a real human is more lavish than any other mythical guilds you could have entered to? (Yes) or (No)" )
            if rightAnswer == "No" {
                let secondAnswer = readLine()!
                if secondAnswer == "Yes" {
                    print("I am inspired in your belief in humanity. However just like the life of a normal person, this adventure is rather stale. Try picking a different class.")
                } else {
                    print("I am confused then as to why be a regular human in a mythical text game. Try a different class")
                }
            }
        }
        
        case "paladin":
            print("You have chosen the life of the noble. You are currently facing down a fearsome foe, who has every intention of ending your life. You have one last chance, one final blow to deliver him. Initial roll (choose a number between 1 to 6")
            while losingDiceRoll == false {
                 let userDiceRoll = readLine()!
                let realUserDiceRoll = Int(userDiceRoll)!
                    switch realUserDiceRoll > diceRoll {
                    case true:
                        print("You gathered all your strength and swung with a mighty blow'")
                        losingDiceRoll == true
                        print("After your victory, you see a canteen on the ground next to a sleeping guard. You are extremely thristy but are not allowed to steal under the guidelines of being a Paladin. Do you take the canteen or continue on parched? Enter the following: (steal) or (walk)")
                        let decision = readLine()
                        if decision == "steal" {
                            print("You have tarnished your Paladin honor, but are now refreshed enough in order to move on. Congratulations.")
                        }
                        else {
                            print("You have chosen to keep your honor, at the cost of your strength. You soon get ambushed and die a slow, thirsty death. ")
                            break
                            }
                        
                        case false:
                        print("You were too weak and missed your strike. Try again")
                        
                        default:
                        print("")
                        }
                    }
        case "shaman":
        print("You have chosen the life of the worst hero in Hearthstone. You see a pendant on the ground with mystical etchings.There's a red aura surrounding the pendant but it calls to you. Do you pick it up? (Choose yes or no)")
        let pendantAnswer =  readLine()!
        if pendantAnswer == "yes" {
            print("The pendant opens up and consumes your soul. You become a souless husk, a vegatable. Typical Shaman.")
        } else {
            print("You resist the urge to take the pendant, and you walk off. As you walk off, you see a nearby traveler grab the pendant from the ground and instantly combust into ashes. You were a lucky one indeed, but your journey is not over yet. You arrive at your hut to rest for the day, but your front door is open. You walk in to see your spouse with another person. A Paladin with shiny armor, laying on your bed with your spouse. Your eyes flare with rage, and you grab your staff ready to lay waste to this Paladin. You ask yourself, do you fire this fatal spell at this Paladin (Choose yes or no).")
            if pendantAnswer == "no" {
                let decisionAnswer = readLine()!
                if decisionAnswer == "cast spell" {
                    print("You have your staff and fire a poisonous spell right at the Paladin's chest...but it just bounces right off. The Paladin is of the highest class, and you are a mere lowly Shaman. The Paladin laughs at your feeble attempt for revenge, cutting you down easily with his mighty sword. As you lay there dying, your life passes before you. You realize, why on earth did i ever decide to be a Shaman. Shaman sucks. Then you die.")
                } else {
                    print("You think about your options, clutching the staff in your hand. You realize that you are just a lowly Shaman while he is a Paladin, best class in all the land. You yell at your spouse, asking what is the meaning of all this, but the Paladin simply chuckles. He grabs your spouse by the hand and they both walk off to a more glorious adventure. For you however, you are just a crappy Shaman, worst class in all the land. You lay in your now empy home, wishing you were dead. (Pro Tip: Do not pick Shaman ever.)")
                }
            }
        }
        default:
        print("please pick from the above choices, don't make life hard")
        }
    }








