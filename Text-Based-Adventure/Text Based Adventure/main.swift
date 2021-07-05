//
//  main.swift
//  Text Based Adventure
//
//  Created by Pritesh Nadiadhara on 10/10/18.
//  Copyright © 2018 Pritesh Nadiadhara. All rights reserved.
//

import Foundation


var perception = 0
var strength = 0
var intelligence = 0
var age = 0
var casesSolved = 0
var rng = Int.random(in:0...2)
var preperation = 0
var endGame : Bool = true

print("""
________________________________________________________________________________________________________________________
    It's 1920's Boston. Your're a Private Investigator who's just been hired by a landlord to investigate some strange happening at one of his properties. Before we get started, let's learn a little more about you!
________________________________________________________________________________________________________________________
""")
print("")

print("Lets build your investigator")
print("")


//Determine Perception Modifier

var visionLoop = true
while visionLoop {
    print ("""
________________________________________________________________________________________________________________________
Does your investigator have good, or bad vision?
Type: good or bad
________________________________________________________________________________________________________________________
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
// print (perception)

// convert string to int via Int(readLine())
//Determine strength Modifier

var strLoop = true
while strLoop {
    print ("""
________________________________________________________________________________________________________________________
Does your investigator go to the gym often?
Type: yes or no
________________________________________________________________________________________________________________________
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
//print (strength)



//Intelligence

var intelLoop = true
while intelLoop {
    print ("""
________________________________________________________________________________________________________________________
Does your investigator read often?
Type: yes or no
________________________________________________________________________________________________________________________
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
//print (intelligence)


var ageLoop = true
while ageLoop {
    print ("""
________________________________________________________________________________________________________________________
How old is your investigator?
Type age(Enter Numerical Value):
________________________________________________________________________________________________________________________
""")

    let ageS = readLine()!
    if let ageS = Int(ageS){
        let age = ageS
    if  age < 18 {
        print("You're a little young to be in this line of work,but alright")
        print("")
        strength += 1
        ageLoop = false
    }else{
        print("Glad to have you on the case")
        print("")
        preperation += 1
        ageLoop = false
    }
    }else{
        print("Invalid Response")
        print("")
        ageLoop = true
    }
}
//print(strength)



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
        preperation += 1
        slvdLoop = false
    }
      }else {
        print("Invalid Response")
        print("")
        slvdLoop = true
}
}
 //print(intelligence)

print ("""
        Last but not least, what's your name?
        """)

var name = readLine() ?? "place holder"


var character = (Name: name,Age: age,Csld: casesSolved)

print ("""
    ________________________________________________________________________________________________________________
    The landlord, Mr. Knott hands you the keys as you both arrive at the property. He tells you that the former tenants, the Macario family were involved in a tragedy. Mr.Knott would like to clear up any mysteries surrounding the events so he can clear things up and restore his good name. As a show of good faith he pays you $25 dollars in advance and says best of luck \(name).
    ________________________________________________________________________________________________________________
    """ )



var houseLoop1 = true
while houseLoop1 {
    print ("""
________________________________________________________________________________________________________________________
"What would you like to do?
Type: enter or observe
________________________________________________________________________________________________________________________
""")
    let house = readLine()
    switch house {
    case "enter":
        print("""
________________________________________________________________________________________________________________________
As you enter the house you stand in a hallway. At the farthest point you see stairs that lead upstairs and down stairs. You notice the stairs that go up are broken and there doesn't seem to be another way up. You also notice a few rooms on thre ground floor.
________________________________________________________________________________________________________________________
""")
        print("")
        
        houseLoop1 = false
    case "observe":
        print("""
________________________________________________________________________________________________________________________The brick building is overshadowed by taller, newer office buildings on either side. The house fronts the street. In the rear are overgrown plantings and a half- collapsed arbor. Access to the rear exists on either side of the residence.Studying the house, the observer is impressed by the way the house seems to withdraw into the shadows cast by the flanking buildings, and how the blank curtained windows hide all understanding of what lies within. Type enter to enter house and continue
________________________________________________________________________________________________________________________
""")
        print("")
        preperation += 1
        houseLoop1 = true
        
    default :
        print("Invalid Response: Type enter or observe")
        print("")
        houseLoop1 = true
    }
}




// Loop to explore first floor then end with going down stairs
var houseLoop2 = true
while houseLoop2 && endGame{
    print ("""
________________________________________________________________________________________________________________________
Which room would you like to investigate?
Type: kitchen, living room, bathroom, or downstiars when you've finished on the main floor
________________________________________________________________________________________________________________________
""")
    let houseHall = readLine()
    switch houseHall {
    case "kitchen":
        print("You look around the kitchen and everything seems to be normal")
        if perception + rng > -1{
            print("""
                ________________________________________________________________________________________________________
                As you search for clues you notice a strang flash of light from the corner of your eye. With your quick reflexes you manage to dodge a knife that flew through the air towards you. The knife lodges its self in the wall behind you and the room shows no indication of who could've thrown the knife. With no clues in the kitchen and your near escape from a hazardous kitchen eqipment, you head back into the hall
               _________________________________________________________________________________________________________
""")
            print("")
            preperation += 1
            houseLoop2 = true
            break
        }else{
            print("""
________________________________________________________________________________________________________________________
                As you search for clues in the kitchen, from seemingly no where a knife lodges its self in your shoulder. You look around and see no one. You decide it's best not to stick around and leave the house
________________________________________________________________________________________________________________________
""")
            print("You have failed the investigation, and the Corbitt Residence mystery remains a mystery")
            print("")
            endGame = false
            break
        }
        
        
        
    case "living room":
        print("""
            ____________________________________________________________________________________________________________
            As you enter the living room you see old news papers scattered around.As you examine the news papers you notice a more recent one that reads \(character.Name) has solved \(character.Csld) cases. You've never been interviewed before, so finding a paper with your information is unsettling
            ____________________________________________________________________________________________________________
            """)
        if intelligence + rng > 1 {
            print("""
________________________________________________________________________________________________________________________
On closer examination you see an unpublished article from The Boston Globe: It states that in 1880, a family of French immigrants moved into the house but fled after a series of violent accidents left the parents dead and three children crippled. In 1909, another family moved in and immediately fell prey to illnesses. In 1914, the oldest brother went mad and killed himself with a kitchen knife, and the heartbroken family moved out. In 1918, a third family, the Macarios, rented the house, but they left almost immediately under mysterious circumstances. With this information in mind, you walk back into the hall
________________________________________________________________________________________________________________________
""")
            preperation += 1
        print("")
        }else{
            print("""
________________________________________________________________________________________________________________________You look around, but don't find any clues. It feels as though you might've missed something but you don't know what
________________________________________________________________________________________________________________________
""")
        }
        
        print("")
        houseLoop2 = true
        
    case "bathroom":
        print("""
________________________________________________________________________________________________________________________
You walk into the bathroom to find a broken mirror. The bathtub and toilet could use a bit of cleaning. Other than that you don't see anything strange so you decide to head back into the hall
________________________________________________________________________________________________________________________
""")
        print("")
        houseLoop2 = true
        
    case "downstairs":
        print("""
________________________________________________________________________________________________________________________
You decide to head down stairs. The door to the basement has a lock and three bolts, able to be opened from the upstairs side only. Below is the main basement storage room. The stairs are in poor repair and the electric light bulb does not work. As you walk closer to the stairs you have a feeling of dread come over you and that something dangerous awaits. What could it be?
________________________________________________________________________________________________________________________
""")
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
________________________________________________________________________________________________________________________
The walls of the basement are lined with closely fitted boards. The basement seems smaller than it should and the closely fitted boards seemingly split the room in half. The sensation that something is wrong is now greater than ever. Would you like to keep investigating or leave the house?
Type: investigate or leave
________________________________________________________________________________________________________________________
""")
    let houseBase = readLine()
    switch houseBase {
    case "investigate":
        print("""
________________________________________________________________________________________________________________________
Upon closer inspection you find one of the boards is lose
________________________________________________________________________________________________________________________
""")
        print("")
        
        houseLoop3 = false
    case "leave":
        print("""
________________________________________________________________________________________________________________________You're not getting paid enough for this. You decide its best the mysteries of this house remain just that, mysteries.
________________________________________________________________________________________________________________________
""")
        print("")
        print("Game Over")
        print("")
        endGame = false
        houseLoop3 = false
        break
        
    default :
        print("Invalid Response: investigate or leave")
        print("")
        houseLoop3 = true
    }
}

if endGame {
print ("""
________________________________________________________________________________________________________________________You decide to pry the board open
________________________________________________________________________________________________________________________
""")
    for _ in 0...abs(strength) {
    print("CREEEEK")
    }
    print("""
________________________________________________________________________________________________________________________You manage to pry the board free
________________________________________________________________________________________________________________________
""")
    }


var houseLoop4 = true
while houseLoop4 && endGame {
    print ("""
________________________________________________________________________________________________________________________Lying motionless and seemingly dead on a pallet in the centre of the room is a drawn, wooden-looking, wizened figure of some six-feet. Skinny and naked, with ghastly wide-flaring, saucer-like eyes and a nose like a knife blade. Some sort of chain rests around his neck. He has lost all hair and his shrunken gums make his teeth look very long. From him comes a sharp, sweet, churning scent, like rotten corn.
Type: investigate or leave
________________________________________________________________________________________________________________________
""")
    let houseBase1 = readLine()
    switch houseBase1 {
    case "investigate":
        print("""
________________________________________________________________________________________________________________________Against better judgment you decide to get closer. As you do the figure turns its head and slowly gets on its feet
________________________________________________________________________________________________________________________
""")
        print("")
        
        houseLoop4 = false
    case "leave":
        print("""
________________________________________________________________________________________________________________________You're not getting paid enough for this. You decide its best to let the authorities deal with a situation like this
________________________________________________________________________________________________________________________
""")
        print("")
        print("Game Over")
        print("")
        endGame = false
        houseLoop4 = false
        break
        
    default :
        print("Invalid Response: investigate or leave")
        print("")
        houseLoop4 = true
    }
}


var houseLoop5 = true
while houseLoop5 && endGame {
    if preperation > 1{
    print ("""
________________________________________________________________________________________________________________________
        The visage of this unnatural creature startles you but you've enough mental fortitude to be able to react. Its do or die, flight or fight time.
Type: fight or run
________________________________________________________________________________________________________________________
""")
    let houseBase2 = readLine()
    switch houseBase2 {
    case "fight":
        if strength >= 1{
        print("""
________________________________________________________________________________________________________________________
Adrenaline courses through your blood and in a moment of immense courage and fear you throw a punch with all your weight behind it. In an instance the head of the undead goes from shoulders to ground. You’ve manage to defeat the ghoul of the Corbit Residence!
________________________________________________________________________________________________________________________
""")
        print("")
        }else{
            print("""
________________________________________________________________________________________________________________________You throw a punch, but it glances off the undead. In your single moment to act your body fails you and you become just another victim or the Corbitt Residence.
________________________________________________________________________________________________________________________
""")
            print("Game Over")
            print("")
            endGame = false
        }
        houseLoop5 = false
        
    case "run":
        print("""
________________________________________________________________________________________________________________________You're not getting paid enough for this. You decide its best to let the authorities deal with a situation like this
________________________________________________________________________________________________________________________
""")
        print("")
        print("Game Over")
        print("")
        endGame = false
        houseLoop5 = false
        break
        
    default :
        print("Invalid Response: investigate or leave")
        print("")
        houseLoop5 = true
    }
    }else{
        print("""
________________________________________________________________________________________________________________________You weren't ready to encounter something like this. Madness consumes your mind and you've become just another victim of the Corbitt House
________________________________________________________________________________________________________________________
""")
        print("Game Over")
        endGame = false
    }
}

if endGame {
    print ("""
________________________________________________________________________________________________________________________Case complete, in your investigation you found that the cause of all the trouble in the Corbitt Residence was thanks to none other than Mr.Corbitt himself, or at least what ever remained of him in the basement of that house.
________________________________________________________________________________________________________________________
""")
          }
