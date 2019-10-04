//
//  main.swift
//  AdventureGame2
//
//  Created by casandra grullon on 10/1/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import Foundation

//Begin game
print("Would you like to start the game? Type yes or no")
var responseEnterGame = readLine()
var willContinue = false
var busOrTrain1 = (a:"Take the bus",b:"Take the train")

//loop1
repeat {
    switch responseEnterGame {
    case "yes":
        print()
        print("Welcome to the game!")
        print()
        print("Can You Make It Home?")
        print()
        print("""
            You're long and exhausting day of work has ended. You're ready to go home and crash.
            How will you go home?
            1. \(busOrTrain1.a)
            2. \(busOrTrain1.b)
            """)
        willContinue = true
    default:
        print("Maaannnn... play my game!")
        print()
        print("Type yes or no")
        responseEnterGame = readLine()
    }
} while willContinue == false

//loop Bus prompt 1
var responseBusOrTrain1 = readLine()
var question1 = false
busOrTrain1 = (a:"Take the bus",b:"Take the train")
var decide2WaitBusOrTakeTrain = (a:"Wait for the bus. It'll come when it comes. No point in being impatient...",b:"Take the train")
//Train prompt 1
var decide2WaitTrainOrTakeBus = (c:"Stay at the station... No point in being impatient.", d:"Go to the bus")
//1 bus and train
repeat {
    if responseBusOrTrain1 == "1" {
        print()
        print("You have decided to \(busOrTrain1.a).")
        print()
        print("""
            You walk to the bus stop and see a huge line of people.
            You're wondering why the line is especially long today and remember that today is a weekend...
            So all buses run every 30 minutes with delays due to the increased weekend traffic...
            """)
        print("""
            What do you want to do now?
            3. \(decide2WaitBusOrTakeTrain.a)
            4. \(decide2WaitBusOrTakeTrain.b)
            """)
        question1 = true
    } else if responseBusOrTrain1 == "2" {
        print()
        print("You have decided to \(busOrTrain1.b).")
        print()
        print("""
            You head to the subway and walk down to the platform.
            The station is full of people...
            You forgot that today is a weekend so all trains are running on an alternate schedule.
            It's cramped and uncomfortably warm at the station...
            The screen says the next train will arrive in 15 minutes...
            """)
        print()
        print("""
            What do you want to do now?
            a. \(decide2WaitTrainOrTakeBus.c)
            b. \(decide2WaitTrainOrTakeBus.d)
            """)
        print()
        question1 = true
    } else {
        print("Type an option to continue...")
        responseBusOrTrain1 = readLine()
    }
} while question1 == false

//Bus prompt 2
var response2WaitOrStay = readLine()
var question2 = false
decide2WaitBusOrTakeTrain = (a:"Wait for the bus. It'll come when it comes. No point in being impatient...",b:"Take the train") // bus
decide2WaitTrainOrTakeBus = (c:"Stay at the station... No point in being impatient.", d:"Go to the bus") // train
var decide3GetOffLineOrStayOrCab = (a:"Get off the bus line and go to the train",b:"Stay. You've waited all this time... This bus HAS to come eventually.", c:"SCREW THIS! I'm getting a cab") // bus
var decide4SqueezeOrWait = (a:"Try to squeeze into the train", b:"Can't fit. Not even worth trying. Wait for the next train... What's another 10 minutes?")//train
var decide5WaitForBus = "Wait for the bus... I give up. Just gonna be patient."//bus
//2 bus and train

repeat {
    if response2WaitOrStay == "3"{ //bus
        print()
        print("You have decided to \(decide2WaitBusOrTakeTrain.a).")
        print("""
            You wait another 30 minutes...
            Then 40...Then an hour...
            People start to leave the line at the bus stop.
            You're exhausted and now you're starting to get hungry...
            """)
        print("""
            What do you do?
            5. \(decide3GetOffLineOrStayOrCab.a)
            6. \(decide3GetOffLineOrStayOrCab.b)
            7. \(decide3GetOffLineOrStayOrCab.c)
            """)
        question2 = true
    } else if response2WaitOrStay == "5"{//train
        print()
        print("You have decided to \(decide3GetOffLineOrStayOrCab.a).")
        print("""
        You head to the subway and walk down to the platform.
        The subway platform is full of people due to train delays and the weekend train schedule.
        The train does arrive- but- it is stuffed!
        The screen says the next train will arrive in an additional 10 minutes...
        """)
        print("""
            9. \(decide4SqueezeOrWait.a)
            10. \(decide4SqueezeOrWait.b)
            11. \(decide3GetOffLineOrStayOrCab.c)
            """)
        question2 = true
    } else if response2WaitOrStay == "4" {
        print()
        print("You've decided to \(decide2WaitBusOrTakeTrain.b)")
        print("""
        You head to the subway and walk down to the platform.
        The station is full of people...
        All trains are running on an alternate schedule.
        It's cramped and uncomfortably warm at the station...
        The screen says the next train will arrive in 15 minutes...
        """)
        print("""
            What do you do now?
            8. \(decide2WaitTrainOrTakeBus.c)
            9. \(decide3GetOffLineOrStayOrCab.c)
            """)
        question2 = true
            } else if response2WaitOrStay == "b" {
            print()
            print("You have decided to \(decide2WaitTrainOrTakeBus.d).")
            print()
            print("""
                You walk to the bus stop and see a huge line of people.
                Of course if the trains are a mess- why would the bus be any better?
                All buses run every 30 minutes with delays due to the increased weekend traffic...
                """)
            print()
            print("""
                What will you do now?
                d. \(decide5WaitForBus)
                e. \(decide3GetOffLineOrStayOrCab.c)
                """)
            question2 = true
    } else {
        print("Type an option to continue")
//        question2 = false
        response2WaitOrStay = readLine()
    }
} while question2 == false

//Train prompt 2
var response3 = readLine()
var question3 = false
decide2WaitTrainOrTakeBus = (c:"Stay at the station... No point in being impatient.", d:"Go to the bus") // train
decide3GetOffLineOrStayOrCab = (a:"Get off the bus line and go to the train",b:"Stay. You've waited all this time... This bus HAS to come eventually.", c:"SCREW THIS! I'm getting a cab")//bus

//bus
var response3Bus = readLine()
var question4 = false
repeat{
    if response3Bus == "5"{
        print()
        print("You have decided to \(decide3GetOffLineOrStayOrCab.a).")
        print("""
        You head to the subway and walk down to the platform.
        The subway platform is full of people due to train delays and the weekend train schedule.
        The train does arrive- but- it is stuffed!
        The screen says the next train will arrive in an additional 10 minutes...
        """)
        print("""
            9. \(decide4SqueezeOrWait.a)
            10. \(decide4SqueezeOrWait.b)
            11. \(decide3GetOffLineOrStayOrCab.c)
            """)
        question4 = true
    } else if response3Bus == "6" {
        print()
        print("You've decided to \(decide3GetOffLineOrStayOrCab.b).")
        print("""
            🚌
            And look! It's the bus!
            Your patience has paid off!
            The bus even has a few seats left. You're one of the only few people who didn't leave the line so you're able to take a seat!
            You are going home!
            Congratulations!
            🥳
            """)
        response3Bus = readLine()
        question4 = true
        // TODO: continue lastloop
    }else if response3Bus == "7"{
        print()
        print("Oh you want a cab? Do you have enough on you to get home?")
        question4 = true
    } else if response3Bus == "8" {
    print()
        print("You've decided to \(decide2WaitTrainOrTakeBus.c).")
       print()
       print("""
           In the 15 minutes you waited, more and more people enter the station...
           The train does arrive- but- it is stuffed!
           The screen says the next train will arrive in an additional 10 minutes...
           """)
       print()
       print("""
           What will you do now?
           c. \(decide4SqueezeOrWait.a)
           d. \(decide4SqueezeOrWait.b)
           e. \(decide3GetOffLineOrStayOrCab.c)
           """)
        question4 = true
    } else {
    print("Type a choice to continue...")
    question4 = false
    response3Bus = readLine()
}
}while question4 == false

//train
repeat {
    if response3 == "a" {
     print("You've decided to \(decide2WaitTrainOrTakeBus.c).")
        print()
        print("""
            In the 15 minutes you waited, more and more people enter the station...
            The train does arrive- but- it is stuffed!
            The screen says the next train will arrive in an additional 10 minutes...
            """)
        print()
        print("""
            What will you do now?
            c. \(decide4SqueezeOrWait.a)
            d. \(decide4SqueezeOrWait.b)
            e. \(decide3GetOffLineOrStayOrCab.c)
            """)
        print("To exit type enter")
        response3 = readLine()
        question3 = true
    } else if response3 == "b" {
        print()
        print("You have decided to \(decide2WaitTrainOrTakeBus.d).")
        print()
        print("""
            You walk to the bus stop and see a huge line of people.
            Of course if the trains are a mess- why would the bus be any better?
            All buses run every 30 minutes with delays due to the increased weekend traffic...
            """)
        print()
        print("""
            What will you do now?
            d. \(decide5WaitForBus)
            e. \(decide3GetOffLineOrStayOrCab.c)
            """)
        print("To exit type enter")
        response3 = readLine()
        question3 = true
        }else if response3 == "e"{
            print()
            print("""
            🚕
            Hmm... I guess this IS an option...
            You leave and hail for a cab.
            You get the cab and climb in but- the cab driver is very chatty...
            You awkwardly answer all of the cabbies questions and politely agree at everything he says.
            But you make it home.
            $25.34 later...
            """)
        print("To exit type enter")
        response3 = readLine()
            question3 = true
    } else {
        print("Type a choice to continue...")
        question3 = false
        response3 = readLine()
    }
} while question3 == false
// train
decide3GetOffLineOrStayOrCab = (a:"Get off the bus line and go to the train",b:"Stay. You've waited all this time... This bus HAS to come eventually.", c:"SCREW THIS! I'm getting a cab")
decide4SqueezeOrWait = (a:"Try to squeeze into the train", b:"Can't fit. Not even worth trying. Wait for the next train... What's another 10 minutes?")
decide5WaitForBus = "Wait for the bus... I give up. Just gonna be patient."
var response4 = readLine()
var question5 = false
//5
repeat{
    if response4 == "c"{
        print()
        print("You've decided to \(decide4SqueezeOrWait.a).")
        print("""
        🚃
        You manage to successful to squeeze into the train...
        It is beyond uncomfortable... You have other passanger's elbows and bags jamming into you and their breath on you... You don't even have a pole to hold on to...
        But... As the train continues on its path- with every stop- the crowd slowly goes away.
        You find a seat, stretch your legs, hug your bag and enjoy the rest of the ride home.
        You did it.
        You're home. 😌
        """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    } else if response4 == "d"{
        print()
        print("You've decided to \(decide4SqueezeOrWait.b)")
        print("""
        🚃
        You're absoluteley right! It isn't worth it.
        The next train arrives in 10 minutes and it's less crowded! In fact- you get a seat as soon as you enter the cart.
        You did it! You're going home!
        Congratulations! 🥳
        """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    } else if response4 == "e"{
        print()
        print("""
        🚕
        Hmm... I guess this IS an option...
        You leave and hail for a cab.
        You get the cab and climb in but- the cab driver is very chatty...
        You awkwardly answer all of the cabbies questions and politely agree at everything he says.
        But you make it home.
        $25.34 later...
        """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    }else if response4 == "9" {
        print()
        print("You've decided to \(decide4SqueezeOrWait.a)")
        print("""
        🚃
        You manage to successful to squeeze into the train...
        It is beyond uncomfortable... You have other passanger's elbows and bags jamming into you and their breath on you... You don't even have a pole to hold on to...
        But... As the train continues on its path- with every stop- the crowd slowly goes away.
        You find a seat, stretch your legs, hug your bag and enjoy the rest of the ride home.
        You did it.
        You're home. 😌
        """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    } else if response4 == "10" {
        print()
        print("You've decided to \(decide4SqueezeOrWait.b)")
        print("""
            🚃
            You're absoluteley right! It isn't worth it.
            The next train arrives in 10 minutes and it's less crowded! In fact- you get a seat as soon as you enter the cart.
            You did it! You're going home!
            Congratulations! 🥳
            """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    } else if response4 == "11" {
        print()
        print("""
        🚕
        Hmm... I guess this IS an option...
        You leave and hail for a cab.
        You get the cab and climb in but- the cab driver is very chatty...
        You awkwardly answer all of the cabbies questions and politely agree at everything he says.
        But you make it home.
        $25.34 later...
        """)
        print("To exit type enter")
        response4 = readLine()
        question5 = true
    } else {
        print("Type a choice to continue...")
        question5 = false
        response4 = readLine()
    }
} while question5 == false

//bus
var response4Bus = readLine()
var question7 = false
repeat{
    if response4Bus == "c"{
        if response4 == "c"{
            print()
            print("You've decided to \(decide4SqueezeOrWait.a).")
            print("""
            🚃
            You manage to successful to squeeze into the train...
            It is beyond uncomfortable... You have other passanger's elbows and bags jamming into you and their breath on you... You don't even have a pole to hold on to...
            But... As the train continues on its path- with every stop- the crowd slowly goes away.
            You find a seat, stretch your legs, hug your bag and enjoy the rest of the ride home.
            You did it.
            You're home. 😌
            """)
            print("To exit type enter")
            response4Bus = readLine()
            question7 = true
        } else if response4Bus == "d" {
        print()
        print("You've decided to \(decide4SqueezeOrWait.b)")
        print("""
        🚃
        You're absoluteley right! It isn't worth it.
        The next train arrives in 10 minutes and it's less crowded! In fact- you get a seat as soon as you enter the cart.
        You did it! You're going home!
        Congratulations! 🥳
        """)
        print("To exit type enter")
        response4Bus = readLine()
        question7 = true
    } else if response4Bus == "e"{
    print()
    print("""
    🚕
    Hmm... I guess this IS an option...
    You leave and hail for a cab.
    You get the cab and climb in but- the cab driver is very chatty...
    You awkwardly answer all of the cabbies questions and politely agree at everything he says.
    But you make it home.
    $25.34 later...
    """)
    print("To exit type enter")
    response4Bus = readLine()
    question7 = true
        } else {
            print("Type an option to continue")
            response4Bus = readLine()
            question7 = false
        }
}
}while question7 == true

var question6 = false
var response6 = Int(readLine() ?? "-1" ) ?? -1

//lastloop: for _ in 1...10 where response3Bus == "6" || response3 == "e" || response4 == "c" || response4 == "d" || response4 == "e" || response4 == "9" || response4 == "10" || response4Bus == "11" || response4Bus == "9" || response4Bus == "c" || response4Bus == "d" || response4Bus == "e" {
//    print("Congratulations! You beat the game! On a scale of 1 to 10, how much did you enjoy the game?")
//    response6 = Int(readLine() ?? "-1" ) ?? -1
//    if response6 <= 4 {
//        print()
//        print("Oh... Sorry to hear that. 🥺")
//        question6 = true
//    } else if response6 <= 6 {
//        print()
//        print("I guess that's better than a 3 haha! Thanks for playing my humble text adventure 😌")
//        question6 = true
//    } else if response6 <= 9 {
//        print()
//        print("Oh wow! Almost the highest rating! Thank you for playing my humble text adventure 😊")
//        question6 = true
//    } else if response6 == 10 {
//        print("A 10?! Wow! Thank you so much! This was the first game I have ever made so I'm really happy you enjoyed it! 😄")
//        question6 = true
//    } else {
//        print("Maann rate my game or else you can't exit!")
//        question6 = false
//        response6 = Int(readLine() ?? "-1" ) ?? -1
//    }
//}

