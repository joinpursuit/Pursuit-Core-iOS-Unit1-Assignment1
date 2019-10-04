//
//  main.swift
//  text-based adventure 9.30
//
//  Created by World Domination a Brand on 9/30/19.
//  Copyright © 2019 Pursuitful stuff. All rights reserved.
//

import Foundation
//question 1 below
print("Welcome to WDN where Adventurer🚦🚀 Shaniya just joined a wonderful program called Pursuit. \n Where she can change the trajector of her LIFEEEEEE!!!!!! \n But Shaniya runs into problems ⁉ along the way(She's only a human after all), can you help her out??!?!?!?!?! 👍🏿YES or No👍🏿") //Use \ to escape characters

//var yesOrNo = readLine()

//let  answer = yesOrNo
print()


sleep(1)

var response = "" // string
repeat { // repeat while ( 1 opportunity)
    print("Enter yes or no to play the game")
    response = readLine() ?? "" //nil coelscing : unwraps it to create the optional
    //
    
//    switch response {
//    case "no":
//        print("Ohhhhhh Nooooo but she NEEDDSSS you!!!")
//    default:
//        print("You are sooooooooooooooooooooooooooooooooooooo NICEEEE!")
//
//    }
//} while response == "no"
    
    switch response {
    case "yes":
        print("You are sooooooooooooooooooooooooooooooooooooo NICEEEE!")
    case "no":
            print("Ohhhhhh Nooooo but she NEEDDSSS you!!!")
    default:
        print("this is not working!!!")

    }} while response != "yes"





sleep(1)
print()
print()
print()

print("YEAAAAAHHHH!! lets go. Just a reminder things (INSIDE OF HERE) are what you should type as your answer.")
print()
print()

sleep(3)
//question 2 below
//at least range used below
print("Today is Shaniya's first day of class but she's prone to over sleeping 😫 😫 😫 😫 😫. \n (But I mean who doesn't like to sleep) What time should Shaniya get up? \n (please use militay time (00_00)  format ex: (00_00) is 12:00am and (13_00) is 1:00pm)")
print()
sleep(3)
var timeResponse = Int(readLine() ?? "") ?? -2

//switch timeResponse {
//    case
//}
print()
if (00_00..<06_00).contains(timeResponse) {
    print("WHOAAAAA🤯🤯🤯🤯 thats way too early even for me and I'm a computer.. are you trying to kill the girl🤨?!?!")
}else if (06_01..<08_20).contains(timeResponse) {
    print("OOHHHHH 🥳🥳🥳We're being responsable!!!! This is the PERFECT time.🥳🥳🥳")
}else if (08_21..<24_59).contains(timeResponse) {
    print("We might be late but we got more sleep😬😬😬")
}else{
    print("Are you even trying??😒")
}

print()

//question 3 below
print("lets move on😊")

sleep(2)
print()
print("Shaniya now has to make it to the train 🚂... She checks the app and realizes that its 2 MIUNTES AWAY!!😰 What should she do.... (Run)🏃🏿‍♀️..(Walk)🚶🏿‍♀️... or 🛌(Go) back home???")
sleep(4)
let train = readLine ()?.lowercased()
print()

switch train{
case "run" :
    print("Thats smart..🤓 She does need to get there on time..")
case "walk":
    print("You're right she needs to save her enegery👍🏿... for what reason I dont think we'll ever find out..😬")
case "Go" :
    print("😬.... We're gonna pretend you said run 😉(but I feel you)")
default:
    print("I hope you are more useful in your life")
    break}
print()

sleep(3)
print("NOWW!!!")
print()

sleep(2)
//question 4 below
// Go over this
print("She's so lucky the trains are delayed so she made it but... they are SUPER CROWDED 😰😰😰😰😰 on her left there is an empty space but thats because there is a baby in their stroller playing (WWE) 🤼‍♂️[a werstling show].... on her right theres a small unsupecting (lady) holding the pole on her lonesome👵🏻... and directly infront of Shaniya is a (seat) ⑁. Which way should she go ")


//let seat = "Uhhh no she sits in class all day she needs to stand"
//let lady = "Yeahhhhh and theres so much space so no ones gonna touch her"
//let wwe = "Uhhh no she needs to not fight someones child today"
//
var questionAnswer: String
  questionAnswer  =  "" //type inference
repeat{
    print("Which way should she go??? ")
    questionAnswer = readLine () ?? " "
    switch questionAnswer {
    case "seat" :
        print("Uhhh no she sits in class all day she needs to 🕴🏻stand")
    case "lady" :
        print("Yeahhhhh and theres so much space so no ones gonna touch her")
    case "wwe" :
        print("Uhhh no she needs to not fight someones child 🧒🏼today")
    default: print("come on pick oneeeee please!!!!")
    }
}
    while questionAnswer != "lady"


//question 5 below
//sleep(4)
print("Shaniys finds her place standing next to the innocent old lady👵🏻... but something hits her shin.. she looks down and sees nothing should she (stay) or should she (move)")
//
let movement = readLine ()?.lowercased()
//
var noMoreLady = false
switch movement {
case "stay":
    print("Shaniya gets hit 10 more times since and it turns out the innocent old lady 👵🏻is not so inncoent this minx is the one thats been hitting shaniya... Sooooo Shaniya's going to hit her back.. but how many times shouuld she hit the old 👵🏻hag")
    print()
    let knockHerOut = readLine()
    let knockHerOut1 = Int(knockHerOut ?? "") ?? -1
    for _ in 1..<knockHerOut1 {
        if (0..<10).contains(knockHerOut1) {
            print("Shaniya got to teach that menacing lady a lesson and got out the train right before the doors closed shes still on the right path to arriving at pursuit on time")
            print()
            noMoreLady = true
        }
    }
    print()
    print("Shaniya shifts her bag to strategically hits the 👵🏻lady \(knockHerOut1) times.")
    sleep(2)
    if !noMoreLady{
        print("Shaniya attacked an old 👵🏻lady and now the 🚨cops are getting called....")
    }
    
case "move":
    print("Shaniya successfully moved about 1 person away from the 👵🏻lady.. So at least she's not getting hit anymore.")
    
default:
    break
}

//question 6
sleep(2)
print()
print("Lucky for Shaniya she makes it out of the train right before the train doors close.. Now all she has to do is find the 7 train. Should she turn (left) or (Right).")

print()
var directions = (thisWay: "left" ,thatWay: "right")
//var direction1 = ("left")
//var direction2 = ("right")
var direction = readLine()
if direction == directions.0 {
    // number 7
    print("She runs right into someone🤸🏽‍♀️🏃🏽‍♂️ and her bag slips from her hands ↓...WHICH HAS HER LABTOP💻 IN IT!!!!.. Does she catch the 💼(bag) or let it 🍃(slip) thourgh her fingers")
    let labtop = readLine()
    print()
    sleep(1)
    if labtop == "bag"{
        print("We have to wonder were her spidey🕸 senses come from.")
    }
    else {
        print()
        print("A police officer🚔 caught Shaniya's bag as they were running💨 to find the maniac🙃 that hit an old lady😜😉😜😉😜😉 ")
        print()
    }
    //    var slip = "Well...Today is a good a day as any to just go home and relax"
    //    var bag = "We have to wonder were her spidey senses come from."
    //    if bag == labtop{
    //
}


//8
print("Shaniya makes it to the 7 train 🚈right on time.. but all that running🏃🏽‍♂️ or lack of has made her tired.. what should she do?? ⑁(sit) and relax or (stand) and wait since its only 2 stops???")

let decisions2 = readLine ()?.lowercased()
//
switch decisions2 {
case "sit":
    print("Now that is a nice way to relax, not only the mind but the body")
    
default: print("She does not miss her train stop so thats good.")
// this is skiping the 9th question
}

//9 for loop NEED TO FIX NEED TO GO OVER // This skips
print()
print("Shaniya is off the 7 train but now there are only 8 minutes until class starts at 10...AND ITS A 15 MINUTE WALK!!!! Should she sit down for (1) minute and catch her breath cause this has been a long morning or should she run there like her life is on the line in the next (8) minutes")

print()
let option = readLine() ?? ""// this option is not related to the one inside of the for statment

//i = readLine() ?? "" //nil coelscing : unwraps it to create the optional
var options: [String] = ["1","8"]
for _ in options{
    if option == options[0]{
    print("She does indeed take the break that she so rightfully deserves.. she slacks Jamie to let her know and is definetly not on time.. but her mind is right")
        break
}else if option == options[1] { print("So Shaniya sprints off like there is no tomorrow dodgeing and weaving through all the people walking like time isn't almost up.. jumping over cars, and through the streets like she owns them and she makes it on time.")
        break
    }
    else if option != options[1] || option != options[2] {
        print("Should she sit down for (1) minute and catch her breath cause this has been a long morning or should she run there like her life is on the line in the next (8) minutes")
    }
}

//10

print("Thanks for helping Shaniya out on her morning commute...")

var doingThisAgagin = "" // string
repeat { // repeat while ( 1 opportunity)
    print("Will you tune in next time for her evening after pursuit commute (yes) or (no)")
    doingThisAgagin = readLine() ?? "" //nil coelscing : unwraps it to create the optional
    //
    switch doingThisAgagin {
    case "yes":
        print("Ohhhhhh Nooooo but aren't you tired yet? I think YOU deserve a break...")
    default:
        print("Yeah I completely get it")
    }
} while response == "no"
