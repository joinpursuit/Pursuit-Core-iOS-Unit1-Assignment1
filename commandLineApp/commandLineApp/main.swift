//
//  main.swift
//  commandLineApp
//
//  Created by Joshua Viera on 10/10/18.
//  Copyright © 2018 Joshua Viera. All rights reserved.
//

import Foundation


//FIRST FLOOR
///////////////////////////////////////////////////////////MATH DUNGEON
//prints out the question & floor youre on
print("""
8-the first floor will test out your skills:
    Do some basic bath. REMEMBER: PEMDAS:

    6 + 4 * 3 - 10 / 5 = ?
""")
var correct = true

repeat{
    if let response = readLine() {
        switch response.lowercased() {
        case "4" :
            print("Use PEMDAS")
        case "16" :
            print("move forward")
            correct = false
        default :
            print("try again")
        }
    }
} while correct

//SECOND FLOOR
//prints out the question and floor youre on

print("""
9-the second floor will contain quick sand so time matters! lerts check your deduction skills
Using subtraction:

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
            print("Move forward")
            correct1 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct1

//THIRD FLOOR
print("""
Welcome tot he algebraic equation room wheere you must solve 2 equations correctly in order to move on.
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
            print("move forward")
            correct2 = false
        default :
            print("try again")
        }
    }
} while correct2


//FOURTH FLOOR
//prints out the question and floor youre on
print("""
Welcome to the percentage room you must answer 3 questions to move forward, each question will un lock one ofthe 3 locks on the door. you must get all 3 correct to move forward

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
            print("Move forward")
            correct3 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct3

//Fourth FLOOR
//prints out the question and floor youre on
print("""
To leave the percentage room you must finish, You have 2 locks left: you must get all 3 correct to move forward!

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
            print("Move forward")
            correct4 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct4


//4ourth FLOOR
//prints out the question and floor youre on
print("""
You're almost out of the percentage room ! this is your last lock, can you answer the final question to Unlock trghe last lock ?

If something cost $150 and its on sale for 15% off what is the final price befoere tax ?
""")

//door

var correct5 = true

repeat{
    if let response = readLine() {//opprotunity for a response
        switch response.lowercased() {
        case "":
            print("NOPE!")
        case "135" :
            print("Move forward")
            correct5 = false //changes the door from closed to open
        default :
            print("try again")
        }
    }
} while correct5
