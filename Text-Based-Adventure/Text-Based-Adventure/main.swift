//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Margiett Gil on 10/3/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import Foundation

print("Let's guess what genera movie you should watch today")
print("Whats your name ?")
var name = readLine() ?? "guest"
print(" Hi \(name) how are you feeling today?")
print("A. Happy 😃 B. Sad 😞 C. Romantic 🥰 D. Angry 😡 E. intrigue 🧐")
var introFeeling = readLine()

switch introFeeling {
case "A": // Happy
    print("These are recommended movies to watch 🎬")
    
    //while: String("A"){
    //    print("sleep for 2 seconds.")
    //    sleep(2) // working
    //}
    print("A. Step B. brothers C. Wedding Crashers D. Hangover E. Stuber")
    
case "B": // Sad
    print("These are recommended movies to watch 🎬")
    //    while: String("B"){
    //        print("sleep for 2 seconds.")
    //        sleep(2) // working
    //    }
    print("A. The theory of everything B. The Blind Side C. The Pursuit of Happiness D. Hidden Figures ")
    
    
case "C": //Romantic
    print("These are recommended movies to watch 🎬")
    //    while: String("C"){
    //        print("sleep for 2 seconds.")
    //        sleep(2) // working
    //    }
    print("A. Time travelers wife C. 50 first dates D. note book E. P.S. I love You")
    
case "D": // Angry
    print("These are recommended movies to watch 🎬")
    //    while: String("D"){
    //        print("sleep for 2 seconds.")
    //        sleep(2) // working
    //    }
    print("A. School of Rock B. how to lose a guy in 10 days C. inside out D.  A Cinderella Story")
    
case "E": // intrigue
    print("These are recommended movies to watch 🎬")
    //    while: String("E"){
    //        print("sleep for 2 seconds.")
    //        sleep(2) // working
    //    }
    print("A. What the Health B. How America was Built C. Surviving never land D. Abducted in Plain Sight")
    
default:
    print("I hope you enjoyed the selection 😊")
}


var satisfactory = readLine()
print("How satisfied where you with the selected movies according to your mood ")
print("1...4")
print("1 really bad it sucked, 2 boring never again, 3 Ehh it was okay could have been better  4 it was great")

var comedy = "A"
var romance = "B"
var horror = "C"
var documentaries = "D"
var action = "E"


switch satisfactory {
case "1":
    print("Would you like more suggestions, yes or no? ")
    let answerChoice = readLine() ?? ""
    if answerChoice == "yes" {
        print("What are you favorite genera")
        print("A. Comedy B. romance C. Horror D. Documentaries E. action")
        let genreChoice = readLine() ?? ""
        switch genreChoice {
        case "A":
            print("recommend movies are:")
            print("- step brothers - Wedding Crashers - Hangover - Stuber")
        case "B":
            print("recommended movies are:")
            print("- Time travelers wife - 50 first dates - The Note Book - P.S. I love You")
        case "C":
            print("recommended movies are:")
            print("- The Wrong Turn, - it , - The Nun , - Pet Sematary")
        case "D":
            print("recommended movies are:")
            print(" A. What the Health B. How America was Built C. Surviving never land  D. Abducted in Plain Sight ")
        case "E":
            print("recommended movies are:")
            print(" - John Wick, - Rambo, Last Blood - Captain Marvel - Avenger Endgame")
        default:
            print()
        }
    }
case "2":
    print("would you like more suggestions?")
case "3":
    print("would you like more suggestions?")
case "4":
    print("I am glad you enjoyed the movie!!")
default:
    print()
}

