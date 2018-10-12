//
//  main.swift
//  Text Based Adventure
//
//  Created by Pritesh Nadiadhara on 10/10/18.
//  Copyright © 2018 Pritesh Nadiadhara. All rights reserved.
//

import Foundation

////print("Enter your workout: (swin), (bike), (run)")
//////String? - optional //swift only, not in objective c
////if let response = readLine() {  // unwraps an optional
////    switch response {
////    case "swim":
////        print("bring your goggles")
////    case "bike":
////            print("bring helmet")
////    case "run":
////        print("bring good shoes")
////    default :
////        print ("Not a workout")
////        print ("Enter Input Again")
////    let option2 = readLine ()! // ! force unwraps Danger! not optimal
////        if option2 == "rest"{
////            print("Recovery Day")
////        }
////        }
////} else{
////    print("value does not exist")
////}
////
//
//
////print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters
////
////let UpOrDown = readLine()!
////var weapon = "" //Set variables here and you can change and use their values later
////var eggExploded = false
////switch UpOrDown {
////case "Up":
////    print("You see a basket of eggs.  How many do you take?")
////    let eggNum = readLine()!
////    let eggNumAsInt = Int(eggNum)!
////    for currentEgg in 1...eggNumAsInt {
////        print("You carefully remove egg number \(currentEgg)")
////        if currentEgg == 4 {
////            print("It was a trap!  The egg explodes")
////            eggExploded = true
////        }
////    }
////    if !eggExploded {
////        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
////    }
////    //More decisions ahead! Use conditionals and switch statements here
////
////case "Down":
////    print("Down you go!")
//////Instructions for the "Down" option ahead!
////default:
////    print("You stand your ground. Choose a weapon")
////    weapon = readLine()!
////    //Fighting conditionals ahead!
////}
////
////if weapon != "" {
////    print("You survived your first ordeal and evan have a \(weapon) to take home")
////}
////if eggExploded {
////    print("Bad luck!  Don't take so many eggs")
////}
//
//
///// nested switch cases
////print ("Enter a,b, or c")
//var loopTest = true
//
////let initial = readLine()!
//
////for _ in 0...2 {
////
////    print ("Enter a,b, or c")
////
////    let initial = readLine()!
////
////
////    switch initial {
////    case "a":
////        print("a pressed")
////        break
////
////    default:
////        print("noting entered")
////    }
////}
//
////func login() {
////    print ("Enter a,b, or c")
////
////    let initial = readLine()!
////
////
////    switch initial {
////    case "a":
////        print("a pressed")
////        break
////
////    default:
////        print("noting entered")
////        login()
////    }
////}
//
////login()
//let response = readLine()
////Int(response)//converts readLine from string to int. use range to keep response from crashing
//    // redLine()! force unwraps if you use bang [USE if error shows]
// print("Enter a,b, or c")
// let initial = readLine()
//switch initial {
//case "a":
//    print("A")
//    // While Loop that allows for wrong inputs, progresses only with accepted answer
//    while loopTest {
//        print ("type x,y,or z")
//       let loopTestV = readLine()
//    switch loopTestV {
//        case "x":
//            print("X")
//            loopTest = false
//        case "y":
//            print("Y")
//            loopTest = false
//        case "z" :
//            print("Z")
//            loopTest = false
//        default :
//            print("not valid: type x,y,or z")
//               loopTest = true
//        }
//    }
//case "b":
//    print("B")
//case "c":
//    print("type d,e, or f")
//    //switch nested in parant switch, works
//    let initial2 = readLine()
//        switch initial2 {
//        case "d":
//            print("c --> d")
//        case "e":
//            print("c -->e")
//        case "f" :
//            print("Even Further Beyond")
//        default :
//            print("Done Under")
//    }
//
//default :
//    print("done")
//}

// Code Requirements
//Your command line app must build and run with no compiler errors or warnings
//Have at least 10 opportunities for the user to make decisions
//Have at least one opportunity where the user will enter a number (see converting Strings to numbers)
        //How many prior investigations character has been on(number determines how expereiced the character is) how many crimes has sherlock holmes solved?
//Use both Switch statements and If/Else Statements
//Use both type annotation and type inference to set variables
//Use at least one tuple in your code
//Use at least range in your code
//Use a for loop in your code
//Use a while loop in your code


//Story line path
// Build character(Use tuples to save character stats
    // character features affect modifiers i.e. glasses reduce perception
    // has either HP or sanity. pick one for easier programming
// story progression

    // start at entrance
    // find simple clues/tools to beat corbitt
    // head up stairs first
    // meet requirements to open basement
    // make dex save falling down stairs?

//  if let stringAsInt = Int(slvdS) {
//  stringAsInt
//    }

var perception = 0
var strength = 0
var intelligence = 0
var age = 0
var casesSolved = 0
var rng = Int.random(in:0...2)
var preperation = 0
var endGame = true

print("""
    It's 1920's Boston. Your're a Private Investigator who's just been hired by a landlord to investigate some strange happening at one of his properties. Before we get started, let's learn a little more about you!
""")
print("")

print("Lets build your investigator")
print("")


//Determine Perception Modifier

var visionLoop = true
while visionLoop {
    print ("""
Does your investigator have good, or bad vision vision?
Type: good or bad
""")
        let vision = readLine()
        switch vision {
        case "good":
            print("Your vision is 20/20 and nothing escapes your gaze")
            print("")
            perception += 1
            visionLoop = false
        case "bad":
            print("You wear a fashionable pair of glasses")
            print("")
            visionLoop = false
            perception -= 1
        default :
            print("Invalid Response: type good or bad")
            print("")
               visionLoop = true
        }
    }
print (perception)

// convert string to int via Int(readLine())
//Determine strength Modifier

var strLoop = true
while strLoop {
    print ("""
Does your investigator go to the gym often?
Type: yes or no
""")
    let str = readLine()
    switch str {
    case "yes":
        print("You're in peak physcial condition")
        print("")
        strength += 1
        strLoop = false
    case "no":
        print("You count on your natural athleticism to get you through tought spots")
        print("")
        strength -= 1
        strLoop = false
            default :
        print("Invalid Response: type yes or no")
        print("")
        strLoop = true
    }
}
print (strength)



//Intelligence

var intelLoop = true
while intelLoop {
    print ("""
Does your investigator read often?
Type: yes or no
""")
    let str = readLine()
    switch str {
    case "yes":
        print("You've got an expansive knowledge on the world")
        print("")
        intelligence += 1
        intelLoop = false
    case "no":
        print("You've learned all you need to through life experiences")
        print("")
        intelLoop = false
        intelligence -= 1
    default :
        print("Invalid Response: type yes or no")
        print("")
        intelLoop = true
    }
}
print (intelligence)


var ageLoop = true
while ageLoop {
    print ("""
How old is your investigator?
Type any int:
""")

    let ageS = readLine()!
    if let ageS = Int(ageS){
        let age = ageS
    if  age < 18 {
        print("You're a little young to be in this line of work,but alright")
        print("")
        strength -= 1
        ageLoop = false
    }else{
        print("Glad to have you on the case")
        print("")
        strength += 1
        ageLoop = false
    }
    }else{
        print("Invalid Response")
        print("")
        ageLoop = true
    }
}
print(strength)


//Cases Solved
//  if let stringAsInt = Int(slvdS) {
//  stringAsInt
//    }


var slvdLoop = true
while slvdLoop {
    print ("""
"How many cases have you solved in your career?"
""")
    let slvdS = readLine()!
      if let slvdS = Int(slvdS) {
     
        casesSolved = slvdS
    if  casesSolved < 10 {
        print("Just starting in the buisness it looks like")
        print("")
        slvdLoop = false
    }else{
        print("Nice to have an experienced person on the case!")
        print("")
        intelligence += 1
        slvdLoop = false
    }
      }else {
        print("Invalid Response")
        print("")
        slvdLoop = true
}
}
 print(intelligence)

print ("""
        Last but not least, what's your name?
        """)

var name = readLine() ?? "place holder"


var character = (Name: name,Age: age,Csld: casesSolved)

print ("The landlord, Mr. Knott hands you the keys as you both arrive at the property. He tells you that the former tenants, the Macario family were involved in a tragedy. Mr.Knott would like to clear up any mysteries surrounding the events so he can clear things up and restore his good name. As a show of good faith he pays you $25 dollars in advance and says best of luck \(name)." )



var houseLoop1 = true
while houseLoop1 {
    print ("""
"What would you like to do?
Type: enter or observe
""")
    let house = readLine()
    switch house {
    case "enter":
        print("As you enter the house you stand in a hallway. At the farthest point you see stairs that lead upstairs and down stairs. You notice the stairs that go up are broken and there doesn't seem to be another way up. You also notice a few rooms on thre ground floor.")
        print("")
        
        houseLoop1 = false
    case "observe":
        print("The brick building is overshadowed by taller, newer office buildings on either side. The house fronts the street. In the rear are overgrown plantings and a half- collapsed arbor. Access to the rear exists on either side of the residence.Studying the house, the observer is impressed by the way the house seems to withdraw into the shadows cast by the flanking buildings, and how the blank curtained windows hide all understanding of what lies within. Type enter to enter house and continue")
        print("")
        houseLoop1 = true
        
    default :
        print("Invalid Response: Type enter or observe")
        print("")
        houseLoop1 = true
    }
}


// first floor
    //room on the right
    //kitchen
    // stairs up and down

// Loop to explore first floor then end with going down stairs
var houseLoop2 = true
while houseLoop2 && endGame{
    print ("""
Which room would you like to investigate?
Type: kitchen, living room, bathroom, or downstiars when you've finished on the main floor
""")
    let houseHall = readLine()
    switch houseHall {
    case "kitchen":
        print("You look around the kitchen and everything seems to be normal")
        if perception + rng > -1{
            print("As you search for clues you notice a strang flash of light from the corner of your eye. With your quick reflexes you manage to dodge a knife that flew through the air towards you. The knife lodges its self in the wall behind you and the room shows no indication of who could've thrown the knife. With no clues in the kitchen and your near escape from a hazardous kitchen eqipment, you head back into the hall")
            print("")
            preperation += 1
            houseLoop2 = true
            break
        }else{
            print("As you search for clues in the kitchen, from seemingly no where a knife lodges its self in your shoulder. You look around and see no one. You decide it's best not to stick around and leave the house")
            print("You have failed the investigation, and the Corbitt Residence mystery remains a mystery")
            print("")
            endGame = false
            break
        }
        
        
        
    case "living room":
        print("As you enter the living room you see old news papers scattered around.As you examine the news papers you notice a more recent one that reads \(character.Name) has solved \(character.Csld) cases. You've never been interviewed before, so finding a paper with your information is unsettling")
        if intelligence + rng > 1 {
            print("On closer examination you see an unpublished article from The Boston Globe: It states that in 1880, a family of French immigrants moved into the house but fled after a series of violent accidents left the parents dead and three children crippled. In 1909, another family moved in and immediately fell prey to illnesses. In 1914, the oldest brother went mad and killed himself with a kitchen knife, and the heartbroken family moved out. In 1918, a third family, the Macarios, rented the house, but they left almost immediately under mysterious circumstances. With this information in mind, you walk back into the hall")
            preperation += 1
        print("")
        }else{
            print("You look around, but don't find any clues. It feels as though you might've missed something but you don't know what")
        }
        
        print("")
        houseLoop2 = true
        
    case "bathroom":
        print("You walk into the bathroom to find a broken mirror. The bathtub and toilet could use a bit of cleaning. Other than that you don't see anything strange so you decide to head back into the hall")
        print("")
        houseLoop2 = true
        
    case "downstairs":
        print("You decide to head down stairs. The door to the basement has a lock and three bolts, able to be opened from the upstairs side only. Below is the main basement storage room. The stairs are in poor repair and the electric light bulb does not work. As you walk closer to the stairs you have a feeling of dread come over you and that something dangerous awaits. What could it be?")
        print("")
        houseLoop2 = false
        
    default :
        print("Invalid Response: Type enter or observe")
        print("")
        houseLoop2 = true
    }
}


// Basement + run in with mr. corbitt

var houseLoop3 = true
while houseLoop3 && endGame {
    print ("""
The walls of the basement are lined with closely fitted boards. The basement seems smaller than it should and the closely fitted boards seemingly split the room in half. The sensation that something is wrong is now greater than ever. Would you like to keep investigating or leave the house?
Type: investigate or leave
""")
    let houseBase = readLine()
    switch houseBase {
    case "investigate":
        print("As you enter the house you stand in a hallway. At the farthest point you see stairs that lead upstairs and down stairs. You notice the stairs that go up are broken and there doesn't seem to be another way up. You also notice a few rooms on thre ground floor. Which room would you like to investigate first?")
        print("")
        
        houseLoop3 = false
    case "leave":
        print("You're not getting paid enough for this. You decide its best the mysteries of this house remain just that, mysteries.")
        print("")
        print("Game Over")
        print("")
        endGame = false
        houseLoop3 = false
        break
        
    default :
        print("Invalid Response: Type enter or observe")
        print("")
        houseLoop3 = true
    }
}
