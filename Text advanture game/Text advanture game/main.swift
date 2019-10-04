//
//  main.swift
//  Text advanture game
//
//  Created by Oscar Victoria Gonzalez  on 10/1/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

let transportation1 = "4 train"
let transportation2 = "2 train"

let message = ("You've landed your first job interview as a software developer, you need to get there as soon as possible and your only form of transportation is the train. You have two choices. The \"4 train\" or the \"2 train\". Choose wisely.")

print(message)



let transportation  = readLine()!

if transportation == transportation2 {
    print("You chose to take the \(transportation2), however due to an accident halfway through your commute, your train stops and remains in the same spot for 2 hours. You dont make it to your job interview")
}


if transportation == transportation1 {
 print("You've chosen to take the \(transportation1). Now you're on your way and suddently the train stops. The conductor says the train will skip your stop due to maintance issues. You have less than 30 minutes to get to your destinantion and the closest stop is 10 minutes away from your destination. You can choose to get off right now and try to get on an uber or you can stay and walk to your destination from the nearest stop. Will you stay or get off?")
}


    







let choice = readLine()!

    if choice == "stay" {
        print("You've chosen to stay in the train, as the train aproaches the stop you realize you there's a protest going on today and several streets are closed making your commute even more complicated. With only 10 minutes remaining before you have to be in the building, you see a city bike nearby. Do you bike or run to your interview?")
    
    } else if choice == "get off" {
        print("Your uber gets stuck in traffic due to a protest going on earlier in the day and you arrived 20 minutes late to your job interview. You don't get the job.")
}

let choice2 = readLine()!

if choice2 == "run" {
    print("You've chosen to run, around halfway through you realize you're covered in sweat and with only 5 minutes left before you have to check in you step on a puddle and damage your attire. When you arrive to your destinantion you are told to either change or go home. You try to explain what happend and after hearing your story they let you in and proceed with your interview")
    
    
} else if choice2 == "bike" {
    print("You've chosen to get on a citi bike. As you cruise by you realize the protest eneded about 12 minutes ago and have the road wide open for you to get to your destination safely with no traffic near by. You arrive to your destinantion on time but when asked to show your id, you realize you must of dropped it halfway while you were on the bike. You are denied entrance and ultimatly loose on the job opportunity.")
    
}








    

    
    























//print("Welcome to the portal , please enter you age:")
//
//print()
//
//var userAge = Int(readLine()!)!
//
//print()
//
//if userAge > 18 {
//  print("Welcome to the portal")
//} else if userAge < 17 {
//  print("Sorry")
//} else {
//  print("INVALID AGE")
//}
//



    

























