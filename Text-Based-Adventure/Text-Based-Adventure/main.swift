//
//  main.swift
//  Text-Based-Adventure
//
//  Created by TingxinLi on 10/10/18.
//  Copyright © 2018 TingxinLi. All rights reserved.
//

import Foundation
//print("Enter your workout: (1) swim, (2) bike, (3) bike")
//// String? - optional
//if let response = readLine() {   //unwraps an optional
//    switch response {
//    case "swim":
//        print("don't forget your goggles")
//    case "bike":
//        print("pack an extra spare tube and hydration")
//    case "run":
//        print("nice day for a run in Central Park")
//    default:
//        print("enter option again: ???")
//        let option2 = readLine()!   //force unwraps - dangerous (crashes)
//        if option2 == "rest" {
//            print("Happy Recovery")
//        }
//    }
//} else {
//    print("value doesn't exist")
//}





//print("Your adventure begins! Choose your direction \"Up\" or \"Down\"") //Use \ to escape characters
//
//let UpOrDown = readLine()!
//var weapon = "" //Set variables here and you can change and use their values later
//var eggExploded = false
//switch UpOrDown {
//case "Up":
//    print("You see a basket of eggs.  How many do you take?")
//    let eggNum = readLine()!
//    let eggNumAsInt = Int(eggNum)!
//    for currentEgg in 1...eggNumAsInt {
//        print("You carefully remove egg number \(currentEgg)")
//        if currentEgg == 4 {
//            print("It was a trap!  The egg explodes")
//            eggExploded = true
//        }
//    }
//    if !eggExploded {
//        print("Congrats!  You made it out with \(eggNumAsInt) eggs!")
//    }
//    //More decisions ahead! Use conditionals and switch statements here
//
//case "Down":
//    print("Down you go!")
////Instructions for the "Down" option ahead!
//default:
//    print("You stand your ground. Choose a weapon")
//    weapon = readLine()!
//    //Fighting conditionals ahead!
//}
//
//if weapon != "" {
//    print("You survived your first ordeal and evan have a \(weapon) to take home")
//}
//if eggExploded {
//    print("Bad luck!  Don't take so many eggs")
//}




// 10 options (at least 1 should enter by number)10次输入其中一次必须是数字
//use Swith and if/else statement
//


print("Welcome to Spicy House! Choose your flavor \"spicy\" or \"original\"")
let spicyOroriginal = readLine()!

var meals = "" //Set variables here and you can change and use their values later
var reallySpicy = true
switch spicyOroriginal {
case "spicy":
    print("We have the house special sauce, you will love it! what number would you like for spicy?")
case "original":
    print("Come on! Its Spicy House!!!!!🔥Enter 1 to 10 of the spicy")
    
default:
    print("Thanks for shopping")
}
    reallySpicy = false
    let numOfSpicy = readLine()!
    let numOfSpicyAsInt = Int(numOfSpicy)!
    if numOfSpicyAsInt >= 8 {
        
        print("the number \(numOfSpicyAsInt) of spicy will kill you. choose meat, pork, beef or chicken?")
    } else {
        print("The spicy of \(numOfSpicy) will taste great! choose meat, pork🐷, beef🥩 or chicken🍗?")}
      let choice = readLine()!
        
        if choice == "pork"{
            print("Good choice!Pork is cheaper. what kind of drinks would you like to order?")
        } else if choice == "chicken" {
            print("Great! all our chicken is from chicken brest. what kind of drinks would you like to order?")
        } else if  choice == "beef" {
            print("aweson! all of our beef is from Taxas. what kind of drinks would you like to order?")
        } else {
            print("Good choise")
    }

        let drinks = readLine()!

    switch drinks {
    case "water": (
        print("yep, its free refill 🙄. Choose the size of small,medium or large.")
    )case "soda":
        print("soda is always good with everything 😜. Choose the size of small,medium or large.")
        case "beer":
        print("lets all get drunk tonight! 🍺. Choose the size of small,medium or large.")
        default:
        print("water is FREE!!. Choose the size of small,medium or large.")
}

let size = readLine()!

switch size{
case "small": (
    print("Heads up!there is no FREE refill😒! Are you getting takeHome🏠 or stay🍽?")
)case "medium":
print("medium cups are always popular😊. Are you getting takeHome🏠 or stay🍽?")
case "large":
   print("Good Choise😝! Are you getting takeHome🏠 or stay🍽?")
default:
    print("Are you going to use your hand? Are you getting takeHome🏠 or stay🍽?")
}
    let takeOut = readLine()!
switch takeOut {
case "takeHome":
    print("Make sure you can eat it with in the hour so the meat will still taste good😋. And please give us survey from 1 to 10.")
case "stay":
    print("please enjoy your meal😛. And please give us survey from 1 to 10.")
default:
    print("While you waiting please give us survey from 1 to 10.")
}


let survey = readLine()!

let numOfSurvey = 7

while numOfSurvey < 10 {
    if numOfSurvey > 7 {
    print("Thank you for your survey. Are you ready for your bill📋?")
    } else {
        print("The number is not greater than 9🧐. Do you like to get the discount and change the survey to over than 9?")
    }
    break
}
//let answer = readLine()!
var answerFromCust = "yes"
let answer = readLine()!

if answer != answerFromCust {
print("You gotta pay your bill anyway👿. Pay by card or cash💸?")
} else {
print("Thank you, Pay by card or cash💰?")
}

let payMent = readLine()!
switch payMent {
case "card":
    print("If you pay by card will be puls tax, would you like to contiune?")
case "cash":
    print("Great! There will less charge if you pay by cash💵! Would you need the receipt?")
default:
    print("Are you plan to stay and wash the dish🍛????")
}

let final = readLine()!
var price:Double
price = Double(134.4)
for _ in String(price) {
    switch final {
    case "yes":
print("The payment for tonight's dinner is \(String(price).dropLast())Is there anything else I can do for you?")
        
    case "no":
        print("Thx for doing paperless and payment for tonight is \(String(price).dropLast())Is there anything else I can do for you?")
      
    default:
        print("Is there anything else I can do for you?")


}

    let ending = readLine()!
    switch ending {
    case "yes":
    print("Well,its time for me to get home😡, ByeBye")
    case "no":
    print("Thank you for coming! You have good night!")
    default:
    print("what else you need for me????🤬")
    
}
break
}

//Here is all my works, I know it is no the best one, but I did all I can! Thank you !!!
