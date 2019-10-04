//
//  main.swift
//  Text based game
//
//  Created by Lilia Yudina on 10/1/19.
//  Copyright © 2019 Lilia Yudina. All rights reserved.
//

import Foundation
print("Start")
var gameStart = "Start"

print("How many hours do you sleep on average?")
var hoursOfSleep = Int(readLine() ?? "-1") ?? -1

switch hoursOfSleep {
case 0..<4:
    print("not enough sleep")
case 4...6:
    print("enough hours to not go crazy")
case 7...8:
    print("ideal")
default:
    print("sleepy head")
}

if 0...4 ~= hoursOfSleep {
    print("when do you go to sleep? Choose between: early, late")
    let response = readLine()
    switch response {
    case "early":
        print("Great job! You must wake up really early than. What time do you wake up? in millitary time")
    case "late":
        print("This might be the problem! What time do go to sleep? in military time")
    default:
        print("enter a valid time of sleep")
    }
    
    
    let responseTime = Int(readLine() ?? "-1") ?? -1

    switch responseTime {
    case 0...3:
        print("That's why you might not be getting enough sleep.")
    case 4...8:
        print("Good time to wake up!")
    case 8...15:
              print("You should be getting enough sleep.")
    case 16...20:
        print("Seems like you going to bed on time.")
    case 21...23:
            print("It's getting late.")
    default:
            print("Risking to not get enough sleep.")
    }

    if 5...7 ~= hoursOfSleep {
    print("How fast do you fall asleep? in minutes?")
    let fallAsleep = Int(readLine() ?? "-1") ?? -1
    switch fallAsleep {
    case 0...30:
    print("Healthy sleep pattern.")
    case 31...60:
    print("You must be thinking of something.")
    default:
    print("You are having difficulty falling asleep.")
            }
    if fallAsleep > 60 {
    print("What day of the week you usually not getting enough sleep? (type days of the week starting witha capital letter")
    let daysOfTheWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        for day in daysOfTheWeek {
                    if day == "Monday" {
                        print("\(day) is tough... don't blame you!")
                    } else if day == "Sunday" {
                        print("You should be catching on some sleep on \(day)")
                    }
                }
            }
        }

    } else if 5...7 ~= hoursOfSleep {
    print("what time do go to sleep? in militarty time .......")
    let bedTime = Int(readLine() ?? "-1") ?? -1
    if bedTime <= 21 {
        print("Good timing.")
    } else if bedTime > 21 && bedTime < 23 {
        print("It's getting late.")
    } else {
        print("Risking not get enough sleep.")
    }
}
