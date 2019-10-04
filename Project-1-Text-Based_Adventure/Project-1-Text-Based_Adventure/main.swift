//
//  main.swift
//  Project-1-Text-Based_Adventure
//
//  Created by Yuliia Engman on 10/1/19.
//  Copyright © 2019 Yuliia Engman. All rights reserved.


import Foundation


var isHappy = ""


repeat {
    print("Hello, stranger. Tell me your name.")
    let yourName = String(readLine()?.lowercased() ?? "Yuliia")

    print("""
    Nice to meet you, \(yourName)
    This is a Fortune Teller Game.
    Are you ready to know your future?
    Type "yes' if you want to know your nearest future, type "no" if you don't.
    """)

    let yourAnswer = readLine()?.lowercased()


    if yourAnswer == "no" {
    print("Ok. See you next time. Bye!") // how to break it correctly?
    } else if yourAnswer == "yes" {
        print("""
    Great! Let's start.
    Entert the year you want prediction for.
    """)
    } else {
        print("Try again.")
    }
    
    
    let yourAnswerForYear = Int(readLine() ?? "") ?? 2019

    let yearRange = 2019...2119

    if yearRange ~= yourAnswerForYear {
        let multiline = """
        Now choose month:
        1. January
        2. February
        3. March
        4. April
        5. May
        6. June
        7. July
        8. August
        9. September
        10. October
        11. November
        12. December
        """
        print(multiline)  // how to add option if the entrance is not in a range?

    } else if yourAnswerForYear < 2019 { // passes 208 answer and when to the date
      print("It is past year. Try again.")
    } else {
        print("Sorry, I don't think you will live so long. Try again for next 100 years, please.")
    }

    let yourMonth = String(readLine()?.lowercased() ?? "October")
    
    print("Enter your date e.g 1 - 31")
    let date = String(readLine()?.lowercased() ?? "1")

    switch yourMonth {
    case "1":
        print("jan")
    default:
        print("not a valid month")
    }
    
    switch date {
    case "1":
        print("You will have a great day! Are you happy with your prediction?")
    default:
        print("not a valid date")
    }
    
    print("Are you happy with your prediction?, Yes or No")
    isHappy = readLine()?.lowercased() ?? ""
} while isHappy == "no"

print("Great! See you back soon!")

//if months ~= yourMonth {
//    if yourMonth ~= months {
//    print("You chose \(yourMonth). Now last step - chose date for this month (between 1 and 31).")
//} else {
//    print("Ooops, typing error. Please, try again.")
//}

var yourAnswerForDate = Int(readLine() ?? "") ?? 4

    repeat {
        if 1...31 ~= yourAnswerForDate {

            switch yourAnswerForDate {
            case 1:
                print("""
You will have a great day!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 2:
                print("""
Be careful! Alex will questuining you today!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 3:
                print("""
Just survive untill the weekend and everything will be fine!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 4:
                print("""
Today this sunshine is showing you a new chance to achieve your cherished dream. Grab the chance, work hard and follow your dream!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 5:
                print("""
Recipe to have a nice day – Ingredients: Smile, Cheerfulness, Briskness. Preparation: Mix your day with all these ingredients of smile, cheerfulness, and briskness with equal proportion, as an end result you will have a wonderful and nice day!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 6:
                print("""
Whatever happens to your day just relax and manage to make a smile!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 7:
                print("""
The difference between a good day and a bad depends on your point of view because the problems are also opportunities. That everything will go well!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 8:
                print("""
Even the more complex goals can make it happen if every day we strive for them. The key to success is perseverance, enjoy the most of this day!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 9:
                print("""
Opportunity comes to those who quit Waiting and start Looking. Success comes to those who quit Thinking and Start Doing. Best of luck for Looking and Doing!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 10:
                print("""
Opportunity is missed by most people because it is dressed in overalls and looks like work. So, make it happen and give your best!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 11:
                print("""
You will have a good day!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 12:
                print("""
Relax! Alex will not questuining you today!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 13:
                print("""
Just survive through this month and everything will be fine!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 14:
                print("""
It’s time to start living the life you’ve imagined!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 15:
                print("""
Even the worst days have an ending, and the best days have a beginning!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 16:
                print("""
Start every day with a smile and get it over with!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 17:
                print("""
Make sure you learn something new every day!]Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 18:
                print("""
A day is a day. It’s just a measurement of time. Whether it’s a good day or a bad day is up to you. It’s all a matter of perception!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 19:
                print("""
Start your day by convincing yourself that today is going to be a wonderful day no matter what the odds are!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 20:
                print("""
The only secret behind a good day is a good attitude!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 21:
                print("""
Don’t wake up with the regret of what you couldn’t accomplish yesterday. Wake up while thinking about what you will be able to achieve today.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 22:
                print("""
The difference between ordinary and extraordinary is that little extra.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 23:
                print("""
Every day is a new deal. Keep workin’ and maybe sump’n’ll turn up.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 24:
                print("""
Leave something good in every day.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 25:
                print("""
A new day is your new chance.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 26:
                print("""
Today is a vonderful day for you!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 27:
                print("""
Relax! Everything will work for the best!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 28:
                print("""
Be careful! Happiness can meet you today!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 29:
                print("""
We don't have a great day, we make it a great day!
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 30:
                print("""
Every day is a good day to be alive, whether the sun's shining or not.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            case 31:
                print("""
You can have a Great Day, or a Lousy Day; it's totally up to you.
Are you happy with your prediction?
Answer "yes" or "no".
""")
            default:
                print("Try again!")
            }
        }
    } while true
} else {
    print("Invaid value. Try again.")
}

var youHappyOrNot = String(readLine()?.lowercased() ?? "yes")

if youHappyOrNot == "yes" {
    print("Great! See you back soon!")
} else if youHappyOrNot == "no" {
    print("Try Again for different date")
} else {
    print("Please, make a correct choice.")
}
