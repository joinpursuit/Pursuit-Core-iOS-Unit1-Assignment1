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
    
    let movies = ["Step B. brothers", "Wedding Crashers", "Hangover", "Stuber"]
    
    for movie in movies {
        print(movie)
        sleep(2)
    }
case "B": // Sad
    print("These are recommended movies to watch 🎬")
 let movies = ["The theory of everything", "The Blind Side", "The Pursuit of Happiness", "Hidden Figures"]
    for movie in movies {
    print(movie)
    sleep(2)
    }
case "C": //Romantic
    print("These are recommended movies to watch 🎬")
  let movies = ["Time travelers wife", "50 first dates", "The Note Book", "P.S. I love You"]
    for movie in movies {
        print(movie)
        sleep(2)
    }
    
case "D": // Angry
    print("These are recommended movies to watch 🎬")

    let movies = ["School of Rock", "How to lose a guy in 10 days", "Inside Out", "Cinderella Story"]
    for movie in movies {
         print(movie)
         sleep(2)
     }
    
case "E": // intrigue
    print("These are recommended movies to watch 🎬")
  
    let movies = ["What the Health", "How America was Built", "Surviving never land", "Abducted in Plain Sight"]
       for movie in movies {
            print(movie)
            sleep(2)
        }
    
default:
    print("I hope you enjoyed the selection 😊")
}

print("How satisfied where you with the selected movies according to your mood ")
print("1...4")
print("1 really bad it sucked, 2 boring never again, 3 Ehh it was okay could have been better  4 it was great")
var satisfactory = readLine()


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
    } else if answerChoice == "no" {
        print("I am sorry I was no help 😔 maybe next time !" )
    } else {
        // code here
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

