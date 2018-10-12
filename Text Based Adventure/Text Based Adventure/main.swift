//  Text Based Adventure
//  Created by Diego Estrella III on 10/10/18.
import Foundation

var gameStatus = false

print("""
──────────────███████──███████
──────────████▓▓▓▓▓▓████░░░░░██
────────██▓▓▓▓▓▓▓▓▓▓▓▓██░░░░░░██
──────██▓▓▓▓▓▓████████████░░░░██
────██▓▓▓▓▓▓████████████████░██
────██▓▓████░░░░░░░░░░░░██████
──████████░░░░░░██░░██░░██▓▓▓▓██
──██░░████░░░░░░██░░██░░██▓▓▓▓██
██░░░░██████░░░░░░░░░░░░░░██▓▓██
██░░░░░░██░░░░██░░░░░░░░░░██▓▓██
──██░░░░░░░░░███████░░░░██████
────████░░░░░░░███████████▓▓██
──────██████░░░░░░░░░░██▓▓▓▓██
────██▓▓▓▓██████████████▓▓██
──██▓▓▓▓▓▓▓▓████░░░░░░████
████▓▓▓▓▓▓▓▓██░░░░░░░░░░██
████▓▓▓▓▓▓▓▓██░░░░░░░░░░██
██████▓▓▓▓▓▓▓▓██░░░░░░████████
──██████▓▓▓▓▓▓████████████████
────██████████████████████▓▓▓▓██
──██▓▓▓▓████████████████▓▓▓▓▓▓██
████▓▓██████████████████▓▓▓▓▓▓██
██▓▓▓▓██████████████████▓▓▓▓▓▓██
██▓▓▓▓██████████──────██▓▓▓▓████
██▓▓▓▓████──────────────██████
──████
""")
print("")
print("Hello Player 2, Welcome to the Mushroom Kingdom. Mario wants to know your name. Type in your name to start.")
var userName = readLine()!

if userName != "" {
    gameStatus = true
} else {
    print("C'mon Speak up")
    let secondTry = readLine()!
    userName = secondTry
    gameStatus = true
}

while gameStatus == true {

print("\nHello \(userName) its a me Mario. Looks like the princess 👸 has been taken again Mama Mia! I need your help \(userName). Will you join me on an adventure? \"Yes\" or \"No\"")

let action = readLine()!.lowercased()

switch action {
    case "yes":
    print("\nLike you had a choice. Here We Go!!!")
    case "no":
    print("\nTo bad your coming with Me anyway!")
    default:
    print("")
}

print("\nMario forces you outside and you begin your adventure.")
print("\nYou come across two ?-Blocks. Mario the gracious first player that he is let you choose first. Which one do you choose? \"left\" or \"right\"")

let action2 = readLine()!.lowercased()
let leftBlock = "Fire Flower 🔥"
let rightBlock = "Frost Flower ❄️"

if action2 == "left" {
    print("\nYou got a \(leftBlock)")
} else if action2 == "right" {
    print("\nYou got a \(rightBlock)")
}

print("\nMario looks over at you and says thats a nice power-up you got there, be ashamed if you got hit and lost it.")
print("\nPowered up you head off to save the Princess 👸")
print("\nOn your way to castle you and Mario are ambushed by Goombas.")
print("\nMario pushes you foward and says 'Don't just stand there get to work.'")

let goombaNum = Int.random(in: 2...4)

for i in 1...goombaNum {
    if i == 2 {
        print("\nLook out \(userName), more goombas incoming, looks like you got a fight on your hands.")
    }
        print("type jump to attack")
        var _ = readLine()!.lowercased()
        print("\nMario shouts \"Hey you missed one keep going!!!\"")
      
    if i == goombaNum {
        print("Looks like the coast is clear \(userName). Lets get moving.")
        print("\"type\" continue to get going")
        let _ = readLine()!.lowercased()
    }
}


print("\nMario and \(userName) approach the castle where the Princess 👸 is being held.")
print("\nMario ask are ready fight? type \"Yes\" or \"No")

let yesOrNo = readLine()!.lowercased()

if yesOrNo == "yes" {
    switch action2 {
    case "left":
        print("\nAlright \(userName) you got the \(leftBlock) so you take the lead")
    case "right":
        print("\nAlright \(userName) you got the \(rightBlock) so you take the lead")
    default:
        break
    }
} else if yesOrNo == "no"{
    switch action2 {
    case "left":
        print("\nTo bad \(userName) you got the \(leftBlock) so your going first")
    case "right":
        print("\nTo bad \(userName) you got the \(rightBlock) so your going first")
    default:
        break
    }
}


print("\nAs you and Mario appraoch the castle, the pathway looks clear. Suspicous, Mario lets you go first.")
print("\nOut of nowhere Boo 👻 pops out and attacks you.")
print("""
                        BBBBBBBBBB
                            BBBB          BBBB
                      BBBBBB                  BBBB
                  BBBB                            BBBB
              BBBB                                    BBBB
              BB                                          BBBB
              BB                                              BBBB
            BB                      BB                      BB    BB
            BB                        BB                  BB      BB    BBBB
            BB  BBBBBB                  BBBB          BBBB        BBBBBB    BB
          BB  BB      BBBB              BB  BBBBBBBBBB  BB        BB        BB
          BB  BB          BB            BB  BB      BB  BB          BB    BB
          BB    BB          BB          BB  BB      BB  BB          BB    BB
          BB    BB                        BB          BB            BB  BB
          BB      BB                                                BBBB
        BB          BB                  BBBBBBBB  BBBBBB            BB
        BB          BBBBBBBB          BBBB  BB  BBBB  BBBB          BB
        BB                            BB  BB        BB  BB        BB
        BB                            BB                BB        BB
        BB                            BB  BB        BB  BB        BB
        BB                            BBBB  BB    BB  BBBB    BBBB
  BB  BB                                BBBBBBBBBBBBBBBB      BB
    BB                                                      BB
    BB                                                    BB
      BBBBBBBB                                          BB
            BB                                        BB
          BBBBBBBBBBBBBB                    BBBBBBBBBB
                       BBBBBBBBBBBBBBBBBBBBBB
""")
print("\nBoo hit you once and flys away, in the attack you loose your power-up.")
print("\nMario says wow that was a close one, you getting hurt almost messed up my moustache.")
print("\nDon't worry though I saved up a few power-ups. You see Mario rifle though his bag and see he has a 'FireFlower', 'IceFlower', and 'RacoonSuit'. ")

print("\nnYou tell Mario that you want...")
    _ = readLine()!.lowercased()
print("\nand...")
    _ = readLine()!.lowercased()
print("\nMario says no those are a part of my private collection. He reaches to the bottom bag and says here you can have one these.")
print("\nMario pulls out an old dusty Mushroom 🍄 and a cracked Star ⭐️.")
print("\nHere you can have these, but you owe me big time.")

let powerUps = (p1: "mushroom", p2: "star")

print("\nYou and Mario enter the castle, and you see Bowser 🐢 holding the princess 👸.")
print("\nBowser laughs and says your not a very good boyfriend to let your princess 👸 to be captured so easily.")
print("\nMario yells \"Screw you Bowser you going down. Me and \(userName) are gonna puncha ya face.")
print("\nMario turns to and says since you I gave you some fresh new power-ups you got first.")
print("\nChoose which power-up you want to use.")

let powerChoice1 = readLine()!.lowercased()

switch powerChoice1 {
case "mushroom":
    print("\nYou take the \(powerUps.p1). But it was so old it just made you hallucinate.")
    print("\nLooks like that didn't work. You should choose another power-up.")
case "star":
    print("\nYou take the \(powerUps.p2). But the bridge isn't up yet so it was useless.")
    print("\nMario looks at you and says 'Well that was pointless any other bright ideas.'")
default:
    print("\nMario yells at you! Hey Sfigato 'Loser' you don't have that power-up.")
}

let powerChoice2 = readLine()!.lowercased()
switch powerChoice2 {
case "mushroom":
    print("\nYou take the \(powerUps.p1). But it was so old it just made you hallucinate.")
    print("\nLooks like that didn't work. You should choose another power-up.")
case "star":
    print("\nYou take the \(powerUps.p2). But the bridge isn't up yet so it was useless.")
    print("\nLooks like that didn't work. You should choose another power-up.")
default:
    print("\nMario yells at you! Hey Sfigato 'Loser' you don't have that power-up.")
}

print("\nBowser face drops as he watches you contiously fail.")
print("\nBowser says hey man just take the Princess 👸 I... I just can't watch this anymore.")
print("\nThe princess 👸 runs past you and to and into Mario's arms and says thank you Mario for single handedly saving me.")
print("\nBowswer looks over at you and says \(userName) you should look into Pok\u{00E9}mon they wouldn't treat you this way.")
print("")
    
print("""
███▀▀▀██ ███▀▀▀███ ███▀█▄█▀███ ██▀▀▀
██    ██ ██     ██ ██   █   ██ ██
██   ▄▄▄ ██▄▄▄▄▄██ ██   ▀   ██ ██▀▀▀
██    ██ ██     ██ ██       ██ ██
███▄▄▄██ ██     ██ ██       ██ ██▄▄▄

███▀▀▀███ ▀███  ██▀ ██▀▀▀ ██▀▀▀▀██▄
██     ██   ██  ██  ██    ██     ██
██     ██   ██  ██  ██▀▀▀ ██▄▄▄▄▄▀▀
██     ██   ██  █▀  ██    ██     ██
███▄▄▄███    ▀█▀    ██▄▄▄ ██     ██▄
""")

gameStatus = false
}
