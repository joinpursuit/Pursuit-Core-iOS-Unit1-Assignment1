//
//  main.swift
//  Text Based Adventure
//
//  Created by Tanya Burke on 10/3/19.
//  Copyright © 2019 Tanya Burke. All rights reserved.

//

import Foundation

var isPlaying = false
var currentLevel = 1
var finalLevel = 10
repeat {

       if currentLevel == finalLevel {
         print("I hope you enjoyed your adventure")
         isPlaying = false // stops the game
    } else if currentLevel == 1{
        print("Your adventure begins!")
        currentLevel += 1
        print("Pick a number from 1 to 100")

        let userEnteredNumAsString = readLine()
        let userEnteredNumAsInt = Int(userEnteredNumAsString!) ?? 3
        if userEnteredNumAsInt % 2 == 0{
          print ("I love even numbers, do you?")
           print("Now let's figure out what path you will choose, It's Friday night what would you like to do...Choose one \"Movie\" or \"Date\" or \"Study\"")
            let movieOrDateOrStudy = readLine()!.lowercased()
            print("You decide to have companion join you, who will it be a \"hot girl\" or a \"hot guy\"")
                    let yourCompanion = readLine()!.lowercased
                    print(yourCompanion() == "hot girl" ? "she is excited to join you" : "he is happy to hang out with you")
    
                    if movieOrDateOrStudy == "Movie".lowercased(){
                        print("What type of movie would you and \(yourCompanion) like to see? \"Action\" or \"Horror\" or \" Fantasy\"")
                        let movieType = readLine()
                        switch movieType{
                        case "Action":
                            print("You both head to the theaters they notice your favorite actor. You get invited out for drinks and party like a Rockstar")
                        case "Horror":
                            print("You head to the movie theater and walk in...")
                            sleep(2)
                            print("Yall notice it's eerily quiet, and the place appears to be deserted...")
                            sleep(3)
                            print("You notice a figure by the concession stand, you see there upper body, but nothing where their legs should be....")
                        case "Fantasy":
                            print("On your way to the theater you notice a weird looking un opened six pack of your favorite drink")
                            sleep(2)
                            print("Free drinks!!! You guys bend over simultaneously to pick them up...")
                            sleep(3)
                            print("As soon as you both touch it, the world becomes a blur, and before you know it when you open your eyes your in a whole different location...")
                            sleep(2)
                            print("Your companion is disoriented and your trying to get a grasp of what just happened...")
                        default:
                            print("You sure know how to turn up on a Friday!!! Would you like to play again?")
                        }
                        
                    }
                   
        } else if userEnteredNumAsInt % 2 != 0{
            print(" The number you chose was a bit odd, but hopefully this adventure won't be. Let's get to it, It's Friday night what would you like to do... Choose one \"Movie\" or \"Date\" or \"Study\"")
        let movieOrDateOrStudy = readLine() ?? "study"

print("You decide to have companion join you, who will it be a \"hot girl\" or a \"hot guy\"")
        let yourCompanion = readLine() ?? "hot guy"
            print(yourCompanion.lowercased() == "hot girl" ? "she is excited to join you" : "he is happy to hang out with you")

        if movieOrDateOrStudy == "movie"{
            print("What type of movie would you and \(yourCompanion) like to see? \"Action\" or \"Horror\" or \" Fantasy\"")
            let movieType = readLine()
            switch movieType?.lowercased() {
            case "action":
                print("You both head to the theaters they notice your favorite actor. You get invited out for drinks and party like a Rockstar")
            case "horror":
                print("You head to the movie theater and walk in...")
                sleep(2)
                print("Yall notice it's eerily quiet, and the place appears to be deserted...")
                sleep(3)
                print("You notice a figure by the concession stand, you see there upper body, but nothing where their legs should be....")
            case "fantasy":
                print("On your way to the theater you notice a weird looking un opened six pack of your favorite drink")
                sleep(2)
                print("Free drinks!!! You guys bend over simultaneously to pick them up...")
                sleep(3)
                print("As soon as you both touch it, the world becomes a blur, and before you know it when you open your eyes your in a whole different location...")
                sleep(2)
                print("Your companion is disoriented and your trying to get a grasp of what just happened...")
            default:
                print("You sure know how to turn up on a Friday!!! Would you like to play again?")
            }
                
        } else if movieOrDateOrStudy == "Date".lowercased(){
            print("Where do you and the \(String(describing: yourCompanion)) want to go for your date? \"picnic\" or \"three course meal\" or \" let them choose\"")
                let dateChoice = readLine()!.lowercased()
            let dateNight = String(dateChoice)
                switch dateNight{
                case "picnic":
                    print("So you and the \(yourCompanion)) meet under the designated spot, and you realize neither of you packed a meal...")
                case "three course meal":
                    print("You guys are ballin on a budget and head to McDonalds for your 3 course mael and you split a McFlurry...")
                    sleep(2)
                    print("Yall notice it's eerily quiet, and the place appears to be deserted...")
                    sleep(3)
                case "let them choose":
                    print("\(yourCompanion)chooses to take you on an all expense paid weekend trip to Ibiza for dinner at the most posh restaurant!!!! Woohooo Bonvoyage ")
                default:
                    print("Your favorite song comes on, you and the \(yourCompanion) dance the night away in your apartment")
                }
                
        }else if movieOrDateOrStudy == "Study".lowercased() {
                print("You stay in with \(yourCompanion) and you become the next Bill Gates, great choice")
            }
    
        }

print("Ending")


}
//        while isPlaying == true {
//            currentLevel += 1 }
        
} while isPlaying == true; do {
  currentLevel += 1 }
