//
//  main.swift
//  Text Base
//
//  Created by Jose Alarcon Chacon on 10/10/18.
//  Copyright © 2018 Jose Alarcon Chacon. All rights reserved.
//

import Foundation

//print("Enter your workout: (swim), (bike), (run), (party)")
//// String? -optional
//if let response = readLine() {  //unwrap and optional
//    switch response {
//    case "swim":
//        print("don't forget your goggles")
//    case "bike":
//        print("pack an extra spare tube and hydratioin")
//    case "run":
//        print("nice dasy for a run in Central Park")
//    case "party":
//        print("I am ready to go to the club and dance")
//    default:
//        print("no 🍺 for you")
//        print("Enter option agan:????")
//        let option2 = readLine()!   //force unwraps - dangerous
//        if option2 == "rest" {
//            print("happoy recovery")
//        }
//    }
//}
//
//print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters
//
//let UpOrDown = readLine()!
//var weapon = "" //Set variables here and you can change and use their values later
//var eggExploded = false
//switch UpOrDown {
//case "Up":
//    print("You see a basket of eggs.  How many do you take?")
//    let eggNum = readLine()!
//    let eggNumAsInt = Int(eggNum)!
//    for currentEgg in 1...eggNumAsInt {
//        print("You carefully remove egg number \(currentEgg)")
//        if currentEgg == 4 {
//            print("It was a trap!  The egg explodes")
//            eggExploded = true
//        }
//    }
//    if !eggExploded {
//        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
//    }
//    //More decisions ahead! Use conditionals and switch statements here
//
//case "Down":
//    print("Down you go!")
////Instructions for the "Down" option ahead!
//default:
//    print("You stand your ground. Choose a weapon")
//    weapon = readLine()!
//    //Fighting conditionals ahead!
//}
//
//if weapon != "" {
//    print("You survived your first ordeal and evan have a \(weapon) to take home")
//}
//if eggExploded {
//    print("Bad luck!  Don't take so many eggs")
//}


print("Let's start our day with a positive attitude and our usual routine. Tell me what you plan to do tomorrow: type 'school': if you plan to go to school; type 'work' if you plan to go to work; type 'friends' if you plan to hangout with friends; type 'study' if you plan to study; type 'dance' if you plan to go to dance; type 'sport' if plan to play a sport; type 'run' if you plan to go for a run; type 'movie' if you plan to watch a movie; type 'walk' if you plan to go for a walk; type 'swim' if you plan to swim")

var activity = readLine()
var numberOfActivities = 0
let dance = """
____________________██████
_________▓▓▓▓____█████████
__ Ƹ̵̡Ӝ̵̨̄Ʒ▓▓▓▓▓=▓____▓=▓▓▓▓▓
__ ▓▓▓_▓▓▓▓░●____●░░▓▓▓▓
_▓▓▓▓_▓▓▓▓▓░░__░░░░▓▓▓▓
_ ▓▓▓▓_▓▓▓▓░░♥__♥░░░▓▓▓
__ ▓▓▓___▓▓░░_____░░░▓▓
▓▓▓▓▓____▓░░_____░░▓
_ ▓▓____ ▒▓▒▓▒___ ████
_______ ▒▓▒▓▒▓▒_ ██████
_______▒▓▒▓▒▓▒ ████████
_____ ▒▓▒▓▒▓▒_██████ ███
_ ___▒▓▒▓▒▓▒__██████ _███
_▓▓X▓▓▓▓▓▓▓__██████_ ███
▓▓_██████▓▓__██████_ ███
▓_███████▓▓__██████_ ███
_████████▓▓__██████ _███
_████████▓▓__▓▓▓▓▓▓_▒▒
_████████▓▓__▓▓▓▓▓▓
_████████▓▓__▓▓▓▓▓▓
__████████▓___▓▓▓▓▓▓
_______▒▒▒▒▒____▓▓▓▓▓▓
_______▒▒▒▒▒ _____▓▓▓▓▓
_______▒▒▒▒▒_____ ▓▓▓▓▓
_______▒▒▒▒▒ _____▓▓▓▓▓
________▒▒▒▒______▓▓▓▓▓
________█████____█████
_'▀█║────────────▄▄───────────​─▄──▄_
──█║───────▄─▄─█▄▄█║──────▄▄──​█║─█║
──█║───▄▄──█║█║█║─▄║▄──▄║█║─█║​█║▄█║
──█║──█║─█║█║█║─▀▀──█║─█║█║─█║​─▀─▀
──█║▄║█║─█║─▀───────█║▄█║─▀▀
──▀▀▀──▀▀────────────▀─█║
───────▄▄─▄▄▀▀▄▀▀▄──▀▄▄▀
──────███████───▄▀
──────▀█████▀▀▄▀
────────▀█▀

"""
let myTuple = (activity1: "fast", activity2: "slow")


while activity != "no more activities!" {

    switch activity {
    case "school":
        print("What is your favorite subject? Type: 'Math', 'Spanish', 'Italian', 'Portuguese', or 'Other'")
        let mathAndSci = ["Biology", "Math", "Physics"]
        let language = ["Spanish", "Italian", "Portuguese"]
        let favoriteClass = readLine()
        if mathAndSci.contains(favoriteClass!) {
            print("I also love math and sciences!")
            print("")
        } else if language.contains(favoriteClass!) {
            for i in 0...2 {
                if favoriteClass == language[i] {
                    print("Oh, that's cool. I also speak \(favoriteClass!)!")
                    print("")
                }
            }
        }
    case "work":
        print("How do you plan to get to work today? type: 'train'")
        let transit = readLine()
        if transit == "train" {
            print("Type the letter or number of the train you like to take")
            let train = readLine()
            switch train{
            case "A", "C", "R","F","N","W","J","E","7","1","2","3","4","5","6":
            print("The train is on time")
                print("")
            case "G","M","Q":
                print("The train is delay")
                print("")
                
            default:
                print("Sorry I don't know that train")
            }
        }
        
        
    case "friend":
        print("What is the amount of hours you spend with friends per week?")
        let hoursWithFriends = readLine()
        if let hours = Int(hoursWithFriends!) {
            if hours > 10 {
                print("It's is a good amount of time")
            } else if hours > 5 {
                print("Good")
            } else if hours > 3 {
                print("Try to spend more hours with your friend")
            } else {
               print("I didn't see you")
            }
        }

    case "study":
        print("How many hours you study per week?.")
        let hoursOfStudy = readLine()
        if let hours = Int(hoursOfStudy!) {
            if hours > 60 {
                print("Looks like you like to study")
                print("")
            } else if hours > 40 {
                print("Keep doing it")
                print("")
            }else if hours > 20{
                print("You better get more hours in your study")
                print("")
            }else {
                print("didn't get it ↰ ↱")
                print("")
            }
        }
        
    case "dance":
        print("Do you partner dance or solo")
        let dancing = readLine()
        if dancing == dancing {
            print("Type the name of your dance. 'Bachata' 'Salsa', Zamba")
            let dancing = readLine()
            switch dancing {
            case "Bachata":
                print("Bachata is a good dance")
            case "Salsa":
                print("Salsa is a latin music")
                print(dance)
            case "Zamba":
                print("In brazil people like to dance samba a lot")
            default:
                print("Sorry, I didn't understand what you typed")
            }
        }


        
    case "sport":
        print("Do you like to play sport ? Type 'play'") 
        let mySport = readLine()
        if mySport == "play" {
            print("It's very likely that there is a place nearby in your area. Type area")
            let playType = readLine()
            if playType == "area" {
                print("Ther are different places in Brooklyn, long island city and Manthattan, it might be easy for yor to google in which area you would like to play")
                print("")
            }else {
                print("Go to sleep 🛌🛌🛌🛌🛌🛌🛌")
            }
        }
        
    case "run":
        print("How fast do you usually rum? type \(myTuple.activity1) or \(myTuple.activity2)")
        let myTime = readLine()!
//        let myTuple = (activity1: "fast", activity2: "slow")
        switch myTime{
          case myTuple.activity1:
                print("You should compete in Olympic races. 🏃🏽‍♀️ 🏃🏻‍♂️  🏃🏻‍♀️ 🏃🏻‍♂️ 🏃🏻‍♀️ 🏃🏻‍♂️ 🏃🏻‍♀️")
        case myTuple.activity2:
            print("herrr")
                
            default:
                print("Sorry,")
            }
        
    case "movie":
        print("choose your movie genre: 'Action', ''Comedy")
        let myMovie = readLine()
        if myMovie == myMovie {
           print("Type your favorite movie genre ")
//            let myMovie = readLine()
            switch myMovie{
            case "Action":
                print(" Actually 'Venom', 'A Star Is Born' and 'First Man' is playing at 'United Artists Kaufman Astoria 14' tonight")
                print("")
            case "Comedy":
                print("'The Old Man & the Gun' is playing at United Artists Kaufman Astoria 14' tonight")
                print("")
            default:
                print("Sorry, I didn't understand what you typed")
            }
        }
        
     case "walk":
        print("Want to know great places to walk in NY")
        let theWalk = readLine()
        if theWalk == theWalk {
          print("Type where do you want to walk.  'Central Park' or 'The Brooklyn Bridge'")
            let walk = readLine()
            switch walk {
            case "Central Park":
                print("Central Park is an urban park in Manhattan, New York City. It is located between the Upper West Side and Upper East Side")
            case "The Brooklyn Bridge":
            print("The Brooklyn Bridge 🌉 is a hybrid cable-stayed/suspension bridge in New York City and is one of the oldest roadway bridges in the United States. Started")
            default:
                print("Sorry, I didn't understand what you typed.")
            }
        }
        
    case "swim":
        print("Do you like to swim at the beach or at the pool? Type 'beach' for the beach, or 'pool' for the pool.")
        let swimPreference = readLine()
        if swimPreference == "beach" {
            print("Sorry! It's October! 🎃 The beach is closed! 😂😂😂")
        } else if swimPreference == "pool" {
            print("An indoor, or an outdoor pool? Type 'indoor' or 'outdoor'")
            let poolType = readLine()
            if poolType == "indoor" {
                print("That will be fun!")
            } else if poolType == "outdoor" {
                print("Will the pool be heated? Type 'yes' or 'no'")
                let poolHeat = readLine()
                if poolHeat == "yes" {
                    print("That will be fun!")
                } else {
                    print("It's October!!! It's going to be cold ❄️ ⛄️ ❄️ ")
                }
            } else {
                print("I didn't understand your pool type!")
            }
        } else {
            print("I didn't understand your swim preference!")
        }
    default:
        print("Sorry, I didn't understand what you typed.")
        }

    print("""
=====================================================================================================================================================================
What will your next activity be? Type 'school': if you plan to go to school; type 'work' if you plan to go to work; type 'friends' if you plan to hangout with friends; type 'study' if you plan to study; type 'dance' if you plan to go to dance; type 'sport' if plan to play a sport; type 'run' if you plan to go for a run; type 'movie' if you plan to watch a movie; type 'walk' if you plan to go for a walk; type 'swim' if you plan to swim. Type 'no more activities!' if you don't have any other plans.
""")
    activity = readLine()
    numberOfActivities = numberOfActivities + 1
    
}


if numberOfActivities == 1 {
    print("You're only doing one thing tomorrow!?")
}

if numberOfActivities > 1 && numberOfActivities < 4 {
    print("That sounds like a great day!")
}

if numberOfActivities >= 4 {
    print("Wow, you have a busy day planned. Have fun!")
}
