//
//  main.swift
//  Project 1 (Version 3)
//
//  Created by Yuliia Engman on 10/4/19.
//  Copyright © 2019 Yuliia Engman. All rights reserved.
//

import Foundation

print("Hello, stranger. Tell me your name.")
let yourName = String(readLine()?.lowercased() ?? "Yuliia")


var yourAnswer = ""

print("""
    Nice to meet you, \(yourName).
    This is a Fortune Teller Game.
    Are you ready to know your future?
    Type "yes" if you want to know your nearest future, type "no" if you don't.
    """)

repeat {
    yourAnswer = readLine()?.lowercased() ?? ""
    
    if yourAnswer == "no" {
        print("Ok. See you next time. Bye!")
        break
    } else if yourAnswer == "yes" {
        print("""
        Great! Let's start.
        Entert the year you want prediction for.
        """)
    } else {
        print("""
    I don't understand you. Try again, please.
    Are you ready to know your future?
    Type "yes" if you want to know your nearest future, type "no" if you don't.
    """)
    }
} while yourAnswer != "yes"


if yourAnswer == "yes" {
    var yourAnswerForYear = 0
    repeat {
        yourAnswerForYear = Int(readLine() ?? "") ?? 0
        
        let yearRange = 2019...2119
        
        if yourAnswerForYear == 0 {
            print("Your answer is 0. Choose a valid year.")
        } else if yearRange ~= yourAnswerForYear {
            print("You chose \(yourAnswerForYear). Now type the month you want prediction for.")
        } else if yourAnswerForYear < 2019 { // passes 208 answer and when to the date
            print("It is past year. Try again.")
        } else {
            print("Sorry, I don't think you will live so long. Try again for next 100 years, please.")
        }
    } while !(2019...2119).contains(yourAnswerForYear)
    
    let months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
    
    var yourMonth = readLine()?.lowercased() ?? ""
    
    monthloop: repeat {
        switch yourMonth {
        case "january":
            print("Choose your date of the month e.g. 1 - 31")
        case "february":
            print("Choose your date of the month e.g. 1 - 31")
        case "march":
            print("Choose your date of the month e.g. 1 - 31")
        case "april":
            print("Choose your date of the month e.g. 1 - 31")
        case "may":
            print("Choose your date of the month e.g. 1 - 31")
        case "june":
            print("Choose your date of the month e.g. 1 - 31")
        case "july":
            print("Choose your date of the month e.g. 1 - 31")
        case "august":
            print("Choose your date of the month e.g. 1 - 31")
        case "september":
            print("Choose your date of the month e.g. 1 - 31")
        case "october":
            print("Choose your date of the month e.g. 1 - 31")
        case "november":
            print("Choose your date of the month e.g. 1 - 31")
        case "december":
            print("Choose your date of the month e.g. 1 - 31")
        default:
            print("I did not understand your answer. Please type the month you want prediction for.")
            yourMonth = readLine()?.lowercased() ?? ""
            
            if months.contains(yourMonth) {
                print("Choose your date of the month e.g. 1 - 31")
                continue monthloop
            }
            
        }
        
    } while !months.contains(yourMonth)
    
    var yourAnswerForDate = 0
    
    repeat {
        
        yourAnswerForDate = Int(readLine() ?? "") ?? 4
        
        switch yourAnswerForDate {
        case 1:
            print("You will have a great day!")
        case 2:
            print("Be careful! Alex will questuining you today!")
        case 3:
            print("Just survive untill the weekend and everything will be fine!")
        case 4:
            print("""
        Today this sunshine is showing you a new chance to achieve your cherished dream. Grab the chance, work hard and follow your dream!
        """)
        case 5:
            print("""
        Recipe to have a nice day – Ingredients: Smile, Cheerfulness, Briskness. Preparation: Mix your day with all these ingredients of smile, cheerfulness, and briskness with equal proportion, as an end result you will have a wonderful and nice day!
        """)
        case 6:
            print("Whatever happens to your day just relax and manage to make a smile!")
        case 7:
            print("""
        The difference between a good day and a bad depends on your point of view because the problems are also opportunities. That everything will go well!
        """)
        case 8:
            print("""
        Even the more complex goals can make it happen if every day we strive for them. The key to success is perseverance, enjoy the most of this day!
        """)
        case 9:
            print("""
        Opportunity comes to those who quit Waiting and start Looking. Success comes to those who quit Thinking and Start Doing. Best of luck for Looking and Doing!
        """)
        case 10:
            print("""
        Opportunity is missed by most people because it is dressed in overalls and looks like work. So, make it happen and give your best!
        """)
        case 11:
            print("You will have a good day!")
        case 12:
            print("Relax! Alex will not questuining you today!")
        case 13:
            print("Just survive through this month and everything will be fine!")
        case 14:
            print("It’s time to start living the life you’ve imagined!")
        case 15:
            print("Even the worst days have an ending, and the best days have a beginning!")
        case 16:
            print("Start every day with a smile and get it over with!")
        case 17:
            print("""
        Make sure you learn something new every day!]Are you happy with your prediction?
        """)
        case 18:
            print("""
        A day is a day. It’s just a measurement of time. Whether it’s a good day or a bad day is up to you. It’s all a matter of perception!
        """)
        case 19:
            print("""
        Start your day by convincing yourself that today is going to be a wonderful day no matter what the odds are!
        """)
        case 20:
            print("The only secret behind a good day is a good attitude!")
        case 21:
            print("""
        Don’t wake up with the regret of what you couldn’t accomplish yesterday. Wake up while thinking about what you will be able to achieve today.
        """)
        case 22:
            print("The difference between ordinary and extraordinary is that little extra.")
        case 23:
            print("Every day is a new deal. Keep workin’ and maybe sump’n’ll turn up.")
        case 24:
            print("Leave something good in every day.")
        case 25:
            print("A new day is your new chance.")
        case 26:
            print("Today is a vonderful day for you!")
        case 27:
            print("Relax! Everything will work for the best!")
        case 28:
            print("Be careful! Happiness can meet you today!")
        case 29:
            print("We don't have a great day, we make it a great day!")
        case 30:
            print("Every day is a good day to be alive, whether the sun's shining or not.")
        case 31:
            print("You can have a Great Day, or a Lousy Day; it's totally up to you.")
        default:
            print("Invalid value. Try again!")
        }
        sleep(2)
    } while !(1...31).contains(yourAnswerForDate)
    
}

print("Thank you for visiting our adventure! See you soon!")


