//
//  main.swift
//  Text Based Adventure
//
//  Created by Aaron Cabreja on 10/10/18.
//  Copyright © 2018 Aaron Cabreja. All rights reserved.
//

import Foundation

print("Your adventure begins! You are walking down a long road. It starts to split in two.  You may go \"Left\" or \"Right\" or \"Turn Around\"")

var LeftOrRight = readLine()?.lowercased()
var magic = ""
var stoneShatters = false
var elementChosen = false
switch LeftOrRight {
case "left":
    print("You see a cluster of Dragon Stones. How many do you activate?")
    let stoneNum = readLine()!
    let stoneNumAsInt = Int(stoneNum)!
    for currentStone in 1...stoneNumAsInt {
        print("You use your magic to activate \(currentStone) Stones")
        if currentStone >= 7 {
            print("It was a trap!  The Stones shatter")
            stoneShatters = true
        }
    }
    if !stoneShatters {
        print("Congrats!  You made it out with \(stoneNumAsInt) Dragon Stones!")
    }
    
case "right":
    print("You are practical in your decisions and choose to go right!")

default:
    print("You turn around and discover to your horror, an Ogre appears! Luckily, you are gifted with magic. Choose your element!")
    elementChosen = true
    magic = readLine()!
    
    }

if magic != "" {
    print("Surviving your first battle with a strange creature is no small feat! You can now use \(magic) against your enemies.")
}
if stoneShatters {
    print("Unfortunatley dragon stones cannot be activated in high quantities. Don't activate so many stones next time!")
}

print("You wander down a forest path. A mysterious traveler appears. Would you like to speak to them? \"Yes\" or \"No\"")

if let yesOrNo = readLine()?.lowercased(){
switch yesOrNo {
case "yes":
    if elementChosen {
            print("You choose to talk to the traveler. He gives you advice on how to use your element. He says \"You have been gifted the \(magic) element. It is STRONG against ALL manner of opponents. Use it carefully young one.")
    } else {
        print("I see within you an element. Search within your spirit, and say your element!")
    }
    
default :
    if elementChosen {
        print("You choose not to talk to the traveler. They are foul breathed and unsightly.")
    } else {
    print("You choose not to talk to the traveler and continue on your journey. You realize you have yet to activate your element, and shout it at the top of your lungs. State your elemnt!")

}
}
while elementChosen != true {
if let choice = readLine()?.lowercased(){
    print("You have been gifted the \(choice) element! A wonderful element indeed!")
    elementChosen = true

    }
}
print("Would you like to continue on your quest?")


if let yesOrNo = readLine()?.lowercased(){
    switch yesOrNo {
    case "yes":
            print("As you walk down your path, infront of you appears a magic box. It holds a rare treasure. Turn the key lock any amount of times between 1 and 10.")
    
    default :
        print("You begin to turn back on your way home, when suddenly, you fall into a pit! Infront of you appears a magic box. It holds a rare treasure. Turn the key lock any amount of times between 1 and 10.")
        
}

}

}

var keyTurns = readLine()!
var keyTurnsAsInt = Int(keyTurns)!
for currentTurns in 1...keyTurnsAsInt {
    print ("The key lock has been turned \(currentTurns) time/s.")
}
while keyTurnsAsInt < 10{
    if (keyTurnsAsInt < 10) {
        print ("keep turning")
        keyTurns = readLine()!
        keyTurnsAsInt += Int(keyTurns)!
        for currentTurns in 1...keyTurnsAsInt {
            print ("The key lock has been turned \(currentTurns) time/s.")
        }
    }
}
if keyTurnsAsInt % 2 == 0 {
    print ("The magic box opens revealing the \"Staff of Wisdom\"")
} else {
    print ("The magic box folds in on itself releasing a black hole in the immediate vacinity. Thankfully you are a fictional character immune to the forces of science. You drag the \"Staff of Wisdom\" from the depths of the Abyss")
}

print("Please print your first name in order to make sure you are worthy of the \"Staff of Wisdom\".")

var firstName = readLine()!
print("I want to be sure you are the chosen one. Please print your last name now.")

var lastName = readLine()!

var fullName = (firstName, lastName)
var nameChosen = true

if nameChosen == true {
    print("Congratulations \(fullName), you are worthy of the \"Staff of Wisdom\".")
} else{
    print("Name not chosen!")
}

print("You've made it this far on our wonderful adventure! It is time for a gift! You will either recieve a Gold, Silver, Bronze or Blue Token. Would you like to partake in this treasure? \"Yes\" or \"No\"")

let myArray = ["Gold", "Silver", "Bronze", "Blue"]


if let yesOrNo = readLine()?.lowercased(){
    switch yesOrNo {
    case "yes":
        if let randomElement = myArray.randomElement(){
            print("You have been given the \(randomElement) Token!")
        } else {
            print("nothing")
        
}
    default:
    print("You choose not to be given a token. How sad!")
}
}

print("Unfortunately our time is coming to a close on this adventure. But we would like some feedback on your experience. Would you like to evaluate our game? \"Yes\" or \"No\"")

if let yesOrNo = readLine()?.lowercased(){
    switch yesOrNo {
    case "yes":
        print("Please rate your experience from 1 to 10. Thank you!")
        let number = readLine()!
        let currentNumber = Int(number)!

            if currentNumber >= 7 {
                print("We are excited to hear you had a great time! Thank you for playing!")
} else if currentNumber <= 6 {
    print("We are sorry to hear you didn't enjoy the game. We will take this feedback into consideration!")
}
    default:
    print("It's to bad you wont evaluate the game. But please play again any time you'd like! Thank you!")
}
}
