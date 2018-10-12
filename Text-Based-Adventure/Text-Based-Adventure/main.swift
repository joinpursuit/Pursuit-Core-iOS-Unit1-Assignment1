//
//  main.swift
//  Text-Based-Adventure
//
//  Created by katty y marte on 10/10/18.
//  Copyright © 2018 katty y marte. All rights reserved.
//
//
import Foundation
/*
 
 sustainability game- keep the sealevels from rising or the sun from burning.
 add water everytime the answer could help global warming. add water on a timer on every 10 secs. so it is filling up faster with the wrong answers and could be subtracted by a little when one answers to do the right thing. anyway because of damage that is already done/ or change that is already in motion to happen.
 would you take a
 */
//string optional
//
//print("(Global Warming Is Real; Plant a tree) (Im with Trump) (No-where to run dearest)")
//
//if let response = readLine(){//gets input from the user
//    switch response{
//    case "plant a tree":
//        print("dont forget the goggles")
//    case "Im with Trump":
//        print("Make more polyester items, mix with a little cotton to make impossible to recycle!")
//    case "lots":
//        print("No-where to run dearest")
//    default:
//        print("no🍺 for you")
//        print("enter option again?")
//        let option2 = readLine()!//force unwrapps - dangerous
//        if option2 == "rest"{
//            print("happy recovery")
//        }else{
//            print("value does not exist")
//        }
//    }
//}
////for more on what to buld lookat excersice "sample from conditional
//
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

//var whoAreYou : [String]//empty to save users name and depeding on even/odd letter of alph print

// --- USER NAME AND INTRO MESSAGE


//print("Thanks for answering to our peril. What is your name brave crusader")//how to get input from console let response = readLine()!
//var newName = true
//var power = 3


print( "Helluu, is anyone there? \"Say anything\"")

if let whosHere = readLine(){
    print("\"HELLO!!!!!\" What is your name brave crusader")
    //while newName == true {
    if let userName = readLine(){
        print("so happy you came, \(userName). We risk living under water. Sea water levels will always rise inspite of our actions. Pick a super power, make right choices and keep sea water levels from reaching over our heads or better, bring them back down. reaching 100 will kill us all, 0 is like/going back in time /being alive with the dinosours")
        
        print("..or be the first to \"Live Under Water\". will you help? \(userName)\" type  |Yes|\" or \"|No|\"")
    }
        let yesOrNo = readLine()
        if yesOrNo == "yes" {
            print("your bravery grants you status superHero X ...pick a super power from choices below.")
            print("\"1\" Zap plastic into thin air \"2.\" Cut that polyester mass production \"3.\"vacumming CO2 emissions out of the atmosphere")
            let choice = readLine()!
            //let current = Int(choice)
            //for currentPower in 0...power{
            
            switch choice {
                case "1" :
                    print("You can now Zap plastic into thin air. Killer!")
                case "2" :
                    print("You can now Cut that polyester mass production. Savage!")
                case "3" :
                    print("letting CO2 emissions safely out of the atmosphere. Amazing!")
                //continue
                default :
                    print("please you can not make significant difference with out one of these powers!")
                    }
            
                    }
            
                else {
                 print("Lucky it is a draft. Now you dont get to pick your super power. you have been assigned the power of slime and it collects garbage powerfully")
            }
        }
            
            print("let's begin !!! go through these scenarios. your good choices are boosted by your superpower and each answer could decrease the ever increasing sea levels by 10 units. It could also increase it by 5 units. good luck !\" Hit Enter To Begin\"")
           let hitEnter = readLine()!
        //print("1. when you go to the store you forgot your reusable tote. theres a sale for a new. you choose to buy it, your old one //needs replacing soon \"OR\" just use the free plastic bags for future garbage anyway\"A\" or \'B\"")
       
      // let choicesLoop = true
        var response = ""
        //var response = choices1
       // while choicesLoop {
            if response != nil {
            // let chosenPower = readLine()!
                    print ("1. when you go to the store you forgot your reusable tote. theres a sale for a new. you choose to buy it, your old one needs replacing soon \"OR\" just use the free plastic bags for future garbage anyway\"A\" or \'B\"")
                    response = readLine()!
                    //var chosenPower = " "
                    switch response.lowercased() {
                    case "a" :
                        print("savy consumer and subtainability freak. you have subtracted 10 from the waterlevel")
                    case "b" :
                        print("you have to make sacrifices\"🙅🏻‍♀️. You have sacrificed the environment the sea levels and added 10 units to the current water level")
                    default:
                        print("invalid choice")
                }
            
                var response2 = ""
            if response2 != nil {
                print ("2. You car is a 1999 model and its the only car you'll ever need\"OR\"  The 10 min walk to public transportation is your morning workout; cars are for vacations!   \"A\" or \'B\"")
                response2 = readLine()!
                //let chosenPower = readLine()!
                //var chosenPower = " "
                switch response2.lowercased() {
                case "a" :
                    print("Dude you just dont get it\"🙅🏻‍♀️. your actions Added 10 units to the current water level")
                case "b" :
                     print("muscle mass to the max, keeping emissions at a min. you have subtracted 10 from the water level")
                default:
                    print("available choices \"A\" or \"B\"")
                }
                
                var response3 = ""
            if response3 != nil {
                    print ("3. You got the groceries this week. Surprise!! A Great sale on Smart bottled water $2.99. Do you get it because it is smart\"OR\" do you just refill your glass bottle with free filtered water ?   \"A\" or \'B\"")
                    response3 = readLine()!
                    switch response3.lowercased() {
                    case "a" :
                        print("I knew you are a star. you have subtracted 10 from the water level")
                    case "b" :
                        print("You have sacrificed the environent the sea levels and added 10 units to the current water level")
                    default:
                        print("available choices \"A\" or \"B\"")
                        
                    }
                
            }
        }
    }
