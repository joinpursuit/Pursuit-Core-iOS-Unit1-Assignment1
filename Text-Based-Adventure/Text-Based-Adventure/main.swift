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
var newName = true
var power = 3
print( "Hello, is anyone there, can anyone see this? \"Say anything\"")

if let newName = readLine(){
    print("\"HELLO!!!!!\" What is your name brave crusader")
    //while newName == true {
    if let aName = readLine(){
        print("so happy you came, \(aName). We are at peril. we risk living under water. The problem is that sea water levels will always rise inspite of our actions but use of super powers and good choices to keep it from reaching over our heads, you may save all the lives in our planet! if you dont you will be the first to \"Live Under Water\"...sacrifices must be made")
    
        print("Only you cann cause only you came by. will you help? \(aName)\" type  |Yes|\" or \"|No|\"")
        let yesOrNo = readLine()
        if yesOrNo == "yes" {
            print("your bravery grants you status superHero X ...pick a super power.")
            print("\"1\" Zap plastic into thin air \"2.\" Cut that polyester mass production \"3.\"vacumming CO2 emissions out of the atmosphere")
            let choice = readLine()!
            let current = Int(choice)!
            //for currentPower in 0...power{
            if current == Int(choice)! {
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
        }
                else {
                 print("too bad, its draft. Now you dont get to pick your super power. you have been assigned the power of slime and it collects garbage powerfully")
            }
       // }
            
            print("let's begin !!! go through these scenarios. your good choices are boosted by your superpower and each answer could decrease the ever increasing sea levels by 10 units. It could also increase it by 5 units. good luck !\" Hit Enter To Begin\"")
          // let _ = readLine()!
        //print("1. when you go to the store you forgot your reusable tote. theres a sale for a new. you choose to buy it, your old one //needs replacing soon \"OR\" just use the free plastic bags for future garbage anyway\"A\" or \'B\"")
       
        var choicesLoop = true
        while choicesLoop {
            
           var choices1 = readLine()
            //var reponse = Int(choices)
            if choices1 != nil {
        
        print ("1. when you go to the store you forgot your reusable tote. theres a sale for a new. you choose to buy it, your old one needs replacing soon \"OR\" just use the free plastic bags for future garbage anyway\"A\" or \'B\"")
            
        let chosenPower = readLine()!
        //var chosenPower = " "
            switch chosenPower {
            case "A" :
            print("savy consumer and subtainability freak. you have subtracted 10 from the waterlevel")
        
            case "B" :
            print("you have to make sacrifices\"🙅🏻‍♀️. You have sacrificed the environent the sea levels and added 10 units to the current water level")

            default:
                print("please type \"A\" or \"B\"")
           
            
                print ("2. You got the groceries this week. Surprise!! A Great sale on Smart bottled water $2.99. Do you get it because it is smart\"OR\" do you just refill your glass bottle with free filtered water ?   \"A\" or \'B\"")
                
                let chosenPower = readLine()!
                //var chosenPower = " "
                switch chosenPower {
                case "A" :
                    print("I knew you are a star. you have subtracted 10 from the water level")
                    
                case "B" :
                    print("Dude you just dont get it\"🙅🏻‍♀️. You have sacrificed the environent the sea levels and added 10 units to the current water level")
                    
                default:
                    print("please type \"A\" or \"B\"")
                    
                }
                }
            }
        }
    }
}


//        case "no" :
//            print("too bad, its draft. Now you dont get to pick your super power. you have the power of slime and it collects garbaga powerfully")
//        continue
//        default :
//            print("sorry indecisiveness leaves me uncertain. try again ")
//            }
            



//}yes
//if let newName = readLine(){ // to make all lower case?
//    print("Oh all habitants of mitierrita are so happy you came, \(newName). We are at peril. By keeping sea water levels low, you may save all the lives in our planet!  the problem is that levels will always rise inspite of our actions. It is up to you, with the use of  super powers and your good choices to keep it from reaching over our heads. if you dont you will be the first to die but one must make sacrifices")
//    // what if they put bs name or no name ?
//
//        print("Will you willingly save us brave crusader \(newName)!!")
//
//   // case yes or no
//        var yesOrNo = readLine()!
//        switch yesOrNo {
//        case "yes" :
//            print("your bravery grants you the status of superhero X ...pick one the super powers  granted to you,")//better way to ask for birthday
//        var powerChoice =
//        if powersChoice
//    case "no" :
//    print("for that you are a toad and are subjected to help anyway")
//
//    default :
//    print("sorry indecisiveness leaves you with the rest ")
//    }
//
//
////what are the special power choices-- pick a number and it will be assigned according to number in range
//    print(" ")
//    print("enter only the day for identity theft protection")
//
////    var day = Int(dayOfBirth)
////if day < 30 {
////    print("the creed for those born on the \(dayOfBirth) of the month is the following:")
////}
//if let dayOfBirth = readLine() { // conditional unwarpping (optional binding) (using if let) is safer as the if let block will not run if the value is nil instead the else will execute
//    print("the creed for those born on the \(dayOfBirth) of the month is the following:")
//
//    //if dayOfBirth < 31
//} else {
//    print("response is nil")
//}
//
//
//


//// ----- SECOND QUESTION = PICKS A SUPER POWER
//
////if day = readLine!(){// to make all lower case?
//if var day = Int(dateOfBirth){
//    if day < 10 {
//    print("the creed kfor those born on the \(String(describing: dateOfBirth)) of the month is the following:")
//}
////you have saved the planet but you just let all people 3 feet and under have died!

