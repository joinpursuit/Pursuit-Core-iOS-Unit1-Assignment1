//
//  main.swift
//  Riddle-Me-Not(TBA)
//
//  Created by David Lin on 10/3/19.
//  Copyright © 2019 David Lin. All rights reserved.
//

import Foundation

print( "Welcome to Riddle Me Not. Do you have the wits to overcome the journey ahead? Challenge yourself mentally and complete the game (but be careful because not everything is as it seems...)!")
print("🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️🎭🤹🏻‍♂️ ")
print(" ")
print("Are you sure you want to play a game you will never win?")

print(" ")

var onlyAnswer: String = "yes"
var userResponse = readLine()!.lowercased()
print()

repeat {
    if userResponse == onlyAnswer {
        print(" ")
    } else {
    print()
      print("Hint: Only \"yes\" will get you in!")
        userResponse = readLine()!.lowercased()
    }
} while userResponse != onlyAnswer

//WARNING - IQ ENTER

print("This game is mentally draining. Valid IQ is required in order to enter")
print("Please enter you IQ below before starting")

requiredIQ = 100

var enteredPlayerIQ = readLine() ?? "90"
var playerIQ = Int(enteredPlayerIQ) ?? 90       //NEEDS EDITING - infinite loop, undefinied required

repeat {
switch playerIQ {
case 0..<90:
    print("Pay attention in class and study harder 👨🏼‍🏫")
    enteredPlayerIQ = readLine() ?? "90"
    playerIQ = Int(enteredPlayerIQ)!
case 150...:
    print("Please don't lie")
    enteredPlayerIQ = readLine() ?? "90"
    playerIQ = Int(enteredPlayerIQ)!
default:
    print("Proceed to question one!")
    break
    }
} while playerIQ != requiredIQ


print(" ")

// QUESTION 1:
print("Johnny’s mother had three children. The first child was named April. The second child was named May. What was the third child’s name?")
var question1Ans = "johnny"
var userResponseQ1 = readLine()!.lowercased()   //unwrapping readLine with !
print()

repeat {
    if userResponseQ1 == question1Ans{
        print("Not bad for your first question...")
    } else if userResponseQ1 == "june".lowercased() {
        print("Not that easy ;)")
        userResponseQ1 = readLine()!      // need to apply same unwrapping because using the same variable
    } else {
      print("Hint: The answer is in the question")
        userResponseQ1 = readLine()!.lowercased()     // Johnny
    }
} while userResponseQ1 != question1Ans   // Johnny

print(" ")
//QUESTION 2:
print("A small number of cards has been lost from a complete deck (52). If I deal among four people, 3 cards remain. If I deal among three people, 2 remain and if I deal among five people, 2 cards remain. How many cards are there?")

var question2Ans = 47
let askForHelp:Int = 0

var userResponseQ2 = readLine() ?? "9"
var userResponseInput = Int(userResponseQ2) ?? 9


repeat {
switch userResponseInput {
    case 47:
    print("You're pretty smart 🤓")
    case 0:
    print("Forty Seven 🙊")
    userResponseQ2 = readLine()!
    userResponseInput = Int(userResponseQ2)!
default:
    print("Try again! Type \"0\" for a hint!")
    userResponseQ2 = readLine() ?? "0"
    userResponseInput = Int(userResponseQ2)!
    }
} while userResponseInput != question2Ans // if answer is not 47 -- repeat

//QUESTION 3:
print(" ")
print("You throw away the outside and cook the inside. Then you eat the outside and throw away the inside. What did you eat?") //Answer: corn

var question3Ans = "corn".lowercased()
var userResponseQ3 = readLine()
var rightAns3 = false

repeat {
    if userResponseQ3 == question3Ans {
        print("🌽 You got it!")
        rightAns3 = true
    } else {
        print("Hint: 🌽")
        userResponseQ3 = readLine()
        rightAns3 = false
    }
} while rightAns3 == false


//QUESTION 4
print(" ")
print("Who makes it, has no need of it. Who buys it, has no use for it. Who uses it can neither see nor feel it. What is it?")

var question4Ans = "coffin".lowercased()
var userResponseQ4 = readLine()
var rightAns4 = false

repeat {
    if userResponseQ4 == question4Ans {
        print("👍🏽. You're almost there!")
        rightAns4 = true
    } else {
        print("Hint: You're dead wrong ⚰️")
        userResponseQ4 = readLine()
        rightAns4 = false
    }
} while rightAns4 == false
print(" ")

//QUESTION 5
print("What tastes better than it smells?")

var question5Ans = "tongue".lowercased()
var userResponseQ5 = readLine()
var rightAns5 = false

repeat {
    if userResponseQ5 == question5Ans {
        print("Your IQ has already gotten higher! 🧠")
        rightAns5 = true
    } else {
        print("Hint: 😼 got your 👅?")
        userResponseQ5 = readLine()
        rightAns5 = false
    }
} while rightAns5 == false
print(" ")

//QUESTION 6

print("What one thing can you never eat before breakfast and after dinner?")
print("🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯🥓🍳🥞🥯")


let question6AnsTup = (lunch: "lunch", dinner: "dinner")
var userResponseQ6 = readLine()
var rightAns6 = false

repeat {
    if userResponseQ6 == question6AnsTup.lunch {
        print("Good thing you didnt forget about lunch 😋")
        rightAns6 = true
    } else {
        print("Hint: You eat this everyday around noon ⏰")
        userResponseQ6 = readLine()
        rightAns6 = false
    }
} while rightAns6 == false

print(" ")


//QUESTION 7:
print("I am your mother's brother's only brother in law. Who am I?")

let Question7Ans = "father"
var userResponseQ7 = readLine()!.lowercased()
var rightAns7 = false

repeat {
    if userResponseQ7 == Question7Ans {
        print("👨🏻 It's your old man!")
        rightAns7 = true
    } else if userResponseQ7 == "dad" {
        print("👨🏻 It's your old man!")
        rightAns7 = true
    } else {
        print("Hint: This person is also you grandfather's son, cousin's uncle, and sister's FATHER")
        userResponseQ7 = readLine()!
        rightAns7 = false
    }
} while rightAns7 == false
print(" ")

//QUESTION 8:
print("You know 2 + 2 comes to the same as 2 x 2. Now find a set of three different whole numbers whose sum is equal to their total when multiplied.")
print("Please enter the three values without empty spaces")

var userResponseQ8 = readLine() ?? "123"
var userResponseInputQ8 = Int(userResponseQ8) ?? 123
var rightAnswer8 = false

repeat{
for num in 0...999 {                        //NEED FIXIN' ...broken

    if num == 123 {
        print("This game was too easy 🥴")
        rightAnswer8 = true
    } else {
        print("Hint: Try again. Please enter all three numbers without spaces")
        userResponseQ8 = readLine() ?? "123"
        rightAnswer8 = false
    }
}
} while rightAnswer8 == false

var newPlayerIQ = playerIQ + 20
print("Thank you for playing Riddle Me Not! Your IQ is now \(newPlayerIQ)!")
