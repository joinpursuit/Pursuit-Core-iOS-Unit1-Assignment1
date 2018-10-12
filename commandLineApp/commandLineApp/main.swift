//
//  main.swift
//  commandLineApp
//
//  Created by Joshua Viera on 10/10/18.
//  Copyright © 2018 Joshua Viera. All rights reserved.
//

import Foundation



let randomInt = Int.random(in: 0...100)
var expPoints = 0
var correct10 = true
var num: Int

print("""
///////////////////////////////////////////////////////////////////////////////
//////////// ./// *//  /  .../  //////*  *////   ///. ///*../      ////////////
/////////////  /   /  //     /  ////*  // //  //*  /        /  ```/////////////
/////////////    /    //  ```/  ////  //////  ///  /  /  /  /   ../////////////
//////////////  ,/*  ///     *      /      //     //  ////  /      ////////////
///////////////////////////////////////////////////////////////////////////////

""")

print("""
------------------------------------------------------------------------------------------
-You have fallen into the Math Dungeon.. You will not be granted access to the outside world until you complete all the Math questions! The dungeon is like a Maze, each room contains a different Math problem. Once you complete the math problem the door to the next room will Open, this pattern will continue until you open the Last door.
------------------------------------------------------------------------------------------
Enter Your Name to Continue:
""")

repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "" :
            print("Try Again")
        default :
            correct10 = false
        }
    }
} while correct10
print(">>You're current Exp Points: \(expPoints)<<")
print("")
//FIRST FLOOR
///////////////////////////////////////////////////////////MATH DUNGEON
//prints out the question & floor youre on
var correct = true

print("""
------------------------------------------------------------------------------------------
-The first room will test out your math skills:
    Do some basic bath. REMEMBER: PEMDAS:
------------------------------------------------------------------------------------------
    6 + 4 * 3 - 10 / 5 = ?
""")
repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "4" :
            print("Use PEMDAS")
        case "16" :
            print("move forward--->")
            print("")
            correct = false
        default :
            print("try again")
        }
    }
} while correct
expPoints += randomInt
print("")
print(">>You've gained \(expPoints) Exp<<")
print("")
//SECOND FLOOR
//prints out the question and floor youre on

print("""
------------------------------------------------------------------------------------------
-the second floor will contain quick sand so time matters! lets check your deduction skills
Using subtraction:
------------------------------------------------------------------------------------------
Suppose that a car dealer has an inventory of 15,258 Honda Accord they have to sell by the end of 2008. Suppose they don't meet their goals and sell only 12456 Honda Accord by the end of 2008. How many cars are left in the back yard?

""")

//door

var correct1 = true

repeat{
    if let response = readLine() {//opprotunity for a response
        switch response.lowercased() {
        case "27714" :
            print("Use Subtraction")
        case "2802" :
            print("move forward--->")
            print("")
            correct1 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct1
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")
//THIRD FLOOR
print("""
------------------------------------------------------------------------------------------
-Welcome to the algebraic equation room wheere you must solve 2 equations correctly in order to move on.
------------------------------------------------------------------------------------------
find X:
3 + 6x = 21 + 15x
""")
var correct2 = true

repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "" :
            print("Group Like Terms")
        case "2" :
            print("move forward--->")
            print("")
            correct2 = false
        default :
            print("try again")
        }
    }
} while correct2
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")
//second part of third floor
print("""
------------------------------------------------------------------------------------------
-One Question left and you may leave this room
------------------------------------------------------------------------------------------
find X:
20x - 1 = 5x + 4
""")
var correct6 = true

repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "" :
            print("Group Like Terms")
        case "5" :
            print("move forward--->")
            print("")
            correct6 = false
        default :
            print("try again")
        }
    }
} while correct6
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")

//FOURTH FLOOR
//prints out the question and floor youre on
print("""
------------------------------------------------------------------------------------------
-Welcome to the percentage room you must answer 3 questions to move forward, each question will un lock one ofthe 3 locks on the door. you must get all 3 correct to move forward
------------------------------------------------------------------------------------------
what is 80% as a decimal? (using 0.00 format)

""")

//door

var correct3 = true

repeat{
    if let response = readLine() {//opprotunity for a response
        switch response.lowercased() {
        case "" :
            print("1.11 <- like this")
        case "0.80":
            print("move forward--->")
            print("")
            correct3 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct3
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")
//Fourth FLOOR
//prints out the question and floor youre on
print("""
------------------------------------------------------------------------------------------
-To leave the percentage room you must finish, You have 2 locks left: you must get all 3 correct to move forward!
------------------------------------------------------------------------------------------
what is 20% of 200?

""")

//door

var correct4 = true

repeat{
    if let response = readLine() {//opprotunity for a response
        switch response.lowercased() {
        case "160" :
            print("you didnt need to subtract it !")
        case "40" :
            print("move forward--->")
            print("")
            correct4 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct4
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")
//4ourth FLOOR
//prints out the question and floor youre on
print("""
------------------------------------------------------------------------------------------
-You're almost out of the percentage room ! this is your last lock to the door of this room, can you answer the final question to open the last lock ?
------------------------------------------------------------------------------------------
If something cost $150 and its on sale for 10% off what is the final price befoere tax ?
""")

//door

var correct5 = true

repeat{
    if let response = readLine() {//opprotunity for a response
        switch response.lowercased() {
        case "":
            print("NOPE!")
        case "135" :
            print("move forward--->")
            print("")
            correct5 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct5
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")

//
var correct40 = true
print("""
------------------------------------------------------------------------------------------
-Welcome to the geomtric room, you must find the area of the room you\'re in to move on.
------------------------------------------------------------------------------------------
the length of this room is 20 and the width is 15. how many square feet is the room ? (just write the number)
""")
repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "28, 44" :
            print("Length * width")
        case "300" :
            print("move to the final room")
            print("")
            correct40 = false
        default :
            print("try again")
        }
    }
} while correct40
expPoints += randomInt * 5
print(">>BONUS EXP: You've gained an extra \(expPoints) Exp<<")
print("")

//
var correct20 = true
print("""
------------------------------------------------------------------------------------------
-Welcome to the Word problem conundrum room, this is the last room of the Math Dungeon! Congratulations for making it this far.. but i will not make this easy for you!
There are several chickens and rabbits in a cage (with no other types of animals). There are 72 heads and 200 feet inside the cage. How many chickens are there, and how many rabbits?
------------------------------------------------------------------------------------------
(number of rabbits , number of chicknes)
(00,00)<-- please type your answer like this
""")
repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "28, 44" :
            print("NO SPACES")
        case "28,44" :
            print("Here are the keys to the Last door, You are a MATH GENIUS! wear your new title with pride")
            print("")
            correct20 = false
        default :
            print("try again, NO SPACES(00,00)")
        }
    }
} while correct20
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")
//--------------------

//
var correct50 = true
print("""
------------------------------------------------------------------------------------------
-YOU HAVE COMPLETED THE MATH EQUATONS: Enter Your initials & score to leave---> like this (JV324)
------------------------------------------------------------------------------------------
""")
var giftBox = (Toy: "New Car" ,Money: 1000)
repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "" :
            print("Try Again")
        default :
            print("You have Earned a GiftBox would you like to collect ?(yes or no)")
            correct50 = false
        }
    }
} while correct50
//---
var correct00 = true
repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "yes" :
            print("You have earned a \(giftBox.Toy)")
             correct00 = false
        case "no" :
            print("NO GIFT ? You have earned $ \(giftBox.Money), Please Take it")
             correct00 = false
        default :
            print("Get out of here😒")
            correct00 = false
        }
    }
} while correct00

//---------
print("")
expPoints += randomInt
print(">>You've gained \(expPoints) Exp<<")
print("")

//-----------------
for _ in expPoints...1000000{
    if expPoints < 5 {
        print("You need more exp to move forward")
    }
}






//END GAME
num = expPoints
print("CONGATULATIONS! To be released Present this number at the door: \(num)")
print("""

    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    @@@@    #@@    @@  @*  @   ..@@@/     @  @ .*   ..@  .  @@@
    @@@    -- @  `  @ ,  , @  ..(@@@  @@ /@    @*  ..@    /@@@@
    @@@@    | ( .&  @ @  , @     @@@(    @@&  @@*    @  @  @@@@
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

""")
