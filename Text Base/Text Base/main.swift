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

//



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

_'▀█║────────────▄▄─────────── ─▄──▄_

──█║───────▄─▄─█▄▄█║──────▄▄── █║─█║

──█║───▄▄──█║█║█║─▄║▄──▄║█║─█║ █║▄█║

──█║──█║─█║█║█║─▀▀──█║─█║█║─█║ ─▀─▀

──█║▄║█║─█║─▀───────█║▄█║─▀▀

──▀▀▀──▀▀────────────▀─█║

───────▄▄─▄▄▀▀▄▀▀▄──▀▄▄▀

──────███████───▄▀

──────▀█████▀▀▄▀

────────▀█▀

"""

let myTuple = (activity1: "fast", activity2: "slow")
var points = 0

while activity != "no more activities!" {
    
    switch activity {
    case "school":
        numberOfActivities = numberOfActivities + 1
        print("What is your favorite subject? Type: 'Math', 'Spanish', 'Italian', 'Portuguese', or 'Other'")
        let mathAndSci = ["Biology", "Math", "Physics"]
        let language = ["Spanish", "Italian", "Portuguese"]
        let favoriteClass = readLine()
        if mathAndSci.contains(favoriteClass!) {
            print("I also love math and sciences!")
            print("")
            points = points + 5
        } else if language.contains(favoriteClass!) {
            for i in 0...2 {
                if favoriteClass == language[i] {
                    print("Oh, that's cool. I also speak \(favoriteClass!)!")
                    print("")
                    points = points + 8
                }
            }
        } else {
            print("Oh, I don't know that subject very well.")
            points = points - 4
        }
        
    case "work":
        numberOfActivities = numberOfActivities + 1
        print("How do you plan to get to work today? type: 'train', 'bus', 'bike', or 'walk'.")
        let transit = readLine()
        if transit == "train" {
            
            print("Type the letter or number of the train you like to take")
            let train = readLine()
            switch train{
            case "C", "R","F","N","W","J","E","7","1","2","3":
                print("The train is on time")
                print("")
                points = points + 5
            case "A","4","5","6":
                print("The train is on time, but it's packed!")
                print("")
                points = points + 2
            case "G","M","Q":
                print("Sorry! The train is delayed!")
                print("")
                points = points - 3
            default:
                print("Sorry I don't know that train")
                print("")
                points = points - 5
            }
        } else if transit == "bus" {
            print("The bus always takes a long time!")
            print("")
            points = points + 1
        } else if transit == "bike" {
            print("Biking is a great way to get exercise on your way to work!")
            print("")
            points = points + 5
        } else if transit == "walk" {
            print("I hope you have a nice walk!")
            print("")
            points = points + 3
        }
        
        
    case "friends":
        numberOfActivities = numberOfActivities + 1
        print("How many hours do you spend with friends per week?")
        let hoursWithFriends = readLine()
        if let hours = Int(hoursWithFriends!) {
            if hours > 10 {
                print("That's a good amount of time!")
                print("")
            } else if hours > 5 {
                print("That's good")
            } else if hours > 3 {
                print("Try to spend more time with your friends!")
                print("")
            } else {
                print("You should really spend more time with your friends!")
                print("")
            }
            points = points + hours
        }
        
    case "study":
        numberOfActivities = numberOfActivities + 1
        print("How many hours you study per week?.")
        let hoursOfStudy = readLine()
        if let hours = Int(hoursOfStudy!) {
            
            if hours > 60 {
                print("Looks like you like to study")
                print("")
                points = points + 12
            } else if hours > 40 {
                print("Keep doing it")
                print("")
                points = points + 10
            } else if hours > 20{
                print("You better get more hours in your study")
                print("")
                points = points + 8
            } else {
                print("You really need to study more!")
                print("")
                points = points - 12
            }
        }
        
        
    case "dance":
        numberOfActivities = numberOfActivities + 1
        print("Do you partner dance or solo? Type 'partner' or 'solo'.")
        let dancingType = readLine()
        
        if dancingType == "partner" {
            print("Type the name of your dance. 'Bachata' 'Salsa', 'Kizomba'")
            let dancing = readLine()
            switch dancing {
            case "Bachata":
                print("Bachata is a good dance")
                points = points + 3
            case "Salsa":
                print("Salsa is a latin music")
                print(dance)
                points = points + 8
            case "Kizomba":
                print("Kizomba is fun")
                points = points + 5
            default:
                print("Sorry, I didn't understand what you typed")
                points = points - 1
            }
            
        } else if dancingType == "solo" {
            print("Type the name of your dance. 'samba' 'hip-hop' or 'house'")
            let dancing = readLine()
            switch dancing {
            case "samba":
                print("Wow! The footwork for samba is hard! It's a beautiful dance!")
                points = points + 8
            case "hip-hop":
                print("Nice. There are lots of great hip-hop teachers in New York")
                points = points + 8
            case "house":
                print("That's a lot of cardio!!")
                points = points + 8
            default:
                print("Sorry, I didn't understand what you typed")
                points = points - 1
            }
        }
        
    case "sport":
        numberOfActivities = numberOfActivities + 1
        print("Do you like to play sports often? Type 'play'")
        let mySport = readLine()
        if mySport == "play" {
            points = points + 5
            print("It's very likely that there is a place nearby in your area. Type 'my area' to learn more, otherwise just type 'let's move on.")
            let playType = readLine()
            if playType == "my area" {
                print("There are actually many different places in Brooklyn, LIC, and Manthattan... it might actually be easier for you to just google in which area you would like to play ;)")
                print("")
            } else {
                print("Okay")
            }
        }
        
        
        
    case "run":
        numberOfActivities = numberOfActivities + 1
        print("How fast do you usually run? type \(myTuple.activity1) or \(myTuple.activity2)")
        let myTime = readLine()!
        //        let myTuple = (activity1: "fast", activity2: "slow")
        
        switch myTime{
        case myTuple.activity1:
            print("You should compete in Olympic races. 🏃🏽‍♀️ 🏃🏻‍♂️  🏃🏻‍♀️ 🏃🏻‍♂️ 🏃🏻‍♀️ 🏃🏻‍♂️ 🏃🏻‍♀️")
            points = points + 8
        case myTuple.activity2:
            print("Slow and steady is still good!")
            points = points + 4
        default:
            print("Sorry, I didn't understand what you typed")
            points = points - 2
        }
        
    case "movie":
        numberOfActivities = numberOfActivities + 1
        print("Choose your movie genre: 'Action', ''Comedy")
        let myMovie = readLine()
        if myMovie == myMovie {
            switch myMovie{
            case "Action":
                print(" Actually 'Venom', 'A Star Is Born' and 'First Man' are playing at 'United Artists Kaufman Astoria 14' tonight")
                print("")
                points = points + 4
            case "Comedy":
                print("'The Old Man & the Gun' is playing at United Artists Kaufman Astoria 14' tonight")
                print("")
                points = points + 5
            default:
                print("Sorry, I didn't understand what you typed")
                points = points - 1
            }
        }
        
        
        
    case "walk":
        numberOfActivities = numberOfActivities + 1
        print("Want to know great places to walk in NY? Type 'yes' or 'no'")
        let theWalk = readLine()
        if theWalk == "yes" {
            
            print("Type where do you want to walk. 'Central Park' or 'The Brooklyn Bridge'")
            let walk = readLine()
            switch walk {
            case "Central Park":
                print("Central Park is an urban park in Manhattan, New York City. It is located between the Upper West Side and Upper East Side")
                points = points + 8
            case "The Brooklyn Bridge":
                print("The Brooklyn Bridge 🌉 is a hybrid cable-stayed/suspension bridge in New York City and is one of the oldest roadway bridges in the United States.")
                points = points + 10
            default:
                print("Sorry, I didn't understand what you typed.")
                points = points - 1
            }
            
        } else if theWalk == "no" {
            print("Okay, fine.")
            points = points - 4
        }
        
    case "swim":
        numberOfActivities = numberOfActivities + 1
        print("Do you like to swim at the beach or at the pool? Type 'beach' for the beach, or 'pool' for the pool.")
        let swimPreference = readLine()
        if swimPreference == "beach" {
            print("Sorry! It's October! 🎃 The beach is closed! 😂😂😂")
            print("")
            points = points - 12
        } else if swimPreference == "pool" {
            print("An indoor, or an outdoor pool? Type 'indoor' or 'outdoor'")
            let poolType = readLine()
            if poolType == "indoor" {
                print("That will be fun!")
                points = points + 8
            } else if poolType == "outdoor" {
                print("Will the pool be heated? Type 'yes' or 'no'")
                let poolHeat = readLine()
                if poolHeat == "yes" {
                    print("That will be fun!")
                    points = points + 12
                } else {
                    print("It's October!!! It's going to be cold ❄️ ⛄️ ❄️ ")
                    points = points - 8
                }
            } else {
                print("I didn't understand your pool type!")
                points = points - 4
            }
        } else {
            print("I didn't understand your swim preference!")
            points = points - 1
        }
        
    default:
        print("Sorry, I didn't understand what you typed.")
    }
    
    print("What will your next activity be? Type 'school': if you plan to go to school; type 'work' if you plan to go to work; type 'friends' if you plan to hangout with friends; type 'study' if you plan to study; type 'dance' if you plan to go to dance; type 'sport' if plan to play a sport; type 'run' if you plan to go for a run; type 'movie' if you plan to watch a movie; type 'walk' if you plan to go for a walk; type 'swim' if you plan to swim. Type 'no more activities!' if you don't have any other plans.")
    
    activity = readLine()
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

print("You won \(points) points!")
