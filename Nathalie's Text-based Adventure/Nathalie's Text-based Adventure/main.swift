//
//  main.swift
//  Nathalie's Text-based Adventure
//
//  Created by Nathalie  on 10/10/18.
//  Copyright © 2018 Nathalie . All rights reserved.
//

import Foundation

//print("How many do you take?")
//let itemNum = readLine()!
//let itemNumAsInt = Int(itemNum)!
//let itemNumAsPositiveInt = abs(itemNumAsInt)
//if itemNumAsPositiveInt == 1 || itemNumAsPositiveInt == 0{
//    print("You are a good person.")
//} else {
//    print("You are a selfish person.")
//    break
//}



let filePic = """
dBBBBBBBBBBBBBBBBBBBBBBBBb
BP  YBBBBBBBBBBBBBBBBBBBBBBBb
dB   YBb   CONFIDENTIAL  YBBBb
 dB    YBBBBBBBBBBBBBBBBBBBBBBBb
  Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
   Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
    Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
     Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
      Yb    YBBBBBBBBBBBBBBBBBBBBBBBb
       Yb   dBBBBBBBBBBBBBBBBBBBBBBBBb
        Yb dP=======================/
         YbB=======================(
          Ybb=======================\
           Y888888888888888888DSI8888b
"""

let demon1 = """
                        :::!~!!!!!:.
                   .xUHWH!! !!?M88WHX:.
                .X*#M@$!!  !X!M$$$$$$WWx:.
               :!!!!!!?H! :!$!$$$$$$$$$$8X:
              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:
             :!~::!H!<   ~.U$X!?R$$$$$$$$MM!
             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!
               !:~~~ .:!M"T#$$$$WX??#MRRMMM!
              ~ ?WuxiW*`   `"#$$$$8!!!!??!!!
             :X- M$$$$       `"T#$T~!8$WUXU~
            :%`  ~#$$$m:        ~!~ ?$$$$$$
          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"
.....   -~~:<` !    ~?T#$$@@W@*?$$      /`
W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :
#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`
:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~
.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `
Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!
$R@i.~~ !     :   ~$$$$$B$$en:``
?MXT@Wx.~    :     ~"##*$$$$M~
"""


let demon2 = """
                       ___=+++.
                      :==+++=+:  ._=++=+=+;.
                  .___;---==+++.=+=+++++++--;.
          ___=+++=+==+=      -`. -:==+;`    :+;.
        _=+==+++=++;-==+.      :  :         :=++.
     ..:=+..+++;`.....+=+  ___===-;;.=+_    ;++=:
   . ..;+.=+;-`. __......===+       =++=++.;+=++`
  ;+...--.....;++=+;__;++=;  -.     `+++++=++++;
 :=+++;........-+;` =+=++++.         `+++=+++++;__.
.=+++=:.......__;++=++---;;'   .;;;.  `+--;  ==+=+:
;+++=+:.....=+=+=+..++=++.~    '   ``  i  =;_-=+++
++ --+- ;+::==+++++;;-.=+-      .+-:  =..: ====++-
+;`..+:--=. `==+++`. .++=-     -.c).+ ==.-+=+++++
 .._;-`.- -.-.-.-. ::=+=;-       ~ `  =+-.-==++;-`
 :=+;_`.`.....:===+==+=-'           : ;-.= -=+;
 :=++=;`.....;==++-=.+-'        .    .=._. .=`
 -=++++`...`____+._=,-'     `   '    ; . .. =
 :=++=:....-=+=+..++._'             ; .-.  +
 :=++;...-:=+=+=..++'      -;;;;'  -    .'
 =++;`....-:+=...==+.        ~~   -
  .........+:==.+=++;  ._        :'
   ........:==+==+-:        - '   .
       ......+==+
                                    `:.__
                                           ~~sc--.._
"""

let stranger = """
      4UUUUUUUUUUUUUUUUUUUUU!!!UUX!!!!!!!!!!!!!!!!!!!!XUUUUUUUUUUUUUUUUUUUUUUX~
     4$$$$$$$$$$$$$$$$$$$$#~~<@$$!~~~~~~~~~~~~~~~~~~~~~9$$$$$$$$$$$$$$$$$$$$$$
     M$$$$$$$$$$$$$$$$$$*~~~~!$$F~~~~~~~~~~~~~~~~~~~~~~~$$$$$$$$$$$$$$$$$$$$$$>
     '$$$$$$$$$$#####!~~~~~~~!$$!~~~~~~~~~~~~~~~~~~~~~~~~~#$$$$$$$$$$$$$$$$$$$>
      4$$$$$$$#~~~~~~~~~~~~~~~9$k~~~~~~~~~~~~~~~~~~~~~~~~~~~~$$$$$$$$$$$$$$$$$k
      d$$$$$$R~~~~~~~~~~~~~~~~~R$k~~~~~~~~~~~~~~~~~~~~~~~~~~~~#$$$$$$$$$$$$$$$$
   'k4$$$$$$$R~~~~~~~~~~~~~~~~~~#ZX~~~~~~~~~~~~~~~~~~~~~~~~~~~~$$$$$$$$$$$$$$$"
    '$$$$$$$$R~~~<::::~~~~~~~~~~~~!?<~~~~~~~~~~~~~~~~~~~~~~~~~~$$$$$$$$$$$$$$
      ^#$$$$$$~~!MMMMRR$$eii:~~~~~~~~~~~~~~~~~~~~~:iied$$$RMX~~$$$$$$$$$$$$F
         '$$$$~~~?MM888888$$$$$i:~~~~~~~~~~u@$$$$$$BB888MMMM~~~$$$R#~$$$$$"
          `#$$~~~~~!M$$$$$$$WBP8$k~~~~~~~~$$B@#B$$$$$$$RM*!~~~~$$~~~~$$$$
          Jr$$~~~~~~~#L R$$$F^T$$$~~~~~~~M@RMF #$$$F.dR!~~~~~~<$!~~~$$$$
        .@$R4$~~~~~~~~~~~~~~~~~~~~!~~~~~H~~~~~~~~~~~~~~~~~~~~~4$~~~$$$$\
      :@$$$R~$~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~M%~~$$$$#
    x$$$$$$$>~k~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~$~TM$$$F
  $$$$$$$PX$$$$$:~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~d$$$$B.9BL
 4$$$$$$B$$$$$$$~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<$$$$$$!$$R
J$$$$$$$$X$$$$$$?B~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<$$$$$$RW$$F
$$$$$$$$$B?$$$$$X~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~M<7$$$?$$$$
$$$$$$$$$$$$WWW$R~~~~~~~~~~~~~~~~$N>~~<@$!~~~~~~~~~~~~~~~~~~$$$$$$$$"
$$$$$$$$$$$$$$$T?k~~~~~~~~~~~~~~~~~?$@!~~~~~~~~~~~~~~~~~~~~<$$$$$
$$$$$$$$$$$$R!!!!M>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~M$$$$
$$$$$$$$$$!!!!!!XW$:~~~~~~~~~~~X+?T?X:+TT%n:~~~~~~~~~~~~~~@$$$$
$$$$$$$T!!!!!!W$$$$B:~~~~~~~~"M????X!!X!????#"~~~~~~~~~~~@$$$$
$$$$$?!!!!!!X$$$$$$$N:~~~~~~~~~t!!!!!!!!!!!!~~~~~~~~~~~X?!!#$$$$.
$$$R!!!!!!!!$$$$$$$$$$i~~~~~~~~~~~!h::h!!~~~~~~~~~~~~:*!!!!!!#$$$N
$T!!!!!!!!!8$$$$$$$$$$$$:~~~~~~~~~~~~~~~~~~~~~~~~~:@!~E!!!!!!?$$$$c
!!!!!!!!!!9$$$$$$$$$$$$$$$i~~~~~~~~~~~~~~~~~~~~~~:@!~~~E!!!!!!!!$$$$N
!!!!!!!!!!$$$$$$$$$$$$$$$$$$L~~~~~~~~~~~~~~~~~~<8!~~~~4!!!!!!!!!!?$$$$L
!!!!!!!!!M$$$$$$$$$$$$$$$$$$$$i:~~~~~~~~~~~~~:@"~~~~~~4!!!!!!!!!!!!$$$$$
!!!!!!!!X$$$$$$$$$$$$$$$$$$$$$$$$beuuuuuuze@$F~~~~~~~~@!!!!!!!!!!!!!CHAT95
"""
//
//while offerChoiceLoop {
//    print("The stranger turns away from you and looks around the area as if formulating a plan.")
//    let offerChoice = readLine()!
//    let offerChoiceAsInt = Int(offerChoice)!
//    switch offerChoiceAsInt {
//    case 1:
//        offerChoiceLoop = false
//        print("ok")
//    default:
//        print("The stranger smirks at you. 'I said take one.'")
//    }
//
//}

var file = (Name: "Robin Miller", Age: 24, Bio: "The test subject is considered highly dangerous and should be kept in containment at all costs. Has been exhibiting psychopathic and schizophrenic tendencies. Pulse is arrythmic. MRI and polysomnography reveal severe physical trauma to the frontal lobe and abnormally quick heart rate during REM.")

var hasKey: Bool = false
var sawFile: Bool = false
var Sanity: Int = 3
var hasKilled = false

var offerChoiceLoop = true
var beginningChoiceLoop = true
var directionChoiceLoop = true
var stressChoiceLoop = true
var keyChoiceLoop = true
var strangerChoiceLoop = true
var fightChoiceLoop = true
var elevatorChoiceLoop = true
var skeletonChoiceLoop = true


while beginningChoiceLoop {
    print("You wake up in a daze, your vision slowly coming back to your eyes as you realize you are in a room that is not familiar to you. Holding your throbbing head, you pick yourself up from the cold, grimey floor and look around inside what appears to be some small abandoned room. It is entirely empty and white, save for the mold adorning the walls, a small shutter closet, and the single dim lightbulb above you.")
print("The searing migraine in your head reminds you of the fact that you have no recollection of who you are or what you are doing here. You feel scratchy fabric on your body. It's a hospital gown.")
print("You suddenly hear footsteps outside. Your eyes dart to the closet beside you.")
print("What do you do?")
print("Open Door        Hide in Closet")
let beginningChoice = readLine()?.lowercased()
switch beginningChoice {
case "open door":
    beginningChoiceLoop = false
    Sanity -= 1
    print("You hesitantly walk up to the door and push it open, your fingers trembling with anticipation, expecting the worst... and you find nothing. Curiously, there is no one here.")
    print("You head out of the room and into the dark hallway. The lights are flickering ominously as you observe your surroundings; nothing but more doors aligned along the hall. The darkness prevents you from being able to see where the hallway ends and the ceilings appear to go on forever. Your pulse starts to quicken as you wonder how you are going to get out of this place.")
    print("You suddenly hear a bloodcurdling scream coming from your left...")
    print("Which way will you go?")
    print("Left        Right")
    while directionChoiceLoop {
        let directionChoice = readLine()?.lowercased()
        switch directionChoice {
            case "left":
        directionChoiceLoop = false
        Sanity -= 1
        print("Deciding to head left towards the scream, you leave the room behind you. A strange breeze flies past your face as you walk past the rows of doors. You are aware of how foolish you might be by following the screaming, but your curiosity demands satisfaction.")
        print("Along your way you notice an open door and decide to peek inside.")
        print("It appears to be a small office complete with a small desk and some filing cabinets. Uninterested, you are about to leave the room when you suddenly see something in the corner that makes your heart skip a beat.")
        print(demon1)
            print("It takes every ounce of restraint in your body to resist screaming when you realize what you are looking at. There's a half-rotting skeleton sitting in one of the corners of the office. It has something around its neck on a cord... It looks like a key?")
            print("What do you do?")
            print("Grab Key         Leave")
        while skeletonChoiceLoop {
            let skeletonChoice = readLine()?.lowercased()
            switch skeletonChoice {
            case "grab key":
                skeletonChoiceLoop = false
                print("You chose to grab the key.")
            case "leave":
                skeletonChoiceLoop = false
                print("You did not take the key.")
            default:
                print("You have to make a choice.")
                print("Grab Key           Leave")
        }
        }
        directionChoiceLoop = false
        print("You decide to head right, away from the scream. Beads of cold sweat run down your face as you imagine all the possible reasons for why a person would scream like that. Were they being attacked by the same thing that was walking right outside your door just mere moments ago? Were you next?")
        print("Your thoughts are interrupted by the sight before you. You were so engulfed in your thoughts that you did not even realize you had left the hallway and arrived in a gigantic lobby. The soft carpet brushes against your bare feet; a welcome change from the cold tile from mere moments ago. A half-broken chandelier hangs above a series of mahogany desks and lint-infested couches, and the fact that you can't see where the chandelier begins because of how high the ceilings are is slightly terrifying.")
        print("You see that the tables are drowning in paperwork and, ever curious, you walk over to one of the desks to examine the texts. Most appear to be the files of patients. You peer at one with the words 'CONFIDENTIAL' adorning the cover.")
        print(filePic)
        print(file)
        print("Scanning the paper, your eyes squint in thought. You have no idea who this person is, but you hope that they are not still here.")
            sawFile = true
            default:
        print("Clear your head and pick again.")
        print("Left         Right")
    }
    }
case "hide in closet":
    beginningChoiceLoop = false
    print("You immediately tiptoe to the closet as fast as you can and slide it open, squeezing your body between the doors and whatever lay behind you in the darkness. You shut the doors and fall to the floor, hugging your knees. The second you do so, the door squeaks open as someone walks inside.")
    print("You hear feet slowly walking around the room, as if searching for something. You debate on peering through the shutters to get a better peak, but you do not dare. You cannot pinpoint it, but something about this person's presence is making you extremely uneasy. Your heart sinks into your stomach at the sound that follows.")
    print("c̸̢̳̮̩̺̽̒͛̇͂́̕͟o̷͍̣̯̗̰̹̺̰̪͛͒́̾̇́͆̌̕͢͞m̧̝͕͎̲̹̞̣͊̀̅͂̕͢͟ę̵̘̣̳̹͚̖̃̊̑̃̒͐͆̕ o̵̧͔̲̯̦̘̖̟̟̣̊̒̀̓̅͂̇̚͝u̡̲͎̘͖̩̜͇̻̎́̓͒͆̍͘͡t̡̛̲̩̣͔͕̻̔̈̓͌̉̔̑̕͜͠")
    print("Your eyes widen in horror at the sound of that voice. It does not even sound human. There is no way it is human. It is terrifying enough to strike so much fear into your heart that your body becomes paralyzed; you fully believe that this is where you die. You try to refrain from screaming while desperately trying to think of something as you continue to stare helplessly at the pacing feet.")
    print("C͎̹̠̠̳͊͋̄̓͌̇̈̉̓͜Ợ̸̦͚̺̜̮͓͑̑̍̈̏̐̕̚͟͝ͅM̸̨͎͚̹̭͎̀̉̏̏̆̏͆͂͐E̢͖̣͎̜̯̻̲̤͐̀͂͐̉͐̓̇̅͢ O̸͚͈͚̹̞̘̟̽̒́͌͐̽̕͝͞Ù͈̯̲̳͈̭͋̇̿́̌̑̕͝͝T̵̨̛͇̜̙̱̥͔̹̼̮͂̐͗̀̇̈")
    print("Wait      Confront")
    while stressChoiceLoop {
        let stressChoice = readLine()?.lowercased()
        switch stressChoice {
            case "wait":
                stressChoiceLoop = false
                for number in 1...5 {
                    print(String(number) + "...")
        }
                print("You squeeze your eyes shut and wait, counting mentally to yourself. After what feels like hours, you finally hear the footsteps exiting the room. You slip back out from the closet doors and decide to leave the room, but not before something on the ground catches your eye.")
                print("🗝")
                print("It looks like some kind of key. It must have been dropped by... whatever that thing was.")
                print("Take it?")
                print("Yes      No")
                while keyChoiceLoop {
                    let keyChoice = readLine()?.lowercased()
            if keyChoice == "yes" {
                keyChoiceLoop = false
                hasKey = true
                print("You decide to pick up the key and head back out into the hallway.")
            } else if keyChoice == "no" {
                keyChoiceLoop = false
                print("You do not pick up the key and head back out into the hallway.")
            } else {
                print("Make up your mind.")
                print("Yes      No")
                    }
        }
        print("You head out of the room into a dark hall. The lights are flickering ominously as you observe your surroundings; nothing but more doors all aligned along the hallway. The darkness prevents you from being able to see where the hallway ends and the ceilings appear to go on forever. Your pulse starts to quicken as you wonder how you are going to get out of this place.")
        
            case "confront":
                stressChoiceLoop = false
        
                Sanity -= 1
                print("You decide that if you truly believe you are to die, you might as well die fighting for your life. Not knowing from where you muster your sudden courage, you brace yourself and burst through the closet doors, ready to bolt through the room and into the hall. However, you stop in your tracks when you look at the figure before you.")
            print(demon2)
                print("It's... a girl?")
                print("You gasp in astonishment. She is really small... no way she is any older than eight or nine. A big pink bow adorns her golden blonde curls. How is this possible? The person with the voice that sent such intense fear into your head is this little girl? And why is she here?")
        print("À̻͓̤͉͉̪͈̓͗̓͂̂̒̄͢ŗ̶̛̖̮̖̠̗͔͎̀͂̍́͑͘͘͢͠E̸͚̦̞̳̻̰̺̞̓̊͒̀͗̆̉̇͘͞ Y̸͔͕͔̤̯͈̠͉̰̦͑͊̑̀͠͝Ō̧̳͉̞̲̪̻̥͑̔̈͘͘͜͡ụ̲̝͈̯̓̌̽̓̀ ȃ̖̣̠̟̹͇̆̄͆̎̈́́͡F̛̥̯̗̯͕͍͚̎̌͊͋̏͐̋͒͟ͅR̨͙̦̹̯̻̾̇́̀̚͟A̸̧̺͙̙̮͍͖̤̳̦͆̆͂̓͘I̷̧̩̟͖͍̟̙͍͒̈́̾̒̎̐̑͂̕͟d̡̬̭̙͕͖̬͍̦͙̅̊̔͌̀͊̄̉͗?̷̧͎͖̻͍̳̀̋̏͊̃͋̚")
                print("Her eyes become slits filled with hatred as she gives you a maniacal grin and inches toward you. You are bigger than she is, but your gut knows that she has the power to kill you. You can feel yourself losing your mind as her words echo over and over in your head. This isn't a girl; this is a monster. Her arm reaches for your neck. You need to do something.")
                print("Punch        Kick")
                    while fightChoiceLoop {
            let fightChoice = readLine()?.lowercased()
            switch fightChoice {
            case "punch":
                fightChoiceLoop = false
                hasKilled = true
                print("Gathering your fingers into a fist, you wind your arm back before slamming it right into the girl's face.")
                print("A̶̡̨̦̞̞͎̙̒̋̀͐̑̚̚͞ͅU̵̳̻̤̪̯͔̩̾͂͗̊́̔̇͜͝G̢̧͙̬̭͖̬̀͗̑̃̉̋̂͗͟Ĥ̶͍̤̺̘̟͖̻̙͚̒̍͆͆̈̀͊͞Ḩ̷͉̻̱̞̱͈͍͖̆́̋̓̕H̷̛̫̻̝͓̠͉͉̺́̀̇̽͊͞H̲̩̯̲̦͍̤͓͎̓̋̒͌̕H̢̛͔̮͓͙̙͚͎̓́̈́̅̈̌̓͟Ḫ̸̜̬̺̭̺͚̹̉̊̎̒͑̾̊͘͜")
                print("You hear a loud crunch before her screams fill the room. The force of your punch causes her to slam back into the floor before combusting into dust.")
                print("She's gone.")
            case "kick":
                fightChoiceLoop = false
                hasKilled = true
                print("You channel all of your fear into rage and slam your bare foot straight into her stomach.")
                print("A̶̡̨̦̞̞͎̙̒̋̀͐̑̚̚͞ͅU̵̳̻̤̪̯͔̩̾͂͗̊́̔̇͜͝G̢̧͙̬̭͖̬̀͗̑̃̉̋̂͗͟Ĥ̶͍̤̺̘̟͖̻̙͚̒̍͆͆̈̀͊͞Ḩ̷͉̻̱̞̱͈͍͖̆́̋̓̕H̷̛̫̻̝͓̠͉͉̺́̀̇̽͊͞H̲̩̯̲̦͍̤͓͎̓̋̒͌̕H̢̛͔̮͓͙̙͚͎̓́̈́̅̈̌̓͟Ḫ̸̜̬̺̭̺͚̹̉̊̎̒͑̾̊͘͜")
                print("You hear her cries of pure pain as she slams into the wall and combusts into dust upon impact. ")
            default:
                print("Pick an option before she kills you.")
                print("Punch        Kick")
            }
            }
            print("You place your hands on your knees and try to maintain your balance as you stare at the brown tile floor. You have no idea what is happening or what that... thing wanted with you, but you are more determined than ever to get the hell out of this place. You quickly leave the room behind you and into the hall.")
            
    default:
        print("Make a valid decision. Hurry, you do not have much time.")
        print("Wait         Confront")
        }
    }
default:
    print("Try again!")
}
}
print(stranger)
print("")
if Sanity > 3 {
print("'Hey.'")
} else {
    print("'H̴̘̦͈͉̥̞̽̎͆͒͗̾e̙̪̥͍̟͚͎̗͆̓̿̄̾̄͝Ỳ̛̻̯̺͍̯͉͖̣̅̔̆̿̓͘'")
}
print("You turn around at the sound of the voice. It is someone walking towards you in the middle of the hall. You keep your gaze on them as you cautiously take some steps back.")
print("'Relax. I'm not gonna hurt you, I'm in the same position as you; I just wanna get out of here. I saw you and knew you weren't one of them, so... I figured my chances of getting out of here might improve if we work together.'")
print("The stranger doesn't seem very threatening. At least until you notice what they are wearing. This person is wearing a hospital gown just like you, except... Theirs is covered in blood.")
print("You stare in awe, unsure of what to think. They raise an expectant eyebrow at you, awaiting a response.")
print("One of Them?        Point to Blood       Go Away")

while strangerChoiceLoop {
let strangerChoice = readLine()?.lowercased()
switch strangerChoice {
case "one of them?":
    strangerChoiceLoop = false
    print("The strangers' eyes widen. 'Yeah, one of the crazy monster things? How have you not come across them?' They eye you suspiciously. 'Are you sure you aren't one of them?'")
case "point to blood":
    strangerChoiceLoop = false
    print("The stranger realizes what you are pointing at, then glares at you. Their dark eyes sink into you like knives. They say nothing.")
case "go away":
    strangerChoiceLoop = false
    Sanity -= 1
    print("The stranger sighs, giving you a pitying look. 'Look, I know this sucks. But I promise I only want to help you.' Their thumb slides across your cheek. The strangers' eyes are warm. 'I'll explain everything while I get us out of here, yeah?'")
default:
print("The stranger cannot understand. Try again.")
    print("One of Them?     Point to Blood      Go Away")
}
}
print("The stranger takes out a capsule from their pocket and offers it to you. You stare at it. It has pills inside of it.")
print("'You can take just one. They'll make you feel better. I found them in a supply room. They help you control your fear a little bit.")
print("Enter the number you take.")
while offerChoiceLoop {
    let offerChoice = readLine()!
    let offerChoiceAsInt = Int(offerChoice)!
    switch offerChoiceAsInt {
    case 1:
        offerChoiceLoop = false
        print("You grab a pill and swallow it.")
    default:
        Sanity -= 1
        print("The stranger smirks at you. 'I said take one.'")
    }
}
print("Satisfied, the stranger turns away from you and looks around the area as if formulating a mental plan. 'I've been looking for a way out of the building, and it's proving more difficult than I thought.' They shake their head. 'There aren't any windows in this place, and I haven't found any stairwells either.' They frown at you. 'I know for sure the elevator is a way out, but it requires a key to work, and I haven't found any key.")
while hasKey {
     while elevatorChoiceLoop {
            print("You suddenly remember the key that you found earlier. Do you show it to the stranger?")
            print("Yes      No")
        let elevatorChoice = readLine()?.lowercased()
            switch elevatorChoice {
            case "yes":
                elevatorChoiceLoop = false
            print("The stranger notices the key dangling from your hand. You tell them that you found it on the floor.")
            print("'Whoa.' They stare at the key before grabbing it from your hand and flashing you a grin. 'Well, cmon, let's try it out. This might be our ticket out of this place.'")
            print("Eventually you reach a giant pair of steel elevator doors after walking down another long hallway. 'Aaaaaand...' They insert the key into the keyhole next to the elevator and sure enough, it's a perfect fit. The elevator doors open. The stranger turns to you and smiles before quickly putting the key back in their pocket.")
            print("'Finally, an end to this misery.'")
                if Sanity <= 1 {
                    print("There was a news story that blew up about an insane person at the asylum in town. They had no recollection of being a patient there and insisted on escaping. Witnesses describe seeing the patient talking to someone about ending their misery before jumping out of a window and plummeting to their death.")
                    print("THE END. TRY AGAIN?")
                    break
                } else {
                    print("You manage to escape the asylum. You win!")
                    break
                }
            case "no":
                print("You shrug.")
                print("'Oh well. I guess we can keep looking for something.'")
                print("Time passes by and you and the stranger are unable to find an exit. Hours turn into days and days turn into weeks.  Eventually the stranger fails to show up at all.")
                print("You are unable to escape and eventually go insane and die.")
                elevatorChoiceLoop = false
            default:
                print("Make a decision.")
                print("Yes      No")
            }
            }
    }
