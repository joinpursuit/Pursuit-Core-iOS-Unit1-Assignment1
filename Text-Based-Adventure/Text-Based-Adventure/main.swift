//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Alyson Abril on 10/10/18.
//  Copyright © 2018 Alyson Abril. All rights reserved.
//

import Foundation
let replies = (R1:"Do you: (a)wait for sleep or (b)do something productive?", R2: "Do you: (c)open a window or (d)keep painting?", R3: "Do you: (e)panic or (f)take a deep breath or (g)check your phone or (h)close your eyes)?", R4: "Which way do you go: (left) or (right)", R5: "Will you (i)turn back, (j)climb tree, or (k)make path?", R6: "Do you (l)follow sounds, (m)climb out?", R7: "Do you (n)rush ahead or (o)proceed with caution?", R8: "Do you (p)gaze into reflection or (q)leave the reflective pool?", R9: "Do you (stare) or (look away)?", R10: "Do you(r)listen to riddle or (s)tell off the reflection?")
//var reply1 = "Do you: (a)wait for sleep or (b)do something productive?"
//var reply2 = "Do you: (c)open a window or (d)keep painting?"
//var reply3 = "Do you: (e)panic or (f)take a deep breath or (g)check your phone or (h)close your eyes)?"
//var reply4 = "Which way do you go: (left) or (right)"
//var reply5 = "Will you (i)turn back, (j)climb tree, or (k)make path?"
//var reply6 = "Do you (l)follow sounds, (m)climb out?"
//var reply7 = "Do you (n)rush ahead or (o)proceed with caution?"
//var reply8 = "Do you (p)gaze into reflection or (q)leave the reflective pool?"
//var reply9 = "Do you (stare) or (look away)?"
//var reply10 = "Do you(r)listen to riddle or (s)tell off the reflection?"

print("Enter your name:")
var playerName = readLine()!

print("Moving into a new place is alway hard and stressful. This old house is certainly full of character. The creaking sounds of the wooden floors, the strange hissing from the radiators, you’ve even caught yourself double looking in the old mirror that was left behind to catch that weird reflection of a second person… that’s silly though because you live alone.  Though at 3 a.m., while letting the tv drown out the silence, you wonder to yourself why insomnia chose this night to rear its head.")
print("")
print(replies.R1)



if let noSleep = readLine() {
    if noSleep == "b"{
        print("If you’re going to be up anyway might as well be productive and get some painting done. The walls were a horrible pink that covered up to the ceiling.  But now it’ll hopefully be a relaxing sage  color; a way to bring some nature back into the home. The back and forth movement of the brush strokes is hypnotic. You’re becoming light headed and disoriented. Perhaps it's from the paint fumes?")
        print("")
        print(replies.R2)
    

        if let paintFumes = readLine() {
            if paintFumes == "c" {
                print("You take a step back to gather your bearings,  you shake your head, when you notice things are not what you recall them to be…")
            } else {
                print("The lightheadedness overcomes you, and you begin to cloe your eyes.  When you open them, your surroundings are very different...")
            }
        }
    }
    if noSleep == "a" {
        print("You’ve been sitting for about an hour.  There’s just something lingering on your mind.  The house is old, they’re supposed to make weird noises right?  Maybe counting sheep will help.")
        print("How many sheep do you count?")
        if let sheepCount = readLine() {
            var sheepNum = Int(sheepCount)!
            while sheepNum > 0 {
                print("\(sheepNum) sheep.")
                sheepNum -= 1
            }
             print("You begin to feel tired, the colors fade into a muted green. What is this?")
        }
            }
        }

print("")
        print("How the hell did I end up here? Am I dreaming?  Where did my house go? You begin to breathe rapidly as your heart races, and brain desperately tries to make sense of what has transpired")
        print(replies.R3)

        let whatJustHappened = readLine()
        switch whatJustHappened {
        case "e":
            print("You run in your panic, you don't realize there are overgrown roots and trip into trap hole.  The hole isn't too deep, you are able to climb out after a couple of hours. Should you even feel this tired in a drea?  You finally notice that behind you there is nothing but tall grass, and boulders. To the left you see what looks like a forest path, to the right a sort of man made path.")
        case "f":
            print("You breathe in deeply, and try to get a bearing on your surroudings.  Behind you there is nothing but tall grass, and boulders. To the left you see what looks like a forest path, to the right a sort of man made path.")
        case ("g"):
            print("Just your luck, the battery is dead.  You take a look around you, Behind you there is nothing but tall grass, and boulders. To the left you see what looks like a forest path, to the right a sort of man made path.")
        default:
            print("It's just a dream.  Everything is just fine, we're just fine. Let's just walk and see what happens. You open your eyes and begin to walk towards a path")
        }

        print("There are two paths in front of you.  You see a well worn path with just enough sulight filtering through to see your way but should you trust this? There is another path but it’s quite gloomy with its overgrown with tall grass and shadows.  Which path should I take?.")
        print(replies.R4)
        let whichWay = readLine()!
        if whichWay == "left" {
            print("As you walk you notice, the light dies slowly into night, and path is truly ominous looking, walking for what seems like an endless amount time... ")
        } else {
            print("The overgrown path is littered with stones, of all sorts, why did I do this myself?")
        }
print("")
print("It is dark now, with a only sliver of moon to provide light, you notice there are none of the animal/insect sounds you have come to expect in a forest, the only sound is that of your own breathing.  The trees have an ominous, malicious aura to them.  The small nooks look more and more like eyes staring at you, judging you, hating you as you stumble and fall on the ever growing roots.  The path ends, and you find nothing…")
print(replies.R5)

let whatDoIDoNow = readLine()!
            switch whatDoIDoNow {
            case "i", "j", "k":
                print("the ground gives way before you can move, and you fall into an undergraound cavern")
                default:
                    print("the ground gives way before you can move, and you fall into an undergraound cavern")
}

print("The long drop certainly did you no favors, the excruciating pain radiates through your arm.  Should there even be this much pain in a dream?  You cradle your wrist as gently as possible, as you begin to notice the slow drips of water. The light from whence you fell, doesn’t provide much to help you navigate, what do you do?")
print(replies.R6)
let thisSucks = readLine()

if thisSucks == "l" {
    print("You do your best to hug the cavern wall for support and guidance, straining to hear the soft drips of water.")
} else {
    print("You keep slipping because the walls are slick with water.  It seems the only thing you can do is follow sounds.")
}
print("")
print("You go deeper into the darkness too thick.  Straining to hear the drips, and it grows faint.  Did you go the wrong way?  You continue onwards, there.  In the far distance, a weak flickering.  Relief flushes around you, hope.  You…")
print(replies.R7)

let thankGod = readLine()
if thankGod == "rush forward" {
    print("You slip and stumble, jostling your broken wrist… the pain is making you woozy but you press on still towards the light as it grows brighter.  A rush of water can be heard, finally a stroke of good luck.")
} else {
    print("You near weep at the sight, but you know you should be careful as you still can’t see what’s ahead of you. You slip on rocks, and grab at the wall for balance, the pain in your wrist is unbearable")
}
print("")
print("You finally reach the heart of the cavern, water rains from above.  You wade in waist deep, to clean your wound, when you notice something odd in the reflection. It’s not a true reflection, but a window into your home.  You shake your head, what hell kind of dream is this anyway?! And why the hell can’t you wake up?  This is just ridiculous now, you’re injured and in pain.  Enough is enough!")
print(replies.R8) //gaze into reflection/leave
print("")
let whyCantIWakeUp = readLine()
if whyCantIWakeUp == "q" {
    print("You wade out of the water to try and find another exit.  There’s none to be found.  And you don’t quite fancy going back into the darkness. There is no choice to confront the reflective pool...")
} else {
    print("You gaze into the water to your home, there must be some clue on how to get back.")
}
print("")
print("What you see lends your fiery anger and frustration into a piercing cold you never imagined you could feel.  Your mother is in your painted sage green sunroom, smiling and laughing.  You’ve never seen her so happy.  But that isn’t why you’ve gone icy.  She isn’t alone… she’s with you?")
print(replies.R9)


let whatIsThis = readLine()
if whatIsThis == "look away" {
print("You look around, this is the time to wake up, isn’t it?")
} else {
    print("You stare in bewilderment.  This just isn't possible.  It's unnatural, why am I still dreaming?!")
}
print("You watch as your mother ends her visit, the you in the water turns back you, smirks and waves. You can hear them whisper to you \"You might be freed, if you can answer a riddle for me...\"")
print(replies.R10)

let thisIsNotOkay = readLine()
if thisIsNotOkay == "r" {
    print("You tell the imposter, that you'll listen to their riddle.")
} else {
    print("You tell the imposter to go to hell.  They laugh and tell you there is no other way out")
}

print("The riddle is as follows: \"What won't run long without winding.\"")
print("Enter your answer")
var riddleAnswer = readLine()

if riddleAnswer == "a river" || riddleAnswer == "river" {
    print("\"Correct\" the shadow hisses.  You answered confidently and correctly,and a river is revealed to you.  You instinctively follow it out of the cavern into the bright light. The intesity blinds you...  You blink slowly.  You've returned home, and all is as it was before. No, there's a new found sense of confidence you've never had before.")
} else {
    print("The shadow laughs triumphantly. The laughter is all you can hear as it the walls crumble, and everything everything grows dark.  When you awaken and you take a look around you.  You blink rapidly.  This can't be... Behind you there is nothing but tall grass, and boulders. To the left you see what looks like a forest path, to the right a sort of man made path. There's something on written on the tree bark.  You take a closer look.  It says simply: Welcome back \(playerName)  You're back at the beginning. How did this happen, why?  Is there something left to learn?")
}

