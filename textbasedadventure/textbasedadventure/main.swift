//
//  main.swift
//  textbasedadventure
//
//  Created by Yaz Burrell on 10/10/18.
//  Copyright © 2018 Yaz Burrell. All rights reserved.
//

import Foundation
//

var userName = readLine()!
var yesOrNO = "yes"
var counter = 0
var grossPointCounter = 0
let grossBreadChoice = readLine()
let grossSpreadChoice = readLine()!
let grossMainProtein = readLine()!
let grossToppingChoice = readLine()!
var grossDrinkChoice = readLine()!


print("Welcome to the gross sandwich course! Don't worry, you won't have to eat em! Lets get your order started! What is your name?")
print("--------------------------------------------------------------------------------")
print("Hello \(userName) are you ready to get making?")
while counter == 0 {
    let userResponse = readLine()!
    switch userResponse {
        case "yes":
          counter += 1

        default:
            print("Too bad, you're making one")
}
}

print("===================================================================================")

print("Ok lets get you started with some bread! Do you want \"soggy\" , \"moldy\" , \"dumpster\" or \"rye\"")
while counter == 1 {
    let grossBreadChoice = readLine()!
        switch grossBreadChoice {
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
                    print("Gross points are at \(grossPointCounter)")
                }
            
            } default:
            print("you are going on this journey whether you like it or not")
    }
}

print("================================================================================")


print("Thats the spirit! Lets get you going with your spread options! Do you want,\"miracle whip\" , \"earwax\" , \"butter\" or \"lard\"")
while counter == 2 {
    let grossSpreadChoice = readLine()!
    switch grossSpreadChoice {
       case "miracle whip":
                if grossSpreadChoice == "miracle whip" {
                        grossPointCounter += 100
                            print("you really chose miracle whip? Who hurt you?")
                                print("Your Gross points are now at \(grossPointCounter) you are out of the game full stop. Take a minute to reflect on your life")
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



print("=====================================================================")



print("Alright, lets get to the main protein! Your choices are \"spoiled meat\", \"expired tofu\" , \"a cooked hotdog that fell in the ash of the grill that was forgotten about until your next cookout at your gf's house\" or \"slimy eggplant\"")
while counter == 3 {
let grossMainProtein = readLine()!
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
                        print("Gross points are now at \(grossPointCounter)")
    }
    
    case "a cooked hotdog that fell in the ash of the grill that was forgotten about until your next cookout at your gf's house":
        counter += 1
            if grossMainProtein == "a cooked hotdog that fell in the ash of the grill that was forgotten about until your next cookout at your gf's house" {
                    grossPointCounter += 20
                    print("Gross points are now at \(grossPointCounter)....shame, shame, shame")
    }
                
                case "slimy eggplant":
                counter += 1
                if grossMainProtein == "slimy eggplant"{
                        grossPointCounter += 15
                            print("Gross points are now at \(grossPointCounter)")
                
    } default:
    print("nice try, pick one")
    
}
}

print("============================================================================")


print("Grossed out yet? Just wait! Select your toppings \"vegemite\", \"toenails\", \"stinky cheese\" \"kibble\"")

while counter == 4 {
let grossToppingChoice = readLine()!
switch grossToppingChoice {
    case "vegemite":
        counter += 1
            if grossToppingChoice == "vegemite" {
                grossPointCounter += 20
                    print("Gross points are now at \(grossPointCounter)...smh")
    }
    
case "toenails":
        counter += 1
            if grossToppingChoice == "toenails" {
                grossPointCounter += 40
                    print("Gross points are now at \(grossPointCounter), just awful")
    }
    
case "stinky cheese":
        counter += 1
            if grossToppingChoice == "stinky cheese" {
                grossPointCounter += 12
                    print("Gross points are now at \(grossPointCounter)")
    }
    
case "kibble":
    counter += 1
    if grossToppingChoice == "kibble" {
            grossPointCounter += 11
                print("Gross points are now at \(grossPointCounter)")
    }
    
default:
    print("nice try, pick one")
}
}


print("====================================================================================")


print("Last but not least, CHOOSE YOUR DRINK \"Donald Trump's spit\" , \"Donald Trump's backwash\", \"Donald Trump's tears\" or \"mop water\"")
while counter == 5 {
let grossDrinkChoice = readLine()!
    switch grossDrinkChoice {
    case "spit":
        counter += 1
            if grossDrinkChoice == "Donald Trump's spit" {
                grossPointCounter += 1500
                print("Gross points are now at \(grossPointCounter)....this is shameful")

        }
        
        
    case "Donald Trump's spit":
        counter += 1
            if grossDrinkChoice == "Donald Trump's spit" {
                grossPointCounter += 2000
                    print("Gross points are now at \(grossPointCounter)....you are a brave soul")
        }
        
    case "Donald Trump's backwash":
        counter += 1
            if grossDrinkChoice  == "Donald Trump's backwash" {
                grossPointCounter += 1100
                    print("Gross points are now at \(grossPointCounter).... hang in there")
        }
        
    case "mop water":
            if grossDrinkChoice == "mop water" {
                grossPointCounter -= 10000000000000
                    print("Gross points are now at \(grossPointCounter)...You took the easy route here, try again")
            continue
        }
        
    default:
        print("nice try, pick one")
    }
}

print("You made it to the end \(userName) you ready to dig in??")

while counter == 6 {
    var userResponse = readLine()!
    switch userResponse {
    case "yes":
        print("Enjoy your \(grossBreadChoice), \(grossSpreadChoice), \(grossMainProtein), \(grossToppingChoice), \(grossDrinkChoice), sandwich!! Your total Gross points are \(grossPointCounter)!!")
        
    default:
        print("I lied earlier when I said you werent eating this")
    }
}



//print("enjoy your \() with \() ,\(), \() & \() ")

//print("Excellent! Now what?")
//while loaf == 2 {yaz
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

