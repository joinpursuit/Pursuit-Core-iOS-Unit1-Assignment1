//
//  main.swift
//  ReadlineDemo
//
//  Created by Howard Chang on 9/27/19.
//  Copyright © 2019 Howard Chang. All rights reserved.
//

import Foundation

var language = ""
repeat {
    if language == "swift" {
        break
    }
    print("What programming language are you learning now?")
    let input: String = String((readLine()?.lowercased())!)
    switch input {
    case "swift":
        print("awesome")
        language = "swift"
    default:
        print("error try again")
    }
    print()
} while language != "swift"



var score = 0
var numberOfPicks = 1

repeat {
    if numberOfPicks < 0 {
        break
    } else if numberOfPicks == -1 {
        break
    }
    print("On your journey, you encounter three doors")
    print("Enter a door: Left, Middle, Right")
    let doorPicked = readLine()?.lowercased()
    print()
    switch doorPicked {
    case "left":
        print("you open the door and encounter a problem")
        print("""
what are the numbers inside var array in order?
var array = [16, 100, 3, 30]
array.sort()
""")
    let answer = String((readLine())!)
        print()
        if answer == "3, 16, 30, 100" || answer == "3,16,30,100" || answer == "3 16 30 100" {
            print("you feel more healthy")
            print("you walk through the door and follow the path")
            score += 1
        } else {
            print("you feel more sick")
            print("you walk through the door and follow the path")
            score -= 1
        }
    case "middle":
        print("you open the door and encounter a problem")
        print("""
what are the numbers inside var array in order?
var array = [16, 100, 3, 30]
array.reverse()
""")
        let answer = String((readLine())!)
        print()
        if answer == "30, 3, 100, 16" || answer == "30,3,100,16" || answer == "30 3 100 16" {
            print("you feel more healthy")
            print("you walk through the door and follow the path")
            score += 1
        } else {
            print("you feel more sick")
            print("you walk through the door and follow the path")
            score -= 1
        }
    case "right":
        print("you open the door and encounter a problem")
        print("""
what are the numbers in newArray?
var array = [16, 100, 3]
var old = [2, 3, 6]
var newArray = array + old
""")
        let answer = String((readLine()!))
        print()
        if answer == "16, 100, 3, 2, 3, 6" || answer == "16,100,3,2,3,6" || answer == "16 100 3 2 3 6" {
            print("you feel more healthy")
            print("you walk through the door and follow the path")
            score += 1
        } else {
            print("you feel more sick")
            print("you walk through the door and follow the path")
            score -= 1
        }
    default:
        print("Enter a door")
        numberOfPicks += 1
        }
    numberOfPicks -= 1
    print()
} while numberOfPicks > 0

print("""
You meet a troll along your journey and it blocks you way and asks you what does this  return?  merge([[1,3],[2,6],[8,10],[15,18]])

func merge(_ intervals: [[Int]]) -> [[Int]] {
    let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] })
    var result = [[Int]]()
    
    for interval in sortedIntervals {
        if result.isEmpty {
            result.append(interval)
            continue
        }
        let count = result.count
        if result[count - 1][1] < interval[0] {
            result.append(interval)
            continue
        }
        result[count - 1][1] = max(result[count - 1][1], interval[1])
        print(max(result[count - 1][1], interval[1]))
    }
    return 0
    }
""")

var trollAnswer = readLine()
var intTrollAnswer = Int(trollAnswer!) ?? -1
print()
if intTrollAnswer == 0 {
    print("The troll grunts and walks away")
    print("you feel more healthy")
    print()
    score += 1
} else {
    print("The troll laughs and walks away")
    print("you feel more sick")
    print()
    score -= 1
}

print("After the troll walks away, you continue on your journey and encounter an API request. Do you accept it? yes or no")
var apiAnswer = String((readLine())!)
print()
switch apiAnswer {
case "yes":
    print("API request smiles and asks you for pokemon information")
    print("""
what kind of async do you use to obtain this information? Choose a, b, c or d
a. network
b. main
c. automatic
d. none of the above
""")
    let answer = String((readLine())!)
    if answer == "b" {
        print("API request smiles on you")
        print("you feel stronger")
        score += 2
    } else {
        print("API request beats you up with errors")
        print("you are not bloodied")
        score -= 3
    }
case "no":
    print("API request starts yelling and you immediately run away")
default:
    print("API request gets mad and beats you up with errors")
    print("you are now bloodied")
    score -= 3
}
print()
print("As you follow the path, you encounter a bug")
print("do you fight with it or run away? choose fight or run")
let bugAnswer = String((readLine())!)
print()
switch bugAnswer {
case "fight":
    print("you stare at it and it stares back")
    print("you quickly squish it with your hand")
    print("you feel proud and accomplished")
    score += 1
case "run":
    print("you run away in fear yelling for your life")
default:
    print("the bug bites you and you cry like a B****")
    print("you feel sad")
    score -= 1
}
print()
print("Enter any key to continue")
var any = readLine()
let random = Int.random(in: 1...10)
if random % 2 == 0 {
    print("you feel good as the sun shines on you")
    score += 1
} else {
    print("you trip on a rock and fall")
    score -= 1
}
print()
var picks = [Int]()

print("You see a mysterious looking old lady on the side on the road")
print("she approaches you")
print("she says pick 5 positive numbers")
print()
print("Your first number is:")
let first = Int((readLine())!) ?? -1
picks.append(first)
print("Your second number is:")
let second = Int((readLine())!) ?? -1
picks.append(second)
print("Your third number is:")
let third = Int((readLine())!) ?? -1
picks.append(third)
print("Your fourth number is:")
let fourth = Int((readLine())!) ?? -1
picks.append(fourth)
print("Your fifth number is:")
let fifth = Int((readLine())!) ?? -1
picks.append(fifth)
print()
if picks.contains(-1) {
    print("are you an idiot?, can't even follow directions, kids these days")
    print("she smacks your head with her cane")
    print("you try to strike back but the old lady has dissapeared")
    print("You feel sad and continue on..")
    score -= 1
} else {
    print("The mysterious old lady says lets see if you are lucky")
    print("The mysterious old lady then sticks her hands up and chants huga huga huga")
    print("The sky turns green")
    for each in picks {
        if each % 2 == 0 {
            print("you feel stronger")
            score += 1
        } else {
            print("you feel weaker")
            score += 1
        }
    }
    print("The sky returns to normal and the mysterious old lady is no where to be seen")
}
print()
print("You see a sign showing the way to a town called Pair Progamming and follow it")
print("At the entrance of the town, you see an odd man in a tall hat")
print("The tall hat man approaches you and asks if you want to test your luck. You reply ok")
print("The tall hat man says he will pick a card from 1 to 10 at random and you will pick a number from 1 to 10")
if let pick = Int(readLine()!) {
    if pick == random {
        print("Congratulations you win this exceptional health pill")
        print("You consume the health pill and feel very powerful")
        score += 10
    } else {
        print("aww too bad")
    }
}
print()
print("The tall hat man then asks you to choose a color")
let color = String(readLine()!)
var toy:(shape: String, color: String) = ("star", "\(color)")
print("He then gives you a \(color) star shaped toy and says enjoy the town new guy")
print("You thank him and walk into town")
print()
print("While walking around town, a man in a cloak with his face hidden approaches you and grabs your hand.")
if score > 6 {
    print("The man examines your hand and says hmm you are very strong")
    print("He then creates a portal and says here go in there to paradise")
    print("He grabs you and tosses you into the portal")
    print("Congratulations you win!")
    } else {
    print("The man examines your hand and says hmm you seem weak")
    print("I see you have a \(toy) toy. give it to me or die (Choose give or refuse)")
    let choice = String(readLine()!)
    if choice == "give" {
        print("The man then takes out a dagger and stabs you to death")
        print("You are dead, Game Over")
    } else {
        print("The man then takes out a axe and cuts you in half")
        print("You are dead, Game Over")
    }
}

