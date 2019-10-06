//
//  main.swift
//  Pursuit-of-Justice
//
//  Created by Matthew Ramos on 9/30/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

print("""
    
        |  _   _   _ _ __ ___ _   _(_) |_
        | |_) | | | | '__/ __| | | | | __|
        |  __/| |_| | |  (__ ( |_| | | |_
        |_|      -,_|_|  |___)(__,_|_|(__|
        __       _ _   _ ____ _____ ___ ____ _____
  ___  / _|     | | | | / ___|_   _|_ _/ ___| ____|
 / _ )| |_   _  | | | | (___ ( | |  | | |   |  _|
| (_) |  _| | |_| | |_| |___) || |  | | |___| |___
 (___)|_|    (___/ (___/|____/ |_| |___(____|_____|







""")

var a = false
var b = false
var textBlock1: String = "You arrive at the spring, radiant and glowing in the canopy light of the foliage. The sword is said to reveal itself when one pure of heart approaches the spring. With confidence and anticipation, you approach the waters."
var textBlock2 = "And yet, that confidence was unfounded! After messing about the spring impatiently for the last few hours, absolutely nothing has happend! You remember grandpas words about the fairies who guard the spring, judging those that may or not be pure of heart. With your actions these last few hours, it's definitely possible you totally blew it. However, you also remember him mentioning that faires are exceedingly forgetful! Maybe you can go back and make things right! Do you go back to the old \"woman\" on the road, or try to find the \"noble\" again?"
var textBlock3 = "The coding cultist raises his hands, the wisps of code circling around him and condensing in his hands! He's preparing something powerful, but theres not enough time to dodge! Do you \"prepare\" for what's to come, or try to \"attack\" him?"
var decision1 = ""
var decision2 = ""
var decision3 = ""
var decision4 = ""
var decision5 = ""
var decision6 = ""
var decisionEnding = ""
var decisionForest = ""
var error = "I don't understand that. Try a different answer!"
var counter = 0

print("Enter your name.")
 

var nameValue = readLine() ?? "Error"

if nameValue == "your name" {
    print("Nice try, wise guy.")
} else {
print("Your name is \(nameValue). You've lived the simple life of a farmerhand all your life, living with your younger sister in the humble shire of Con Sóle in the land of Swift. Your humble lifestyle hides a powerful secret, however. Your sister was born with the power to manipulate the legendary Source Code, a godly framework that controls the very laws of nature in Swift.")
    sleep(5)
    print("One night, a powerful technomancer came to Con Sóle, leaving terror and flames in his wake, and kidnapping your precious sister. Your village in ruin, you seek out the wizard in his terrible Terminal Tower, armed with only a certain knowlege: rumors of a legendary Sword of Breaking that could cut through his technomancy. As you set off for the sacred spring, you think back on what your grandfather told you \"The sword can only be found by one who's pure of heart.\"")
        sleep(5)
    print("You set out on the road to the sacred spring, a landmark known to the village. The Terminal Tower looms in the distance, dark and forboding. As you walk, you notice ulap ahead an old woman towing a push cart, its wheel snapped off the axel. She looks to you, tired eyes pleading for help. You feel like it would be the right thing to help her, but you only have so much daylight to spare, lest you be caught in the woods at night. Do you \"help\" the old woman or \"continue\" on your way?")
    
}
func oldWoman() {
    decision1 = readLine()?.lowercased() ?? "Error"
    switch true {
    case decision1 == "help" :
print("You help the old woman, fitting the heavy wheel back on the cart. She smiles gratefully, but says she has nothing to offer you. You decline the very possibility of a reward, and feel good about your decision to help her.")
    a = true
        sleep(5)
    case decision1 == "continue" :
    print("Although the old woman looks dejected, you continue on, leaving her and her cart by the wayside. You'd really like to help, but you have bigger fish to fry.")
        sleep(5)
    default:
    print(error)
    oldWoman()

}
}



func Cool(){
    print("After a few miles on foot, the main road connects to a discrete but well worn path into the woods, leading to the spring. Light peaks through dense trees, the loam damp beneath your soles. Approaching you is what appears to be a nobleman, wearing clothing much to gaudy and thick for this climate. Sweat on his brow, he tells you he wandered astray into these woods while on the way to the Kingdom, and he has an appointment with the King! You point him in the right direction and he thanks you profusely, but as he walks away you notice a comedically large broccoli stalk lodged in his teeth! You can't believe you didn't notice before. You could call him over \"tell\" him about it politely, as a meeting with the King could go sour with such a breach of etiquette. You could also \"laugh\" at him, because he looks ridiculous, or \"keep\" it to yourself to avoid an awkard interaction. What do you do? ")
    decision2 = readLine()?.lowercased() ?? "Error"
switch true {
case decision2 == "tell" :
print("You let the noble know about the brocolli. Although initally awkward, he is immediately grateful, and thanks you profusely before hurrying on his way. Handling the situation directly and compassionately, you are filled with RADICAL  CANDOR! You feel good about yourself.")
sleep(5)
print(textBlock1)
    b = true
    Cool1()
case decision2 == "laugh" :
    print("You point and laugh at the noble, calling him a sweaty broccoli-mouthed fool! Red-faced, he scurries down the path to the main road in embarassment. Handling the situation directly but totally obnoxiously, you can't help but feel like you are brimming with OBNOXIOUS AGGRESSION. You don't feel great about yourself, but then again, it was pretty damn funny!")
    sleep(5)
    print(textBlock1)
    Cool1()
case decision2 == "keep" :
    print("To avoid an awkward interaction, you keep that bit of embarassing information to yourself! The nobleman whistles down the road, none the wiser. You are drenched in the mire of RUINOUS EMPATHY. You feel like the scum of the earth. But hey, at least its not you meeting the king!")
    sleep(5)
    print(textBlock1)
    Cool1()
default:
     print(error)
     Cool()
    }
}

func forestPuzzle() {
for num in 1...999 {
    print("You enter the deep woods. A strange mist fills the woods, and you feel yourself losing your sense of direction. You walk as if in a dream...nothing but white and the dark bark of trees in your sight. What do you do?")
    if num > 2 {
        sleep(3)
        print("...déjà vu? You can't help but feel like you've done this before. You remember hearing the legends of the spirits that lingered in this woods, how they use the dark magic of Loops to keep travelers trapped here, wandering the mists until death. Your sword hums, and a faint word appears in your mind, a command that when used end a Loop instantly. But it keeps slipping from your mind...what was it?")
        
    }
    decisionForest = readLine()?.lowercased() ?? "Error"
    if decisionForest == "break" {
        break
    } else {
        continue
    }
    }
    print("\"BREAK\"!!! With the power of your blade you manipulate the code around you to dissipate the mist. You are finally free!")
    sleep(5)
Cool2()
}

func Cool2(){
    print("You climb the Terminal Tower. The sky is dark, lightning strikes as you make you ascent. At the top of the tower, the technomancer waits for you, blue stringlets of code being manipulated around his body as nearby rocks and debris begin to float, charged with power. He tugs at the strings of code around him methodically, and in a flash of blue light he appears next to you! He lunges at you with a glowing blue dagger. Do you \"parry\" his attack and strike back, or try to \"dodge\"?")
    decision4 = readLine()?.lowercased() ?? "Error"
    switch true {
    case decision4 == "parry" :
    print("You strike back! The wizards grabs at his wound, grimacing in pain.")
    sleep(3)
    print(textBlock3)
        Cool3()
    case decision2 == "dodge" :
        print("You dodge acrobatically, skillfully evading his strike with finesse.")
        sleep(3)
        print(textBlock3)
        Cool3()
    default:
         print(error)
         Cool2()
        }
    }
func Cool3(){
    decision5 = readLine()?.lowercased() ?? "Error"
switch true {
case decision5 == "prepare" :
    print("You withstand the attack, but only barely. You feel your code, your very life essence being co̧rrup͟ted̡.͟ I͜t ͜b̶e̢c͏óm̶e̢s͡ h҉ard̢e̴ŗ to̧ ҉f͞i̶ght҉.͠..̛haŕde̛r to̸ t͠hink҉.͘.̨.́a͝ǹd̸ ev͟e͜n͝ ͢h͡a͡rḑe̸r ̧t͏o br͝eat͠h̴e. Týpe͞ \"enter\"tǫ ͏con͡ti̷n͡ue.")
    Cool4()
case decision5 == "attack" :
    print("You lunge at him, but the condensed sphere of codic energy, engulfs you. You feel your code unravel around you, your existence being torn out by the seams. You are written out of the code, out of Swift, and you've run out of time. GAME OVER.")
    exit(1)
    default:
     print(error)
     Cool3()
    }
}
func Cool4(){
    decision6 = readLine() ?? "Error"
    if decision6 == "enter" {
        print("Ỹ̶̼̳̬̜̼ͫ́ͬo̶̫̦u̦̤̭͐̃̒̎͐̚ ̦̻̯͖̣ͥͤ̿͗ͮ̂f͇̭̫̖̺ͨ̍͌ͯͅḁ̻̤͔͓͎ͬ̈ͤ̑ͦͨ͆ll̟̱̪̥͢ ̧̲̂̓ͯ̆ͯt͉̭̳̂ͮ̏ͤͥ̊o̻͊ ̡͇̰ͯ̑ͪͭ̊̿y̥͈͇̗͓̪̦̍͐͟o͗͑̌̏͒̚͏̫̟̯͍͈ͅu̝ͮ̀ͬṟ͇̲̬͔̈́̉͞ ̧̟̊͗ͣͅk̖̠̩̟̝̗n̹̫͔̜͎̥̙̄̉̏ͤ̆́̌e͖̽̅ͧ̌ͪ̀̚e̜̹̳̳͌s͎͓̋̑ͫ̈̅͑,̵̯̰̭͊͐͊̊͒ ͕̞̞̗̝̱̙ͥd̰̣͖̙͇̱̦a̷̮̖̚r̡̘̪̠̰̳͊͆͂͐ͯ̽̑k̖̳̘͎̫̍ͭ́ͥ̄̆̆͡ͅn͕͓̞̖ͧͪ̓͝e̲̰̠̬͘s̲̱͙̠̝ͨ̇̍̀̂͘ͅs̴͓͆̂ ͙̯̮͓͕̮͔c̼͕͕̼ͣ̈́l͙̞̭̅ͬ̒̾̐ǫ̋̍u̲̟̦̱̲ͨ̃̑ͫ̏͆d̹͎̱̅ͩ́̒ͨi͇̠͇͑ͯ̚n̳͈ͨ̂g̹͖͐͋ͧ́̌͘ͅ ̮͇͌̑ͫ̏͑̀y͐ͩ҉̮̗̯̣̫o͖̘̯̙̙͛͋̌͂͒̆ͤ́ü̫͔̮r̭̲̪̭̩͊̿̈́͒͘ͅ ̡̜͓̭̤̰̻̀s̖̣̱͕̮͚̬ͤ̓͋̉c̨͍͓͚̾ͨ̈́͋̓̏o̼͑̔ͮ̓ͯp̹̳̞̞͐ͥe̤̲̝̪̣̽̾ ̙̗̔ͭo̪̱͔͖̺ͬf̘͇̰͌ͯ̂͞ ̙̻͍̋̐ͮ́̐͞v͉̩̝̗̺̲̉ͧ̑͋͞iͮ̉ͦ̀̀͢ṡ̴̗͍͂ͦ̚i̯̩̦̭͍̇ö̜̻͔̬̠̣̠́ͧ̌ͣ̒̂͟n̤̮͙̞̬͇͛͑ͬ̂̚.̵͙͕̹̪̩̹͐͒ ̵̫͕̣͊T̝̙͖̱̣̜̊͋ĥ̹͈̥̖̫͌ḯ̋̓ͦ҉̲̙̫s̢͙̘͗̆̿͆́͂̃ ̮̞̳͜c̷̰͕͒ͬ̾̿ǒ̝̺̪̺̝̱͌́͐̇u̗͓̇͑̄l͚͔̯̍̈́ͮ̈̑̉͢dͤ͆̔̍ͭͣͯ ̜̜̺̝͈̲͛̃b̟͙̩̣̤͈͙ͦͤ̉ͥ͛̓e̊̿͛̕ ̱̪͌̋͌̽̀ͧt̔ͥ̌͐ͣ̌̿̕h͚͇͆̋̽ͫͬ̾̔͘e͙̻͍͕̰͖̘̒̑ͯͥ ͌̏́ͤ͏̱̥e͈̩͊ṇ̣͔̣̏̽̈ͧd̅̔ͤ͌̇̕ ͉̱͌f̸̜̲͕̦̥̂͌̅̀̄ǫͮ̈́͛ͫ͊́r̪̻͙͔ͫ ̨̖̠͔̖̟̦́̐̎̆ͅy̠͉̲ǒ̡͕̱͉͕͉ṵ̬͍́.̼͎̠̥̱͆̓̿̏ͯ̇ ̯͉̋ͤͥT̗̙̖̯̊̔̓̒͆ỷ͓͎̳̭͕ͯ̄ͮp̫͕͕̠̮̘̣e̡̱̩̘͕̱̒ ͓̺̲̦̗̂ͫ̐̾ͫ͑̿\"enter\" to̹̲̱͉̘̖ ̨̖̂͌͂͂̔̍c̐̉͂̚͏o̓̌̉͜n̗̦͚̏t̝̞̫̭i̵̼͙̫͈̔ͅn̳̮͉̮͍̲͎̍u̥̺̜̱̠̤e͖͐͒ͨ͝.͔̮̭̜̟̄͂̋̚̚")
        repeat{
           print("D̰͈̻͚͉̬̰ͥ̽ͧ̈́̋̒͒͢ḁ̟̪̤̥̰̿ͣ̈͟͡ř̡̭͉̙̩͓̱͕̇͒́ͯ̆̿̋̄͜ͅk̴͔̟͕̖̰̟̜̻͒͗͆͂̌̓̓ͧͥn̴͇̤͆̈ẽ̠̬̮͍̝͚̫̣̏̐ͭ̾ͭ͝s͚͎̈́͂̾̆̆̂͐s̵̮̥͙̫̣̫͇ͨ̌ͤ̒ͫ́ ̨͚̳̗͍͍̖͇ͩͥ́̕e̖̜͇̓̔̅ͯ͑̀͛ͧ̒͡v̭̟̹̮͙̿͒̈́̊͜͝ͅe̷ͧ̒ͫ̀҉̰̙̻̳͚r̎ͥ͠҉̵̫̮͔̫̮y̷̮ͨ̇̆ͬ̽ͬ͢ẅ̽͝҉̼͇̳͈̤̹͠ḧ̭̺̞́̀̉́̐ͦ̐́͜͠e̟̮̭͙ͮ̔ͬͩ̔̿͋̓ȑ̦̼͎̝͖͌ͯ͊͝e̸̺̐̂͆̌̈̔,̫͔̜̯̟̘̬͔̀ͫ͑̈̆̾̀̚ ̇̓͐͐̔̿ͦ҉̧̛̭̱̟͍̻͓̪̜y̛̛͙̥̦̠͎͎̤͊o̴̤̣̳̳̞̺̞̽̕u̙̼͎̟͇̜͕̓ͮ ̹̦̬̺̆̇ͨͯc̡ͣͤ̂͛ͣͣ̊͟҉̟̦a̶̛̭͙̬̤͓̱͐̐ͩ̓̄ͦ̾͠ͅn̶͉̔̈͢'͆̾͛ͣ̚͢͝͏͎̲̪̙ṯ̵̭̍͛̉ ̻̣͖̗͓̟͊ͣͯf̿҉͏̻̟̮ͅě̛̤̘͑̈ͧ̋ͤͨ̍͢͠e͖̯͎͛l͎̜̣̖ͭ̈͘͝ͅ ̹̻̄́͗͐̀̚ạ̴̷̙͗̿̊ͣ̐ͪͅͅn̞͖̪̏ͬͧ̑̓͋͘ͅỳ̴̵̗̣ͪ̄̉͡t̍ͨ̎̆̒̓̔̚͏͖͖͞ͅḥ͇̘̄̿̊̐ͬ̑̓ͮ͘i̫̠̠̇̊̂́͛͠n̷̬͐ͬ͆͗̊̐̓g͓̭̜̰̳̯̈́͂")
            counter += 1
            sleep(5)
        
        }
        while counter < 4
        Cool5()
    } else {
        Cool4()
    }
}

func Cool5() {
    
    print("Suddenly, your sword begins to glow! The corruption dissipating from your body, you raise your blade aloft, blue light shining from the Unicode glyphs! You direct that light towards the wizard, and with a unearthly roar you write him out of Swift. You save your sister from her cell, but after fully awakening to your ability to use your sword, you too have the great power to bend reality to your whims!")
    sleep(5)
    print("What will you do with that power? Will you 1. Rewrite history to make yourself a king? Will you 2. Destroy the sword, so no one else can use its power, and return to your life as a farmhand? Or will you 3. Protect these lands as the hero they need?")
    decisionEnding = readLine() ?? "Error"
    if decisionEnding == "1" {
        print("You become king!")
        
    } else if decisionEnding == "2" {
        print("You destroy the sword!")
    } else if decisionEnding == "3" {
        print("You become a hero!")
    } else {
        print(error)
        sleep(1)
        Cool5()
    }
    
    
    

    }

func Cool1(){
    sleep(5)
    if a == false || b == false {
        print(textBlock2)
        decision3 = readLine()?.lowercased() ?? "Error"
        
        switch true {
        case decision3 == "woman" :
                oldWoman()
        case decision3 == "noble" :
                Cool()
        default:
             print(error)
             Cool1()
        }
    } else { print("You hear a rustling in the nearby bushes. Emerging from the greenery, to your suprise, are the old man and nobleman from earlier! Leaves swirl around their bodies, concealing them before falling away to reveal the figures of two fairies from legend! In unison they reach into the spring, and bestow upon you the Sword of Breaking. Stranges glyphs run along the length of the blade, in the ancient language known as Unicode. The sword is now yours!")
        sleep(5)
        print("Now ready to face the wizard, you head towards the massive tower as it pierces the skyline. Type enter to continue.")
    decision3 = readLine() ?? "Error"
    if decision3 == "enter" {
        forestPuzzle()
        
    } else {
        print(error)
        Cool1()
    }
}


    }
oldWoman()
Cool()












