//
//  main.swift
//  textbasedadventure
//
//  Created by Yaz Burrell on 10/10/18.
//  Copyright © 2018 Yaz Burrell. All rights reserved.
//

import Foundation
//

print("Welcome to the gross samndwich course! Don't worry, you won't have to eat em! Lets get your order started! What is your name?")

var userName = readLine()!
var counter = 0

var yesOrNO = "yes"

//var grossBreadChoice = ""
//var grossSpreadChoice = ""
//var mainProtein = ""
//var grossToppingChoice = ""
//var grossCondimentChoice = ""

var grossPointCounter = 0

print("Hello \(userName) are you ready to get making?")
while counter == 0 {
    var userResponse = readLine()!
 switch userResponse {
    case "yes":
          counter += 1

 default:
    print("Too bad, you're making one")
}
}

print("Ok lets get you started with some bread! Do you want \"soggy\" , \"moldy\" , \"dumpster\" or \"rye\"")
while counter == 1 {
    var grossBreadChoice = readLine()!
        switch grossBreadChoice{
        case "soggy":
            counter += 1
            if grossBreadChoice == "soggy"{
                grossPointCounter += 50
                    print("Gross points are at\(grossPointCounter)")
            }
        case "moldy":
            counter += 1
            if grossBreadChoice == "moldy"{
                grossPointCounter += 80
                    print("Gross points are at \(grossPointCounter)")
            }
        case "dumpster":
            counter += 1
            if grossBreadChoice == "dumpster"{
                grossPointCounter += 85
                    print("Gross points are at \(grossPointCounter)")
            }
        case "rye":
            counter += 1
            if grossBreadChoice == "rye" {
                grossPointCounter += 100
                if grossBreadChoice == "rye"{
                    print("Grosspoints are at \(grossPointCounter)")
                }
            }
        default:
            print("you are going on this journey whether you like it or not")
    }
}

print("Thats the spirit! Lets get you going with your spread options! Do you want,\"miracle whip\" , \"earwax\" , \"butter\" or \"lard\"")
while counter == 2 {
    var grossSpreadChoice = readLine()!
    switch grossSpreadChoice {
       case "miracle whip":
            counter += 1
                if grossSpreadChoice == "miracle whip" {
                        grossPointCounter += 100
                            print("you really chose miracle whip? Who hurt you?")
                                print("Your Gross points are now at \(grossPointCounter) you are out of the game full stop. Take a minute to reflect on your life")
                    break
        }
    case "earwax":
        counter += 1
        if grossSpreadChoice == "earwax" {
            grossPointCounter += 30
                print("Gross points are at \(grossPointCounter)")
        }
    case "butter":
        counter += 1
        if grossSpreadChoice == "butter" {
            grossPointCounter += 10
                print("Gross points are at \(grossPointCounter)")
        }
        
    case "lard":
        counter += 1
        if grossSpreadChoice == "lard"{
            grossPointCounter += 20
                print("Gross points are now at\(grossPointCounter)")
        }
    default:
        print("nice try, pick one")
    }
   
}


print("Alright, lets get to the main protein! Your choices are \"spoiled meat\", \"expired tofu\" , \"a cooked hotdog that fell in the ash of the grill that was forgotten about until your next cookout at your gf's house\" or \"slimy eggplant\"")

var grossMainProtein = readLine()!
while counter == 3 {
switch grossMainProtein {
    case "spoiled meat":
    counter += 1
    if grossMainProtein == "spoiled meat" {
        grossPointCounter += 10
            print("Gross points are now at \(grossPointCounter)")
    }
    
    case "expired tofu":
    counter += 1
    if grossMainProtein == "expired tofu"{
        grossPointCounter += 50
            print("Gross points are now at")
    }
    case "a cooked hotdog that fell in the ash of the grill that was forgotten about until your next cookout at your gf's house":
    counter += 1
default:
    print("nice try, pick one")
}
}
print("Grossed out yet? Just wait! Select your toppings \"vegemite\", \"toenails\", \"stinky cheese\" \"kibble\"")
var grossToppingChoice = readLine()!
while counter == 4 {
switch grossToppingChoice {
case "vegemite":
    counter += 1
    
case "toenails":
    counter += 1
case "stinky cheese":
    counter += 1
case "kibble":
    counter += 1
    
default:
    print("nice try, pick one")
}
}
print("Last but not least, CHOOSE YOUR CONDIMENT \"\" , \"\", \"\" or \"\"")
var grossCondimentChoice = readLine()
while counter == 5 {
    switch grossCondimentChoice {
    case "":
        counter += 1
        
    case "":
        counter += 1
    case "":
        counter += 1
    default:
        print("nice try, pick one")
    }
}

//print("enjoy your \() with \() ,\(), \() & \() ")

//print("Excellent! Now what?")
//while loaf == 2 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//    loaf += 1
//
//    default:
//    print("Thats no way to make a sandwich-- try again")
//    }
//}
//
//print("Nice work! You’ll be eating in no time!")
//while loaf == 3 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("""
//    Halfway there champ! Starting to get hungry over here and I’m a computer!
//    ..But really chop chop -___-
//    """)
//while loaf == 4 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("You really are the jelly to my...")
//while loaf == 5 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("Now we’re talking! Get in my belly!")
//while loaf == 6 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("Excellent! Now what?")
//while loaf == 7 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("Excellent! Now what?")
//while loaf == 8 {
//    var food = readLine()
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//print("Excellent! Now what?")
//while loaf == 9 {
//    switch jelly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//print("Excellent! Now what?")
//while loaf == 10 {
//    switch je lly {
//    case "grab jar of jelly and turn to open":
//        loaf += 1
//
//    default:
//        print("Thats no way to make a sandwhich-- try again")
//    }
//}
//
//



//////Bread Choice
////print("What type of bread: \"wheat\" , \"white\" , \"multigrain\"" )
////var userChoice = readLine()!
////
////print("Awesome, you chose \(userChoice) bread)")
////
////print("Great! Now we are cooking! Select your
////


//prt cs
//numslices rl
//slicesAsInt = Int(numslices)
//
//switch slicesAsInt {

