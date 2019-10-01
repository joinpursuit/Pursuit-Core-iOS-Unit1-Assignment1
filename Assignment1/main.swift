//
//  main.swift
//  Assignment1
//
//  Created by Ahad Islam on 10/1/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import Foundation

print("Hi, welcome to my game.  It's nice to meet you.")
print("Let's start off by having you type your first name.")

var playerInfo = (name: "", age: Int()) //tuple
playerInfo.name = readLine() ?? ""

print("Thanks, \(playerInfo.name).  Type your age as well. [in numerals]")
playerInfo.age = Int(readLine() ?? "") ?? -1
switch playerInfo.age {
case 22...42:
    print("Wow you're \(playerInfo.age)? You're old,")
default:
    print("Wait you'e \(playerInfo.age)? How'd you get in here?")
}

print("Alright, you're all set.  Enjoy the game.")
print()
print("You're an office worker at a big US city and after a LONG morning you're ready to go for lunch.")
print("Usually when you leave for lunch you either go grab pizza or a burger, what do you think you're going to get today?")
print("[you can type either pizza or burger... or try something else!]")

let foodChoice = readLine() ?? ""
switch foodChoice {
case "burger":
    print("Nice choice, personally I love a good sandwich and I know you're going to enjoy your food today.")
    print("When you walk to the burger joint you find it closed! To your dismay, you decide to go grab pizza instead.")
    fallthrough
default:
    print("\(foodChoice) was it? Didn't hear that right... so... pizza right? Yeah totally, you want pizza.")
}
print("You decide to hit up Artichoke Basille's.  You've been going there for over five years and you've never even considered any other pizzeria since then.  They're just that good.  Like.  Really good.")
print("You've decided on two slices of pizza; and you usally get a single topping.  You could get more but you're kinda weird. Which topping do you want?.. (your options are:")
let pizzaToppings = ["Mushrooms", "Onions", "Bacon", "Pepperoni", "Watermelon", "Buffalo Chicken"]
for toppings in pizzaToppings {
    print (toppings, terminator: ", ")
}
print()
let toppingsChoice = readLine() ?? ""
if toppingsChoice == pizzaToppings[0] || toppingsChoice == pizzaToppings[1] {
    print("Wow you get \(toppingsChoice) too? They're personally my favorite.")
} else if toppingsChoice == pizzaToppings[2] || toppingsChoice == pizzaToppings[3] {
    print("\(toppingsChoice)? Meat lover I see.")
} else {
    print("ew. who gets \(toppingsChoice)?")
}

print("Anyways, after you enjoyed your slice that had \(toppingsChoice.lowercased()) on it you decide you still have time to do something else.")
print("Outside of the pizzeria you see a park to your left and an arcade to your right")
print("[choose left or right..]")

let leftOrRight = readLine() ?? ""
var leftOrRightPath : Bool = true
var parkRoute = true

switch leftOrRight {
case "left":
    print("You decide to take a walk in the park.  Its pretty nice out, and then you realize 'Wow, I haven't been out in awhile.'  Which is kind of weird because you swear you had to get out of the house to get to work... wait.  When did you leave the house?")
default:
    leftOrRightPath = false
    print("Well I'm going to assume you said you totally wanted to go to the arcade.")
    print("The arcade has plenty of cabinets; but most of them are kind of broken and kinda trashy; but you see four of them still in mint condition.")
}

var spentTooMuchTime : Bool = false
var oopsYoureLate = false

if leftOrRightPath {
    print("Oops! Taking in all that scenery made you realize you're gonna be late to work.  You need to run, how far do you wanna run?")
    print("[type an integer]..")
    var runMiles = Int(readLine() ?? "") ?? -1
    var milesRan = 0
    var steps = 0
    while runMiles > 0 {
        runMiles -= 1
        milesRan += 1
        steps += 2000
        if steps >= 5000 {
            print("Yikes! Unfortunately you're out of shape, you can only walk the rest of the \(runMiles) meters back.")
            print("You come back to the office super late, boss is angry.  Now you're known as the dude who comes late after lunch.  This sucks.")
            print("END ROUTE")
            parkRoute = false
            oopsYoureLate = true
            break
        }
    }
    if steps < 5000 {
        print("Awesome.  You managed to run the whole \(milesRan) meters.")
    }
} else {
    parkRoute = false
    let arcadeGames = ["Gradius", "Fishing", "Sonic", "Street Fighter"]
    print("The games you can play are...")
    for game in arcadeGames {
        print(game, terminator: ", ")
    }
    print()
    print("[You can type 1, 2, 3, 4 this time to choose what game you want to play.]")
    let gamesChoice = Int(readLine() ?? "") ?? -1
    switch gamesChoice {
    case 1:
        print("You try to play Gradius, back when you were a kid you realized you suck at this game pretty hard, but maybe this'll be different!")
        print("Nevermind. All those years at sucking at the game, and ya still suck.")
        spentTooMuchTime = true
    case 2:
        print("You decide on fishing... seriously?  Are you really going to spend your hard earned quarters on a virtual game of fishing? Whatever, go ahead.  See if I care.")
        spentTooMuchTime = true
    case 3:
        print("Sonic? OK, pretty normal to play Sonic.  I think.")
        spentTooMuchTime = false
    case 4:
        print("You decide to show this arcade who's the boss.  You've had twelve years of your older siblings just beating you in this game AND in real life.  Its time to show everyone whos boss.  Except, no one else is here.  Just you.  By the way you get your ass handed by the AI controlled character.  Apologies 😢")
        spentTooMuchTime = false
    default:
        print()
    }
}

if parkRoute {
    print("Nice, you got to work pretty fast.  You head up to your office and you get ready for work.")
    print("After a few hours you head out, but you realize you're missing your keys.  You panic, knowing that you'd never just simply lose your keys.  You mentally retrace your steps and the one place you can think about is... the park.")
    print("You head to the park and you decide to look anywhere you can, you decide on whether to look through the bushes near the bench you sat on or the pond you strolled through.")
    print("type bush or pond..")
    
    let bushOrPond = readLine() ?? ""
    if bushOrPond == "bush" {
        print("You check the bushes.  But you can't seem to find anything there.")
    } else {
        print("You check the pond, but there's nothing there.")
    }
    
    print("After going through the park you just can't seem to find your keys.  Frustrated and perturbed.  You sit down and take in the scenery again to avoid feeling like crap.")
    print("Suddenly you see a glowing light in the pond, and you see water sweeping away from the center of the pond.")
    print("The glowing light starts to enevelop you..")
    print("END ROUTE")
} else if spentTooMuchTime == true {
    print("Wow, you spent so much time at the arcade playing you forgot about the time.")
    print("You're now \(playerInfo.age + 1) years old.")
    print("You decide to come out and realize that its too late, everyone is gone.  It hasn't been 1 year, its been hundreds.")
    print("END ROUTE")
} else if spentTooMuchTime == false && oopsYoureLate == false {
    print("The arcade was boring but you decide to just head on home.  You're done for today.")
    print("END ROUTE")
}


