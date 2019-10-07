## Text-Based-Adventure

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link to your Pull Request (not your fork!) on Canvas and submit

## Lab 

This lab will build on the skills that you've learned after your first week of programming in Swift!  You will build a command line application that plays a text-based adventure game.  Look [here](https://classicreload.com/zork-i.html) and [here](http://www.bbc.co.uk/programmes/articles/1g84m0sXpnNCv84GpN2PLZG/the-hitchhikers-guide-to-the-galaxy-game-30th-anniversary-edition) for a couple examples of the genre.  Be creative with your app. Apps will be evaluated by the following criteria:   

## App requirements:

<li>Your command line app must build and run with no compiler errors or warnings</li>
<li>Have at least 10 opportunities for the user to make decisions</li>
<li>Have at least one opportunity where the user will enter a number (see converting Strings to numbers)</li>
<li>Use both Switch statements and If/Else Statements</li>
<li>Use both type annotation and type inference to set variables</li>
<li>Use at least one tuple in your code</li>
<li>Use at least range in your code</li>
<li>Use a for loop in your code</li>
<li>Use a while loop in your code</li>
 
 ## Rubric
 
 ![textBasedAdventureRubric.png](./textBasedAdventureRubric.png)

## Hints:

Use the following line to get user input

```swift 
let response = readLine()
//The type of response is Optional String
```

Converting String to a number Type

```swift 
let userEnteredNumAsString = readLine()
let userEnteredNumAsInt = Int(userEnteredNumAsString ?? "") ?? -1
```

Sample code with conditional logic:

```swift
print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters

let UpOrDown = readLine()
var weapon = "" //Set variables here and you can change and use their values later
var eggExploded = false
switch UpOrDown {
case "Up":
    print("You see a basket of eggs.  How many do you take?")
    let eggNum = readLine()
    let eggNumAsInt = Int(eggNum ?? "") ?? -1
    for currentEgg in 1...eggNumAsInt {
        print("You carefully remove egg number \(currentEgg)")
        if currentEgg == 4 {
            print("It was a trap!  The egg explodes")
                eggExploded = true
        }
    }
    if !eggExploded {
        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
    }
    //More decisions ahead! Use conditionals and switch statements here

case "Down":
    print("Down you go!")
    //Instructions for the "Down" option ahead!
default:
    print("You stand your ground. Choose a weapon")
    weapon = readLine() ?? ""
    //Fighting conditionals ahead!
}

if weapon != "" {
    print("You survived your first ordeal and even have a \(weapon) to take home")
}
if eggExploded {
    print("Bad luck!  Don't take so many eggs")
}
```
Treasure Hunt Text Adventure by Chelsi Christmas
```
//
//  main.swift
//  Treasure Island (Text Adventure)
//
//  Created by Chelsi Christmas on 10/7/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

print("Please enter your age")

var userAge = Int(readLine()! ) ?? 18
switch userAge {
case 0...18 :
    print("Sorry, you are too young to play this game.")
case 18... :
    print("Please enter your name")
default :
        print("Please try again.")
}
        
//sleep(2)
var weapon = ("bat", "pillow", "sword", "watergun")
/*weapon.0  = "weapon 1"
weapon.1 = "weapon 2"
weapon.2 = "weapon 3"
weapon.3 = "weapon 4"
 */
var emptyString = ""
let userName = readLine()!


if userName != emptyString {
    
    print("Please enter your place of study")
}

var userSchool = readLine()!
if userSchool != emptyString {
    
    print("Please enter the name of a friend")
}

var userFriend = readLine()!
if userFriend != emptyString {
    
    print("Please enter the name of a city or town")
}

var userCityTown = readLine()!
if userCityTown != emptyString {

    
    print("You are ready to begin! Hello \(userName) and Welcome to Treasure Island!" )
}
sleep(2)
    
    print("A new underwater train has been introduced to the public and a select few students from \(userSchool) have been invited on its first trip to Treasure Island. Treasure Island is \(userCityTown)'s newest tourist attraction and was once the location of a prison that held the country's most dangerous prisoners. You've heard rumors that some of the prisoners escaped and still roam the island, but recent news reports in light of the island's rennovation have said that these rumors are false and there's nothing to worry about. Would you like to go to Treasure Island? If your respone is Absolutely not! ENTER decline. If it sounds interesting and you'd like to give it a shot, ENTER accept.")

var firstDecision = readLine()!
switch firstDecision {
case "accept" :
    print("The night before the trip you get an email that says, while on the island you can play a game and win a prize! You find out that you are also allowed to excange your ticket for two tickets and bring a friend. You are allowed to compete for the prize alone but if you bring a friend it is MANDATORY that you split the prize. If you'd like to compete for the prize alone, ENTER 1. If you'd like to bring a friend along and split the prize, ENTER 2" )

case "decline" :
    print("Back to the ol'grind. You get to class the next day and are told that the invitation has been extended to members of your class for one more day. If you want to go about your day as usual ENTER 1. If you want to accept the invitation and on the trip ENTER 2."  )
default:
    print("Not a valid entry")
}
var secondDecision = readLine()!
    if secondDecision == "decline" {
    print("You never make it to Treasure Island. GAME OVER")
} ; if secondDecision == "accept" {
            print("The night before the trip you get an email that says, while on the island you can play a game and win a prize! You find out that you are also allowed to excange your ticket for two tickets and bring a friend. You are allowed to compete for the prize alone but if you bring a friend it is MANDATORY that you split the prize. When you arrive at the train station the net day, the ticket agent asks if you'd like 1 ticket or 2." )
} ; if secondDecision == "1" {
print("You arrive on the island with the rest of your classmates and as you begin a group tour of the island  you notice a tall dark building with lights on at the top floor only. The building is seperated from your group[ by a large canyon. The tour guide warns your group to stay together at all times but you notice a much smaller gap sanyon taht you think you can jump over if you time it juuuuust right. If you want to stay with the group ENTER stay. If you decided to take a leap of faith ENTER jump.")
} ; if secondDecision == "2" {
    print("When you arrive at the train station the next day you find out that your friend is not guaranteed to be able to come on the trip. If they are allowed to come on the trip you will not know until after you have arrived on the island. The ticket agent asks you again how many tickets you want. For 1 ticket, ENTER 1. For 2 tickets, ENTER 2.")
}
var thirdDecision = readLine()!

if thirdDecision == "jump" {
    print("You slip off the edge and fall to your doom. GAME OVER")
} ; if thirdDecision == "stay" {
    print("You stay with the group and continue the tour. Once the tour is over you return to class as scheduled. GAME OVER")
} ; if thirdDecision == "1" {
    print ("You arrive on the island with the rest of your classmates and as you begin a group tour of the island  you notice a tall dark building with lights on at the top floor only. The building is seperated from your group by a large canyon. The tour guide warns your classmates to stay together at all times but you notice a much smaller canyon that you think you can jump over if you time it juuuuust right. If you want to stay with the group ENTER stay. If you decided to take a leap of faith ENTER jump.")
} ; if thirdDecision == "2" {
    print("You arrive on the island with the rest of your classmates and as you begin a group tour of the island  you notice a tall dark building with lights on at the top floor only. The building is seperated from your group by a large canyon. The tour guide warns your classmates to stay together at all times but you notice a much smaller canyon that you think you can jump over if you time it juuuuust right. If you want to stay with the group ENTER continue with group. If you decided to take a leap of faith ENTER leap.")
}

var fourthDecision = readLine()!

if fourthDecision == "stay" {
print("You stay with the group and continue the tour. Once the tour is over you return to class as scheduled. GAME OVER")
} ; if fourthDecision == "jump" {
print("You slip off the edge and fall to your doom. GAME OVER")
} ; if fourthDecision == "continue with group" {
print("You stay with the group and continue the tour. Once the tour is over you return to class as scheduled. GAME OVER")
} ; if fourthDecision == "leap" {
print("You slip off the edge... and fall a few feet before grabbing onto a branch. You look up after catching your breath and see \(userFriend) extending their hand from the cliff above. \(userFriend) pulls you up and tells you more about the building. \(userFriend) saw two men bring a treasure chest into the building and not long after heard loud screams coming from inside. You notice a hidden wooden bridge that will take you back to your classmates. If you want to return to classmates, ENTER return. If you want to follow the treasure 💰 with \(userFriend), ENTER treasure")
}

var fifthDecision = readLine()!
if fifthDecision == "return" {
print("You return to your classmates and continue the tour. Once the tour is over you return to class as scheduled. GAME OVER")
} ; if fifthDecision == "treasure" {
print("You and \(userFriend) enter the building and are met by a long winding staircase. You begin to ascend the staircase and the higher you get, the louder and more ominous the sounds become. After what seems like an eternity, you both make it to the top of the staircase. You open the door in front of you and see the treasure! You and \(userFriend) run toward it and just before reaching the chest a strange figure appears from the shadows. It says that the rumors about the prisoners are true. They stay hidden during the day and wreak havoc at night. In order to claim the prize, the strange figure says that you and \(userFriend) must stay on the island unarmed for another week. The figure gives you the option to leave the treasure and return to your classmates or stay the extra week and win the prize. If you want to go back the group, ENTER go back. If you want to stay and get the treasure, ENTER stay.")
}


var sixthDecision = readLine()!
if sixthDecision == "go back" {
print("You return to your classmates and continue the tour. Once the tour is over you return to class as scheduled. GAME OVER")
} ; if sixthDecision == "stay" {
print(" The strange figure mercifully offers you the opportunity to get one weapon but refuses to tell you what is is before you choose. To  choose your weapon enter, weapon 1, weapon 2 , weapon 3, or weapon 4")
}

  var seventhDecision = readLine()!
if seventhDecision == "weapon 1" {
    print("You've chosen the \(weapon.0)! You and \(userFriend) brace yourselves for the most terrifying week of your lives. To continue playing, download part 2. COMING SOON (Press any key to end game.)")
} ; if seventhDecision == "weapon 2" {
    print("You've chosen the \(weapon.1)! You and \(userFriend) brace yourselves for the most terrifying week of your lives. To continue playing, download part 2. COMING SOON (Press any key to end game.)")
} ; if seventhDecision == "weapon 3" {
print("You've chosen the \(weapon.2)! You and \(userFriend) brace yourselves for the most terrifying week of your lives. To continue playing, download part 2. COMING SOON (Press any key to end game.)")
} ; if seventhDecision == "weapon 4" {
print("You've chosen the \(weapon.3)! You and \(userFriend) brace yourselves for the most terrifying week of your lives. To continue playing, download part 2. COMING SOON (Press any key to end game.)")
}
 
var userPrize = Int(readLine()! )
for _ in 0... {
    print("GAME OVER")
break

}
 



    




