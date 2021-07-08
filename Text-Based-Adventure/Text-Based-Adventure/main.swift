//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Stephanie Ramirez on 10/10/18.
//  Copyright © 2018 Stephanie Ramirez. All rights reserved.
//

import Foundation

//Use at least one tuple in your code




var cost: Double = 0
var finalOrder = (tea: "", milkType: "", sugar: "", ice: "", toGo: "", table: "")

var loopEnter = true
var loopTea = false
var loopAsk = false
var loopMilk = false
var loopMilkType = false
var loopSugar = false
let sugarCost = 0.05
var loopCount = false
var loopIce = false
var loopToGo = false
var loopTable = false
var loopOrder = false
var loopDoOver = true
var loopPay = false
var stayGo = 0

let currencyFormatter = NumberFormatter()
currencyFormatter.usesGroupingSeparator = true
currencyFormatter.numberStyle = .currency
currencyFormatter.locale = Locale.current // 34 - 37 from https://stackoverflow.com/questions/41558832/how-to-format-a-double-into-currency-swift-3

while loopEnter {
print("You see a tea shop. Do you want to enter? yes or no ")
let enter = readLine()
    switch enter {
    case "yes":
        print("You walk to the register")
        loopEnter = false
        loopAsk = true

    case "no":
    print("You continue your day without 🍵 so sad.")
        loopEnter = false
    default:
        print("you're not thinking clearly")
        print("")
        loopEnter = true
    }
}
while loopAsk {
print("Do you ask for tea or coffee?")
let drink = readLine()
    switch drink {
    case "tea":
        loopTea = true
        loopAsk = false
    case "coffee":
        print("We don't have coffee this is a tea shop! Please leave! ~You were escorted out by security~")
        loopAsk = false
    default:
        print("You were not able to verbalize what you wanted so you left the shop.")
        loopAsk = false
    }
}
repeat {
while loopTea {
    print("Which type of tea would you like? We have green tea, black tea, and chai.")
    finalOrder.tea = readLine()!.lowercased()
    switch finalOrder.tea {
    case "green tea":
        cost += 0.75
        loopMilk = true
        loopTea = false
    case "black tea":
        cost += 01.25
        loopMilk = true
        loopTea = false

    case "chai":
        cost += 1.00
        loopMilk = true
        loopTea = false
    default:
        print("sorry we don't have that.")
        print("")
    }
}
while loopMilk {
print("would you like your tea with milk? yes or no")
let milk = readLine()!.lowercased()
if milk == "yes" {
    loopMilk = false
    loopMilkType = true
    print("which type of milk? we have whole, soy, and almond")
    while loopMilkType {
        finalOrder.milkType = readLine()!.lowercased()
        switch finalOrder.milkType {
        case "whole":
            cost += 0.5
            loopSugar = true
            loopMilkType = false
            finalOrder.milkType = " whole milk"
        case "soy":
            cost += 0.75
            loopSugar = true
            loopMilkType = false
            finalOrder.milkType = " soy milk"
        case "almond":
            cost += 1.0
            loopSugar = true
            loopMilkType = false
            finalOrder.milkType = " almond milk"
        default:
            print("sorry we don't have that")
        }
    }
} else if milk == "no"{
    finalOrder.milkType = "out milk"
    loopMilk = false
    loopSugar = true
} else {
    print("sorry I don't understand you.")
    print("")
}
}
while loopSugar {
    print("Would you like to add sugar? yes or no")
    finalOrder.sugar = readLine()!.lowercased()
    if finalOrder.sugar == "yes" {
        loopSugar = false
        loopCount = true
        while loopCount {
            print("How many scoops would you like?")
            if let scoop = readLine() {
                switch Int(scoop)! {
                case 1:
                    print("~the worker looks at you approvingly~ That's a health amount of sugar.")
                    loopCount = false
                    loopIce = true
                    finalOrder.sugar = " \(scoop) scoop of sugar"
                    cost += sugarCost
                case 2...5:
                    print("~the worker looks at you approvingly~ That's a health amount of sugar.")
                    loopCount = false
                    loopIce = true
                    finalOrder.sugar = " \(scoop) scoops of sugar"
                    cost += sugarCost * Double(scoop)!
                case 6...10:
                    print("~the worker thinks that's a lot of sugar~")
                    loopCount = false
                    loopIce = true
                    finalOrder.sugar = " \(scoop) scoops of sugar"
                    cost += sugarCost * Double(scoop)!
                case 10...:
                    print("~the worker is making a judgmental face 🤭~ That's way too much sugar.")
                    loopCount = false
                    loopIce = true
                    finalOrder.sugar = " \(scoop) scoops of sugar"
                    cost += sugarCost * Double(scoop)!
                default:
                    print("The worker doesn't understand you")
                }
            }
        }
    } else if finalOrder.sugar == "no" {
        loopSugar = false
        loopIce = true
        finalOrder.sugar = "out sugar"
    } else {
        print("sorry I don't understand you.")
        print("")
    }
}
while loopIce {
    print("Would you like to add ice? yes or no")
    finalOrder.ice = readLine()!.lowercased()
    switch finalOrder.ice {
    case "yes":
        loopIce = false
        loopToGo = true
        finalOrder.ice = " ice"
        cost += 0.05

    case "no":
        loopIce = false
        loopToGo = true
        finalOrder.ice = "out ice"
    default:
        print("sorry I don't understand you.")
        print("")
    }
}
while loopToGo {
    print("Will you be staying or is this order \"to go\"? to stay or to go")
    finalOrder.toGo = readLine()!.lowercased()
    switch finalOrder.toGo {
    case "to stay":
        loopTable = true
        while loopTable {
        print("Please pick a table.")
        let N = 4
        for box in 1..<N {
            for x in 1..<N {
                for y in 1..<N {
                    if x == 2 && y == 2 {
                        print(box, terminator: "")
                    } else {
                        print("*", terminator: "")
                    }
                }
                print("")
            }
            print("")
        }
            let table = readLine()
            if table == "1" || table == "2" || table == "3" {
                loopToGo = false
                loopOrder = true
                loopTable = false
                finalOrder.table = ("\(table!)")
            } else {
                print("Sorry that's not an available table.")
                
            }
        }

    case "to go":
        loopToGo = false
        loopOrder = true
        stayGo = 1
    default:
        print("Sorry I don't understand you.")
    }
}
while loopOrder {
    print("You ordered a \(finalOrder.tea) with\(finalOrder.milkType) with\(finalOrder.sugar) with\(finalOrder.ice) \(finalOrder.toGo). Is this correct? yes or no")
    let correct = readLine()!.lowercased()
    switch correct{
    case "yes":
        print("great!")
        loopOrder = false
        loopDoOver = false
        let priceString = currencyFormatter.string(from: NSNumber(value: cost))! // from https://stackoverflow.com/questions/41558832/how-to-format-a-double-into-currency-swift-3
            print("your total is \(priceString) How would you like to pay? cash or card?")
            let pay = readLine()
            if pay == "cash" || pay == "card"{
                stayGo == 0 ? print("Thank you! We'll bring your tea to table \(finalOrder.table) when it's ready. ~Once your tea arrived it made you feel wonderful~") : print("Thank you! have a nice day! ~your tea made you feel wonderful~ ")
                loopPay = false

            } else {
                print("SECURITY!!! ~you were arrested for not paying for your tea 👮‍♂️🤦‍♂️👮🏻‍♂️🚔~")
            }
    case "no":
        print("Oh no! Let me try again.")
        loopOrder = false
        loopTea = true
        stayGo = 0
    default:
        print("Sorry I don't understand you.")
    }
}
} while loopDoOver == true



