//
//  main.swift
//  Assignment1
//
//  Created by Ahad Islam on 10/1/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import Foundation

print("Hi 👋, welcome to my game.  It's nice to meet you 😄.")
print("Let's start off by having you type your first name. 📛")

var playerInfo = (name: "", age: Int()) //tuple
playerInfo.name = readLine() ?? ""

print("Thanks, \(playerInfo.name). ☺️  Type your age as well. [in numerals]")
playerInfo.age = Int(readLine() ?? "") ?? -1
switch playerInfo.age {
case 22...42:
    print("Wow you're \(playerInfo.age)? You're old 😨.")
default:
    print("Wait you'e \(playerInfo.age)? How'd you get in here?😡")
}

print("Alright, you're all set.  Enjoy the game. 🙌")
print()
print("You're an office worker 💼 at a big US city 🏙 and after a LONG morning you're ready to go for lunch. 🍽")
print("Usually when you leave for lunch you either go grab pizza 🍕 or a burger 🍔, what do you think you're going to get today?")
print("[you can type either pizza or burger... or try something else! 😗]")

let foodChoice = readLine()?.lowercased() ?? ""
print()
switch foodChoice {
case "burger":
    print("Nice choice, personally I love a good sandwich ☺️ and I know you're going to enjoy your food today. 😁")
    print("When you walk to the burger joint you find it closed! 😱 To your dismay, you decide to go grab pizza instead. ☹")
    fallthrough
default:
    print("\(foodChoice) was it? Didn't hear that right... so... pizza right? Yeah totally, you want pizza.🍕🍕🍕")
}
print("You decide to hit up Artichoke Basille's. 💯  You've been going there for over 5️⃣ years  and you've never even considered any other pizzeria since then.  They're just that good.😤 Like. 😊 Really good. 🥰")
print("You've decided on two slices of pizza; and you usally get a single topping.  You could get more but you're kinda weird. 🙂  Which topping do you want? 🍕.. (your options are:")
let pizzaToppings = ["Mushrooms" , "Onions", "Bacon", "Pepperoni", "Watermelon", "Buffalo Chicken"]
for toppings in pizzaToppings {
    print (toppings, terminator: ", ")
}
print()
let toppingsChoice = readLine()?.lowercased() ?? ""
if toppingsChoice.lowercased() == pizzaToppings[0].lowercased() || toppingsChoice.lowercased() == pizzaToppings[1].lowercased() {
    print("Wow you get \(toppingsChoice) too? They're personally my favorite. 🤤")
} else if toppingsChoice == pizzaToppings[2].lowercased() || toppingsChoice == pizzaToppings[3].lowercased() {
    print("\(toppingsChoice)? Meat lover I see. 🧐")
} else {
    print("ew. who gets \(toppingsChoice)? 😬")
}

print("Anyways, after you enjoyed your slice 🌝 that had \(toppingsChoice.lowercased()) on it you decide you still have time to do something else.")
print("Outside of the pizzeria you see a park 🏞 to your left and an arcade 🕹 to your right")
print("[choose left or right..]")

let leftOrRight = readLine()?.lowercased() ?? ""
var leftOrRightPath : Bool = true
var parkRoute = true

switch leftOrRight {
case "park":
    fallthrough
case "left":
    print("You decide to take a walk in the park.🚶🏾‍♀️ Its pretty nice out, and then you realize 'Wow, I haven't been out in awhile.'  Which is kind of weird because you swear you had to get out of the house to get to work... wait. 🧠  When did you leave the house? 🤨")
case "arcade":
    fallthrough
default:
    leftOrRightPath = false
    print("Well I'm going to assume you said you totally wanted to go to the arcade. 😗")
    print("The arcade has plenty of cabinets ;🕹 but most of them are kind of broken and kinda trashy 🤕; but you see four of them still in mint condition. 😲")
}

var spentTooMuchTime : Bool = false
var oopsYoureLate = false

if leftOrRightPath {
    print("Oops! Taking in all that scenery 🌲 made you realize you're gonna be late to work. 📊  You need to run, how far do you wanna run? 👟")
    print("[type an integer]..")
    var runMiles = Int(readLine() ?? "") ?? -1
    var milesRan = 0
    var steps = 0
    while runMiles > 0 {
        runMiles -= 1
        milesRan += 1
        steps += 2000
        if steps >= 5000 {
            print("Yikes! Unfortunately you're out of shape 😵, you can only walk the rest of the \(runMiles) meters back. 😦")
            print("You come back to the office 💼 super late, boss is angry 👿.  Now you're known as the dude who comes late after lunch.  This sucks. 💀")
            print("💀💀END ROUTE💀💀 (psst... type 2 next time)")
            parkRoute = false
            oopsYoureLate = true
            break
        }
    }
    if steps < 5000 {
        print("Awesome.  You managed to run the whole \(milesRan) meters! 🏃‍♂️🏃🏾‍♀️💨")
    }
} else {
    parkRoute = false
    let arcadeGames = ["Gradius ✈️ [1]", "Fishing 🎣 [2]", "Sonic 🦔 [3]", "Street Fighter 🥊 [4]"]
    print("The games you can play are...")
    for game in arcadeGames {
        print(game, terminator: ", ")
    }
    print()
    print("[You can type 1, 2, 3, 4 this time to choose what game you want to play.]")
    let gamesChoice = Int(readLine() ?? "") ?? -1
    switch gamesChoice {
    case 1:
        print("You try to play Gradius 🛩, back when you were a kid 👶🏼🧒🏻 you realized you suck at this game pretty hard, but maybe this'll be different! 💯")
        print("Nevermind. All those years at sucking at the game, and ya still suck. 😢")
        spentTooMuchTime = true
    case 2:
        print("You decide on fishing... seriously? 🤨  Are you really going to spend your hard earned quarters 💰 on a virtual game of fishing? 🎣 Whatever, go ahead.  See if I care. 😠")
        spentTooMuchTime = true
    case 3:
        print("Sonic? OK, pretty normal to play Sonic.  I think. 🆗 ")
        spentTooMuchTime = false
    case 4:
        print("You decide to show this arcade who's the boss.  You've had twelve years of your older siblings just beating you in this game AND in real life.  Its time to show everyone whos boss.  Except, no one else is here.  Just you.  By the way you get your ass handed by the AI controlled character.  Apologies 😢")
        spentTooMuchTime = false
    default:
        print()
    }
}
var trueRoute1 : Bool?
if parkRoute {
    print("Nice, you got to work pretty fast. 💨  You head up to your office and you continue your work.")
    print("After a few hours you head out, but you realize you're missing your keys. 🔑 You panic 😬, knowing that you'd never just simply lose your keys.  You mentally retrace your steps and the one place you can think about is... the park. 🧐❗️")
    print("You head to the park 🏞 and you decide to look anywhere you can, you decide on whether to look through the bushes 🌳 near the bench you sat on or the pond you strolled through.")
    print("type bush or pond..")
    
    let bushOrPond = readLine()?.lowercased() ?? ""
    if bushOrPond == "bush" {
        print("You check the bushes.  But you can't seem to find anything there.")
    } else {
        print("You check the pond, but there's nothing there.")
    }
    print("After going through the park you just can't seem to find your keys.  Frustrated and perturbed.  You sit down and take in the scenery again to avoid feeling like crap.")
    print("Suddenly you see a glowing light in the pond, and you see water sweeping away from the center of the pond.")
    print("The glowing light starts to envelop you..")
    trueRoute1 = true
    print("END ROUTE... or?")
} else if spentTooMuchTime == true {
    print("Wow, you spent so much time at the arcade  playing you forgot about the time.")
    print("You're now \(playerInfo.age + 1) years old.")
    print("You decide to come out and realize that its too late, everyone is gone.  It hasn't been 1 year, its been hundreds.")
    print("END ROUTE")
} else if spentTooMuchTime == false && oopsYoureLate == false {
    print("The arcade 🕹 was boring 😴 but you decide to just head on home.  You're done for today. 💤")
    print("END ROUTE")
}
var trueRoute12 : Int?
if trueRoute1 != nil {
    print("You open your eyes.  All you can recall was the bright light then... nothing.  All you know is that you're no longer at the park.  Gravel roads with grass & shrubs have been replaced with a slab wall.")
    print("As you rouse yourself from forced slumber you look around, around the slab wall you feel a draft. There's a gap from the corner of the room.")
    print("It's small but you think you can fit into it.  However there's also a door through the opposite slab.")
    print("Type 1 to go through the crevice, or 2 to open the door.")
    let trueRoute11 = Int(readLine() ?? "") ?? -1
    switch trueRoute11 {
    case 1:
        print("You prepare to go through the crevice.  It's a tight fit and you're nervous as to why you decided to go through with this in the first place.")
        print("However as soon your whole body is in the crevice the gap starts to widen, allowing you to sidle a little faster with a bit of reprieve.")
        print("You exit the crevice, a house is in front of you.")
        trueRoute12 = 1
    case 2:
        print("You open the door and you see grey humanoid figures standing in front of you.")
        print("They're long, lanky figures and pale textures are strange, and their dark bulbous eyes look to meet your own.")
        trueRoute12 = 2
    default:
        print("You choose to not go with either route.  Trapped in this gray room because of your inability to decide, you slowly starve to death.")
        print("END ROUTE")
    }
}

var trueRoute121 : Int?

if trueRoute12 != nil {
    if trueRoute12 == 1 {
        print("The house is an old townhouse, painted with stripes of obelisk blue and cinder pearl.  It's familiar to you.")
        print("Around the house are empty fields as far as the eye can see; you're confused as to what you think you're seeing but the sky isn't moving.  The clouds, they're just still.")
        print("Now that you think about it.. you can't feel the air.  The wind's stopped for a long time since you've left the crevice.")
        print("The door opens to the house, as if the house itself is inviting you in.")
        print("Do you choose to go into the house? Type Yes or No.")
        let houseChoice = readLine()?.lowercased() ?? ""
        if houseChoice == "yes" {
            print("You enter the house.")
            trueRoute121 = 1
        } else {
            print("No, this isn't what you want.  You leave and head through the fields.")
            print("As you go through the fields endless thoughts start to go through.  You start to keep going through all the choices in your head and regret all of them, not being able to realize the endless possibilites and consequences of your choices as you drift through this unending field.  As your body starts to give out, your conciousness starts to meld into this reality.  Slowly you fade out, and you question if you ever existed to begin with.")
            print("END ROUTE")
        }
    } else if trueRoute12 == 2 {
        print("The aliens really don't like you, so you decide to try something to make them happy")
        print("You tell them a bad joke.")
        print("They didn't really like that joke.")
        print("END ROUTE")
    }
}

if trueRoute121 != nil {
    print("The house really is familiar.  This is your childhood home.  You remember alot of the times you played with your parents and your younger siblings.")
    print("After awhile you realize that you don't remember their faces.  Or even their names.")
    print("The first room you enter is the living room.  A lot of your childhood was spent here playing videogames or watching the late night television with your dad.  You remember your mom didn't like that.")
    print("You exit the room and approach the hallway, and there's two rooms ahead.")
    print("Type 1 to go to the study.")
    print("Type 2 to go to your bedroom.")
    let rooms = Int(readLine() ?? "") ?? -1
    switch rooms {
    case 1:
        print("The study is dusty.  You reminisce seeing your father spend his days here.  After your parents would get into a fight, he would lock himself in.  You never understood why he'd always retreat into the study.")
        print("Even on his last day he went inside.  Back then you would keep your ears to the door to find out what he was doing, and you could hear faint scribbling.")
        print("As you go through the room you find his book.  You've never seen it before and you before you even notice you instinctively open the book.")
        print("END ROUTE")
    case 2:
        print("Your bedroom.  Throughout the years it would change but it was always your sanctuary.  A place for solace.  You never thought you'd come back here but you remember the faint scent of the sheets.  Your mom always prepared them no matter what; and after you left you could never get a good night's sleep without remembering them.")
        print("As almost as if it was sleeping powder you fall asleep on the bed.")
        print("You wake up in your bed.  No, not the bed in your old house but inside your apartment.")
        print("As if the whole day was just a dream, you get out of your haze and see a letter on the table.")
        print("END ROUTE")
    default:
        print("No, you decide to leave the house, but on your way out you realize your locked, forced inside there forever.")
        print("END ROUTE")
    }
}
