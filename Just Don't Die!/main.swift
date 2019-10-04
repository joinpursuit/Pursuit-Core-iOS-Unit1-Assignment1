//
//  main.swift
//  Just Don't Die!
//
//  Created by Christian Hurtado on 10/1/19.
//  Copyright © 2019 Christian Hurtado. All rights reserved.
//

import Foundation

print("WELCOME TO:")
sleep(1)
print("JUST!")
sleep(1)
print("DON'T!")
sleep(1)
print("💀💀💀💀💀DIE!💀💀💀💀")
sleep(1)
print("🚫😵🚫😵🚫😵🚫😵")
print("I'm your host: Steve Harvey👴🏾!.....I host everything, everywhere.")
print("")
print("Moving on...the objective of the game is exactly what the title says: whatever you do, do NOT die 🚫🚫🚫🚫🚫🚫. Easy, right? I mean, you've made it this far.")
print("")

var response:String = ""
repeat {
    print("Are you ready?, yes or no")
    response = readLine()?.lowercased() ?? ""
    
    switch response {
    case "yes":
        print("Great, you would've died otherwise 😅...type 'ok'")
        response = "yes"
    default:
        print(" ")
        print("you're dead 💀")
        
        print("")
        sleep(1)
        print("Want to try again?")
    }
    response = readLine() ?? ""
} while response == "no"
if response == "yes" {
    print("Great, you would've died otherwise 😅")
}
print(" ")
repeat{
    print("It's Monday morning☁️☁️☁️🌞☁☁️☁️, you're all set and ready to go to Pursuit....now what?")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "open door":
        print(" ")
        print("Great! you're off to a good start!")
        
        response = "open door"
    case "leave":
        print(" ")
        print("So we're just walking into big wooden objects🚪💥...? you're dead ☠️! Try again!")
        print(" ")
    default:
        print(" ")
        print("Ugh! First you have to 'leave'. Come on!")
        print("try again, maybe I don't know an 'open door' could help, but what do I know, right?")
        print(" ")
    }
}while response != "open door"

print(" ")
repeat{
    print("You've made it to the train safely, but wait, did you charge your phone last night!? 🔋 'yes' or 'no'")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "yes":
        print(" ")
        print("Great!")
    default:
        print(" ")
        print("No?! How can you even survive without your phone?! YOU CAN'T! YOU. ARE. DEAD!..Try again!")
        print(" ")
    }
}   while response != "yes"
print(" ")
repeat{
    print("WHOA! the train has rolled in and YOU HAVE ACTIVATED THE DAILY ⭐️YERRRRRRRR Pop! Question!!!!⭐️🎊🎉🥳")
    print(" ")
    print("The train is rolling by, it is the morning rush hour and seemingly, all of the carts are full and packed to the limit! but wait! There is a suspiciously empty cart! oh boy! it's too good to be true! LETS GET ON!...you coming? 'yes' or 'no'")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "yes":
        print("OH NO🤢🤢🤢🤢🤢🤢!!! THE SMELL IS TERRIBLE! YOU TRY TO ESCAPE BUT YOU CAN'T GET OUT FAST ENOUGH. YOU. HAVE. DIED 🤮🤮🤮🤮🤮!!!")
    case "no":
        print("GOOD CALL! you are a certified New Yorker😷! you know if it's too good to be true, it definetly is and SOMETHING is wrong on that empty cart!!!")
    default:
        print("....are ya? 'yes' or 'no' ?")
    }
}    while response != "no"


repeat {
    print("You're on the train now and see a pretty girl😍, are you going to ask her for her number, 'yes' or 'no' ?")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "yes":
        print(" ")
        print("Uh oh, her husband didn't like that very much 👊🏼💥...he PUNCHES you....you. are. dead.")
        print(" ")
    case "no":
        print(" ")
        print("I mean, normally I would say yes but her husband was watching 👀 so good call, you narrowly avoided conflict and certain death because you don't know how to fight")
    default:
        print(" ")
        print("...it's a simple 'yes' or 'no' question. Also sorry I don't remember how to make things not case sensitive so NO uppercases!")
    }
}   while response != "no"
print(" ")
repeat{
    print("You have your headphones in 🎧, listening to some music 🎵, do you listen on shuffle or list?")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "list":
        print(" ")
        print("good good, I like your style. Don't need the embarassment of the wrong song playing")
    case "shuffle":
        print(" ")
        print("🎵 TELL ME WHY!? Ain't nothing but a heart acheee🎵🔊🔊!!!....you rush to turn the volume down but it is too late...everybody knows you like the Backstreet Boys...the shame is overwhelming. you. are. dead.")
    default:
        print(" ")
        print("it's alright little buddy, just answer the question.")
    }
}   while response != "list"

print("👨🏽‍✈️ ding dong! This is Times Sq 42nd Street 🌇🌇🌆, transfer available to the 1, 2, 3, 7, A, C, E, N, Q, R, W, and the Shuttle to Grand Central.🛤🚞🚃🚃🚃🚃🚃🚃🚃")
print(" ")

repeat {
    print("Oh man, I forgot which train gets us to Pursuit🏫! Which 'numbered' train is it again?")
    response = readLine()?.lowercased() ?? ""
    switch response {
    case "7":
        print("Oh Right, let's go!")
    default:
        print("No... I don't think it was that one")
        print(" ")
        print("*Steve Harvey loses his patience and shoot you* 🔫👴🏾 YOU. ARE. DEAD!")
        print(" '(　-_･) ︻デ═一 * (/❛o❛)/'")
        sleep(1)
        print("TRY AGAIN!")
    }
}    while response != "7"

//==============
print(" ")
sleep(1)
//==============

print("*You're at the platform and check the train schedule ⏰")
sleep(1)
var trainTime = Int.random(in: 10..<15)
switch trainTime {
case 10...15:
    repeat{
        print("It's going to take \(trainTime) minutes for the train to show, you should be fine as long as you let someone know! who are you going to Slack? Genesis, Antonio, Jamie, or Alex?")
        response = readLine()?.lowercased() ?? ""
        switch response {
        case "genesis":
            print("")
            sleep(1)
            print("you actually didn't have to slack her 🙅🏻‍♀️. She's standing behind you and stabs you 🔪 🔪🔪. You. Are. Dead.")
        case "antonio":
            print("")
            sleep(1)
            print("Antonio🤓 is late too, so you get kicked out of Pursuit and die alone. You. Are. Dead.")
        case "jamie":
            print("")
            sleep(1)
            print("Jamie 👩🏼‍💼 assures you: You'll be fine!!")
        case "alex":
            print("")
            sleep(1)
            print("Alex 🏃🏿‍♂️ happens to be passing by and tells you to run to Pursuit with him, foolishly you accept 🏃🏿‍♂️🏃🏽‍♂️, you forgot to tie your shoes. You. Are. Dead.")
        default:
            print("you gotta pick one of them!")
        }
    } while response != "jamie"
default:
    print("Go home!")
}
print(" ")

print("🎊🎉⭐️You've made it!! CONGRATULATIONS!!!🎊🎉⭐️")
print("")
sleep(1)
print("It's Graduation day👩🏻‍🎓👨🏾‍🎓👩🏾‍🎓👨🏻‍🎓! You are a Master coder 👨🏾‍💻👩🏻‍💻👩🏾‍💻 and all the companies are competing for your services! You've made it! The day you've been dreaming of!")
print("")
sleep(1)
print("*tries not to think that death is eminent and nobody ever really wins*")
print("")
sleep(2)
print("THANKS FOR PLAYING!!!")
print("")
print("""
────▓▓▓▓───▓▓▓▓▓▓▓▓▓▓▓───▓▓▓▓
──▓▓▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▓▓
──▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓
───▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
─────▓▓▓▓▓███▓▓▓▓▓▓▓███▓▓▓▓▓
────▓▓▓▓▓▓███▓▓▓▓▓▓▓███▓▓▓▓▓▓
────▓▓▓▓▓▓▓▓▒▒▒███▒▒▒▓▓▓▓▓▓▓▓
────▓▓▓▓▓▓▓▒▒▒▒███▒▒▒▒▓▓▓▓▓▓▓
─────▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓
───────▓▓▓▓▓▓▒▒▒▒▒▒▒▓▓▓▓▓▓
─────▓▓▓░░░░░▓▓▓▓▓▓▓░░░░░▓▓▓
─▓▓▓▓░░░░░░░░░░░▓░░░░░░░░░░░▓
▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░░▓
▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░░░░░▓
▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░▓▓▓▓▓
▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░░░░▓▓▓▓▓
─▓▓▓▓▓▓░░░░░░▄██▄██▄░░░░░▓▓▓▓▓▓
───▓▓▓▓░░░░░░███████░░░░░▓▓▓▓▓
─────▓▓█▓░░░░███████░░░░▓█▓▓
──▓▓▓▓▓▓▓▓▓░░░█████░░░▓▓▓▓▓▓▓▓
─▓▓▒▒▒▒▒▒▓▓▓░░░███░░░▓▓▓▒▒▒▒▓▓▓
▓▓▒▒▒▒▒▒▒▒▒▓▓▓░░▀░░▓▓▓▒▒▒▒▒▒▒▒▓▓
▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓░▓▓▓▓▓▒▒▒▒▒▒▒▒▒▓
▓▓▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓
▓▓▓▒▒▒▒▒▒▒▒▓▓▓────▓▓▓▓▓▒▒▒▒▒▒▓▓
─▓▓▓▓▓▓▓▓▓▓▓▓───────▓▓▓▓▓▓▓▓▓▓

""")
