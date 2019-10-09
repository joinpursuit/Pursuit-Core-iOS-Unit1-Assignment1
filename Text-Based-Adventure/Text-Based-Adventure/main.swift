//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Kelby Mittan on 9/30/19.
//  Copyright © 2019 Kelby Mittan. All rights reserved.
//

import Foundation


print("Enter your name!!")
let enterName = readLine()

print()

print("Hello \(enterName ?? "playa"), Welcome to Ascend NYC..... on a scale of \"1-10\" how adventurous are you feeling about treking to the top of a New York City landmark today?")

let howAdventurous = readLine()

let howAdenturousAsAnInt = Int(howAdventurous ?? "") ?? 7

//var isPlaying = false

var trophy = (landmark: String(), level: String())

//if isPlaying == false {

//    repeat {
var isPlaying = true


switch howAdenturousAsAnInt {
    
case 9...:
    isPlaying = false
    print()
    print("Wow \(enterName ?? "playa")..... \(howAdenturousAsAnInt) is pretty pumped up 🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️!!!")
    
    print("Are you sure you can handle all NYC Ascent has to offer? \"Yes\" or \"No\"???")
    
    trophy.landmark = "Freedom Tower"
    
    let canHandle = readLine()?.lowercased()
    
    switch canHandle {
    case "yes":
        
        for _ in 1...3 {
            print("🤯🤯🤯🤯🤯🤯🤯🤯🤯🤯🤯")
            sleep(1)
        }
        
        print("""
((((((((((((((((((((((((((((((((((((((#((((((((((((((((((((((((((((((((((((((((((((((((((((((//////
(((((((((((((((((((((((((((((((((((((%%#(((((((((((((((((((((((((((((((((((////////////////////////
(((((((((((((((((((((((((((((((((((((##(((((((((((((((((((((((((((((((((((/////////////////////////
(((((((((((((((((((((((((((((((((((((#%#(((((((((((((((((((((//////////////////////////////////////
(((((((((((((((((((((((((((((((((((((##(((((((((((((((((///////////////////////////////////////////
(((((((((((((((((((((((((((((((((((((&&%(((((((////////////////////////////////////////////////////
(((((((((((((((((((((((((((((((((/(((##(((/////////////////////////////////////////////////////////
((((((((((((((((((((((((((((((((((/(((#((//////////////////////////////////////////////////////////
((((((((((((((((((((((((((//((///(/((#%((//////////////////////////////////////////////////////////
(((((((((((((((((((////////////(#&&&@@&&&&&//////////////////////////////////////////////////////
((((((((((((((((((////////////(@@((###%&&@@#(////////////////////////////////////////////////////
(((((((((((((((((/////////////(%##%#(&&&%%%###((///////////////////////////////////////////////////
/////(((////////////////////(#%####((&&&%%%&&%&//////////////////////////////////////////////////
///////////////////////////(#######//%&%&%%%%&%%#(/////////////////////////////////////////////////
///////////////////////////(######(**%###%%%%%%%#(/////////////////////////////////////////////////
///////////////////////////(######/**%%%%%%%%####//////////////////////////////////////////////////
///////////////////////////(######/**#%%%%%%%%%%#(/////////////////////////////////////////////////
///////////////////////////(######***(&&%%%%%%%%#(/////////////////////////////////////////////////
///////////////////////////(######***(&&%&&%&%%(/////////////////////////////////////////////////
///////////////////////////####%%#,**/%&%&%%&%&(//////////////////////////////////////***********
///////////////////////////#%#####****%&&&&%&%%(///////////////////////////////******************
///////////////////////////#%%###(****#%%%%%%%%(///////////////**********************************
///////////////////////////#%####(****#%%%%%%%%%#(///////////**************************************
///////////////////////////(#####/****(%%%%%%%%%#(////////*****************************************
////////////*//////////////######***,*/%%%%%%%%%#(/************************************************
///////////////////////////######***,*/#%%%%%%%%#(*************************************************
///////////////////////////#####(******(%%%%%%#%((*************************************************
///////////////////////////#####(***,,*(%%%%%%#%((*************************************************
///////////////////////////#####(***,,*/%%%%%%%%((*************************************************
///////////////////////////#####/,**,,,*%%%%%%#%((*************************************************
///////////////////////***/####(/**,,,,*###%%%%%((*************************************************
////////////////**///*****/####(***,,,,*###%%%##((*************************************************
/////////////*****//******/##((/***,,,**(%%#####((*************************************************
**************************/####/****,,,*(%%#%%%%((************************************/,..,,,,,,,(*
**************************/##((*,***,,**/%%%%%%%((************************************(/((//**//***
**************************/##((*,**,,,,,*%%%%%%#((*************************************/(((////(*,*
**************************/###(,,,,,,,,,*#%%####((**************************************//****,**,*
**************************/###%#/,,,,,,,*#%%#%%#((**************************************///******,,
*************************/(#######/*,,,,,(%#%%%#((/************************************/////////**,
*********************/#####%%%%%%%%%%#*,*(#%%%%#((******************************,**/*/*/////////**,
********************/((((##((((((////*//*/#%%%%#((***********************************/*//////(///*,
///*//*******///****///////((((//////*////(%%%%#((/**************************,*****/***/////////**,
///////////**////////////////////////**///(%%%%#((/**********************,,**(#%%%%%%%#(((((((((/*,
""")
        print()
        sleep(1)
        print("Welcome to One World Trade Center. Also known as Freedom Tower.")
        print()
        sleep(1)
        print("If you can guess close to the number of flights of stairs in the Freedom Tower I'll let you take the elevator to the top..... Give it a try!!!")
        
        var isPlaying = true

            
            let flightsInFreedomTower = readLine()
            let flightsInTower = Int(flightsInFreedomTower ?? "") ?? -1
            
            
            if flightsInTower >= 175 && flightsInTower <= 185 {
                
                trophy.level = "Savage"
                
                print("WOW..... I'm impressed \(enterName ?? "playa")..... You get to take the elevator to the top!!")
                
                var N = 6
                while N > 1 {
                    N -= 1
                    print("🔼🔼🔼🔼🔼🔼🔼🔼")
                    sleep(1)
                }
                
                print()
                sleep(1)
                print("Welcome to the top of \(trophy.landmark), you're a \(trophy.level)!!!")
                isPlaying = false
                
            } else if flightsInTower < 170 || flightsInTower > 190 {
                print("Close but no cigar..... The Freedom Tower actually has 180 flights of stairs to the top!!, Looks like you're taking all of them!!!")
                print()
                print("How Many Stairs can you climb in one minute?")
                let stairsPerMin = readLine()
                let stairsPerMinInt = Int(stairsPerMin ?? "") ?? -1
                switch stairsPerMinInt {
                case 40...:
                    print("Holy Smokes, that's a record setting pace 🔥🔥🔥🔥!!!..........")
                case ...40:
                    print("No worries, you got this 👏👏👏👏")
                default:
                    print("xxxxxx")
                }
                print()
                sleep(1)
                var N = 6
                while N > 1 {
                    N -= 1
                    print("\u{1F9D7}")
                    sleep(1)
                }
                print()
                
                print("You're almost half-way there..... How are you feeling on a scale of 1-10?")
                let feeling = readLine()
                let feelingAsInt = Int(feeling ?? "") ?? -1
                
                switch feelingAsInt {
                case 9...:
                    print("You're a machine!!!")
                case 1...8:
                    print("You got this!!!...........")
                    print()
                    
                    
                    repeat {
                        print("Select an energy drink to help you finish, \"Red Bull\" or \"Monster\"!!")
                        let energyDrink = readLine()?.lowercased()
                        
                        if energyDrink == "red bull" {
                            for _ in 1...3 {
                                print("GULP.....")
                                sleep(1)
                            }
                            print("It gives you wings!!")
                            print()
                            isPlaying = false
                        } else if energyDrink == "monster" {
                            for _ in 1...3 {
                                print("GULP.....")
                                sleep(1)
                            }
                            print("Unleash the Beast!!")
                            isPlaying = false
                        } else {
                            print("Please enter, \"red bull\" or \"monster\"!!")
                            isPlaying = true
                        }
                        
                    } while isPlaying == true
                    
                    
                default:
                    print("Please select an energy drink.... \"red bull\" or \"monster\"!!")
                }
                print()
                sleep(1)
                
                print("Five more steps, can you do it \"yes\" or \"no\"?")
                let almostThere = readLine()
                if almostThere == "yes" {
                    var N = 6
                    while N > 1 {
                        N -= 1
                        print("\(N).....")
                        sleep(1)
                    }
                    print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
                    sleep(1)
                    print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
                    sleep(1)
                    print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
                    print("Way to go \(enterName ?? "playa")!!!.... You've Ascended to the top of The Freedom Tower")
                    print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
                } else if almostThere == "no" {
                    print("That's a bummer, better luck next time \(enterName ?? "playa")!!")
                } else {
                    print("Yes or No Dummy 😢!!!")
                    
                }
                //            let trophy.landmark =  "Freedom Tower"
            } else {
                print("Please Select a # Value!!!..... Guess the number of flights in One World Trade")
                isPlaying = true
            }
        
    case "no":
        print("Welp \(enterName ?? "playa")... doesn't sound like you're all that adventurous after all 😒!!!")
    default:
        print("Welp \(enterName ?? "playa")... doesn't sound like you're all that adventurous after all 😒!!!")
    }
case 4...8:
    
    isPlaying = false
    trophy.landmark = "The Vessel"
    for _ in 1...3 {
        print("👌👌👌👌👌👌👌👌👌👌👌")
        sleep(1)
    }
    print("""
/,*,,*.,,,*.,.,,,,                                                                                        ........,..,,,...................
/,*,**.,,,*.,.,,,,                           .                                          ., ..            ....,..,,.,,,..................
/*////*/*//*******                  ...,,... ..,*,.                                   .,//..  ....,.      .......,,........................
/*////*/,**.*.*,,,            ..,,,,.....*//(##(//**,,.                           .,,***((((/*,,...,,....,.....,,..,,......................
/**///*****,*,**,,          .*, ..,*/((##%##%%%%%##/****,.......................,,***((((((((((##((/*,...,,*,....,,......................
/*////*/,**.*,**,,          ,//###%%%%%%%%%%##(*/%%%##(///*. .   ...,...     .,/*//((/((*,*/(####(((((((((/***..,....,.....................
/*////**,**,*,**,,        ../%%%%%%%%##(/,.       .*%%%%##((//////////////////(((((((*.        ..*(((#(((###/*,....,..............
(//////////,****,,       .*/%%%%%%(,                   *#&&&&&&%%%%%%%%%%%%%%&%#(*                    ,#%####(*,,..,,,....................
//////**,**,*,**,,      .,(#%%%%%#.                   /&&&(////**********//#####/.                   /#%####(*,...,....................
/**///*****,****,,      */%%%%%&(*       .,***,.   ,%&&&%(*.                  ./#%##(,.  .,,,..*,   .. .*%%%###/*,,.......................
/*//////,**.*,**,,     ,(#%%%&&%*,,,,,,,,...,,,//(#&&&%/,  ..........           .,(&%##(**,, ../,.,,,,.,,#%%####(*,.......................
/*////**,*/,*,**,,    ./#%%%&&%(//...,,,*/((##%%%&&(,   .,,,,,,,,,,,,,,..,......,/(%%%#((((((/*,,,//,*/((/(((////,..........  ........
///(///////*/*****    ,%%%%%(((#%%%%%%%%%%%%%&&%%####((/////*************/***/(((#((((####((((#((##((((/*/(#(////***,,,*,,,..........
//////*/,**,*,**,,    .*##%%%#%%%%%%%%%&&%#(**.  */%%%#%#((((/********,,,**(///(##(((((*...,*/(#####((/((##//(#(/****,****,,,..........
/*////*/***,*,**,,        (%#%%%%%&%#*,.       **.. ,/%%%%%%####################(((/*...........  ..*/%####(//(/**,,****,,,,,.....
////////***,*,**,*        *#%%%%%&%(##(,,.     *,..,,. ,(&&&&&%%%%%%%%%%%%%%&%##(*.............. .,*(//%%#(((//*,*****,,,**,,...........
//////*/,**,*,**,,      ,*(#%%%%&%*.*#%%#/,....**,*/,*%&&&/((##########(##(#%%#((*,..,,......,,/#(*,./#%#(((/***,,*****,,,,.........
(//////////*/*//**     .(#%%%%%&%#/*,*(#((/**//(/,,(%&&&&(//**,,,,,,,........*/#%%%##/*,*******/////***/(%%((((/******,,,**,,..........
///////////*****,,     ,#%%%%%&%##((/***,,*///(%#&&&%/****,,,,,,,,,,........,,*/#%%####(/**//,,***(//((/////////***,***,,,,.............
/*////****/******,     *&%%%%&%#/((((#####%%%##%%%%%#(#(/**,,*,,,.,,*,.....,,*,,*/(###((((//(##(((///*/***/(#(*///*,****,,,,,........
////////(////(///*       ./#&%##%%###%%%%%%%%%%%%%%#%%#(((((///(((((#((((((///(##(//////(#(((((((////*/((/*/##/*******,,***,,..............
////////(////(///*          #(#%%%%%&&&%#/..   ,*.,/##%%%%%#(#(//////*/////(////((///*,........,*(####(((((//(*****,******,,,..............
/////////////////*        ../%%%%%%&%/(%%(/*,..,*.,*..*#%&&&%%%%#######(##%%%#####/,.........,*//((/(%#/((((/*,,,**********,,..............
////////(//(/(/*/*       .//(%%%%%&&(../(((/,,*/*.....,(%&&&%%%%%%%%%%%#%%%%%##(((*,.,,,,,,,.,*///*,*/%#((((/**************,,..............
/**/*/**/*/******,      .*##%%%%&&&%/,*//*,,//(//,,/*/%&&&&%(***,,,,,,,,,,,*/%%#(((/*////**//*,.,*,,*/#%%//(////*,,******,,,,..............
/*//////(////(///*      .*%%%%%%%%%##((##/.....*(((###&&&%(****,,,,,,,,,,,,,,,*#%%%#(((((*.....,*////////(//////*********,*,,,,,,.,,.......
////////(////(**/*        .,(%%%#//(((###%%%%%###%%%&&%(/**((/**,,,,,,,,,,,**/(/*/###/////(((((((//*****/###**********,,.....,,,...,.......
////////////////**           ,#%(#%%###%%%%%%%%%%#####%%#**///(((/////////((///(#(////*/((///////***//(((/(#**,,,**,,,.....,,..............
/*//////(//(/(///*          ..,(%%%%%%%%%%%%%%(((/*(#(#%%##*((/(/////*///(////**///**/*,*///(#####(//(/((//*,,,**,,,**,*/((//,,............
/**/*/,**********,         .*,*#%%%%%%&%#/(/,,/((*,.**(%%%%%####((((((((((##((#(((/****,,,**,,,//#%#/////((/***,*,,,,,,,,,,/(*,,...........
/****************,         .###%%%%%%&%(/*.. ..*,**.*,.*(%&%%%#################(///***,,,,,,,,,,,,(%%#///*////,,,,,,,,,,.,,**/,,...........
/((////*(////(///*         ,#%##%%%%&%###///**///((**/#&&&&&%%###(((((((((#%%%#####***/***,,*/**/(//(#(///////,,,..,,.,,.,,,,*/*,..........
//////*/////////** .... .   .*/###%%###((((//////(#%&%%&&&%%(/////********///(#%%###%%#///**///((///**//*****,,.,.....,,.,,,.,//,,.........
/((**/**(//(/(*//*.*////////****(%%%########%%%%%###((%&%#(*,*(/***////***/(/**/**((///(((((((((((/////##*,,,,,..,,..,,,..,,,.,/*,,........
///***,**************************/(#%%%%%%%%%%%%%%%###(((((#(/******///***/**,,**//////(/////****///(((//*,****,,,,,,,,,,,,,,..,/*,,.,,,,,,
/*/*****/*********************/%%#%%%%%%%%&%**,**/(/,*(##%%#//////////**((/**/(((/**///******(%#(////((//##/,,,*,,,*,,,,,,,,*,.,/#*,,,,,..,
/(((//**(//(/(/////***********(#####%%%%%&%(,..*,,*/,,/,,(#%%%%%%(((((((####(((/**,,,*,,,,,,,*(%%(//*/(((((*,,,,*,,*,,,,,,,,,*,,*(#,,..,,,,
///////////////////***********/#%##%%%%%%%##//,**,*(*,/**(#&%%%##(((((((((#####(//*,,**,****/((%%#//**/((/*,,,,,,,,,,,,,,,,,,,,,,*#/,,,,..,
////(/**(////(**//****************#######%#((#((((((/(#&&&&&&%##//////////(%%%%%##(******/((*,,***//*//****,,,,,,,,,,**,,,,.,,,,,,(#/,,,..,
//////**///////*****************,,/*/%%/(##########(//#%%%(/**,,****,,**,*/###(/**////////******/#(***,,,,**,,,,,,,***.,,..,,,,,*%#,.,,,,
/*/**/*//*/***********************####(#%%%%%%%%%%%%%%#(/(/**///*///*//(((*,,.,*((//////((/////(((**(((**,,,***,,*,,.,**,.,,,..,**,(%#*.,,,
(///////(//(/(////****************##%(#%%%%%##%%%(////#((((/*/(((((/////((*,*//******///(#(////((((//(#**,,,***,,**,,,***..*,,,,,*,*(%#,,.,
####((/((//////////*/***//*/****/*(##%%%%%%%%%&%(,,,,,/**##%%%//**********(((((//*,,**,,*/%%////((((//(,**,,,,**,,*,,,***,,,*,,,,,,,*%%/.,*
""")
    print("Okay \(enterName ?? "playa"), a \(howAdenturousAsAnInt) is adventurous enough to try the Vessel at Hudson Yards!!!......")
    print("Ready to start? \"yes\" or \"no\"?")
    
    let readyGo = readLine()?.lowercased()
    trophy.level = "Rockstar"
    
    
    switch readyGo {
    case "yes":
        print("The Vessel is an extraordinary centerpiece of Hudson Yards, a soaring new landmark meant to be climbed. I'll let you take the elevator to the top if you can guess close to number of individual stairs in the Vessel..... Give it a try!!!")
        print()
        let flightsInStructure = readLine()
        let flightsStructure = Int(flightsInStructure ?? "") ?? -1
        if flightsStructure >= 2300 && flightsStructure <= 2700 {
            print("WOW \(enterName ?? "playa")..... I'm impressed!!! you get to take the elevator to the top of \(trophy.landmark)!!!")
            for _ in 1...5 {
                print("🔼🔼🔼🔼🔼🔼🔼🔼")
                sleep(1)
            }
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            sleep(1)
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            print("\(enterName ?? "playa")...... Welcome to the top of The Vessel")
            
        } else {
            print("Unfortunately for you \(enterName ?? "playa") this elaborate honeycomb-like structure rises 16 stories and consists of 154 flights of stairs, 2,500 steps, and 80 landings for visitors to climb")
            print()
            print("Looks like you're climbing")
            print("")
            print("How Many Stairs can you climb in one minute?")
            let stairsPerMin = readLine()
            let stairsPerMinInt = Int(stairsPerMin ?? "") ?? -1
            
            switch stairsPerMinInt {
            case 40...:
                print("Holy Smokes, that's a record setting pace 🔥🔥🔥🔥!!!..........")
            case ...40:
                print("No worries, you got this 👏👏👏👏")
            default:
                print("")
            }
            for _ in 1...5 {
                print("\u{1F9D7}")
                sleep(1)
            }
            
            print("You're almost half-way there..... How are you feeling on a scale of 1-10?")
            let feeling = readLine()
            let feelingAsInt = Int(feeling ?? "") ?? -1
            
            switch feelingAsInt {
            case 9...:
                print("You're a machine!!!")
            case 1...8:
                print("You got this!!!...........")
                print()
                
                
                repeat {
                    print("Select an energy drink to help you finish, \"Red Bull\" or \"Monster\"!!")
                    let energyDrink = readLine()?.lowercased()
                    
                    if energyDrink == "red bull" {
                        for _ in 1...3 {
                            print("GULP.....")
                            sleep(1)
                        }
                        print("It gives you wings!!")
                        print()
                        isPlaying = false
                    } else if energyDrink == "monster" {
                        for _ in 1...3 {
                            print("GULP.....")
                            sleep(1)
                        }
                        print("Unleash the Beast!!")
                        isPlaying = false
                    } else {
                        print("Please enter, \"red bull\" or \"monster\"!!")
                        isPlaying = true
                    }
                    
                } while isPlaying == true
                
                
            default:
                print("Please select an energy drink.... \"red bull\" or \"monster\"!!")
            }
            
            print("Ten more steps, can you do it, yes or no?")
            let almostThere = readLine()
            if almostThere == "yes" {
                var N = 6
                while N > 1 {
                    N -= 1
                    print("\(N).....")
                    sleep(1)
                }
                
            }
            trophy.landmark =  "The Vessel"
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            sleep(1)
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            sleep(1)
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
            print("Congratulations \(enterName ?? "Climber").... You've made it to the top of \(trophy.landmark) at New York City's Hudson Yards you're a \(trophy.level)")
            print("🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆🎆")
        }
        
    default:
        print("Don't be a PUNK")
    }
case ...4:
    
    isPlaying = false
    trophy.landmark = "The Couch"
    for _ in 1...3 {
        print("🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄")
        sleep(1)
    }
    print("""
                                                                                                       
                                     ....,,,,*************.
                   ..,,,,,*************,*******************
       ...,,,**********************************************.
.***********************************/////////////////////////*/.
,**/((//*****************//////////////////////////////////////*
****(/////////////////////////////////////////////////////////*
****(//////////////////////////////////////////////////////////.
****/(((((((((((((((((((/////////(///////////////////////////////****,,...
****/((((((((((((((((((((((//////(/////////////////////////////(%#(//*************,,,..
***/*(((((((((((((((((((((///////((//(((((((//(((((/((((((((((((&%##(((//////************,,,**,,..
*////(#((((((((((((((((((((((((((((((((((((((/////(((((((((((((#&####((((((////////***********///(/
*/((/(#(((((#(((((((((((((((((((((((((((((((((///(((((((((((((#%&&%####((((((((((((((////////((////*/
,****,,,,,,,,,,,**/((((#((((((((((((((((((((((((((((((((((((((########%%&&&%%%########(((((((((//////(((////*/
,****,,,,,,,,,,,,,,,,,,,,,,,**/((((((((((((((##(########%%%%%%##(//***********///((########(((((((((((((////*/
,********,,,,,,,,,,,,,,,,,,,,,,,,,,**/(######%%%%%%%%%#(//******************************///((((###((((((////**
,,********,,,,,,,,,,,,,,,,,,,,,,,,,,,,,**//(//*****************************************,,,,*******/(##((////**
.,*********,,,,,,,,,,,,,,,,,,,,,,,/(((//((/(********************************,,,,,,,,,,,,***********///#(////**
.,*********,,*,****,,,***,,,,,,***/((((((///*,*,,,,,,,,,,,,,,,,,,,,,,,,,,,,,***********************///%(////*,
.,,*********,,,***********,,,,****/(##(((///***,,,,,,,,,,,,,,,,,,,***************************//***////#(///**,
.,,***************************,***/(#(((((/(/**************************///////////////////////////////#(/////,
,,*******************************/(#((((//((///*********/////////////////////////////////////////////#(/////,
,,*******************************/(##(((//##(////////////////////////////////////////////////////////%(/////.
,********************************/(#((((//(#((((((///////////////////////////////////////////////////#(/////.
,********************************/(##(((//(#(((((((((((///(((((////////((////////////////////////////#(/////.
,********************************/(#((((//(##((((((((//////////(/////(((////////////////////////////(((/////.
,********************************/((((((//(##((((((((////////////////////(((///////////////(///(((//((//**,.
,********************************/((((((//(##((((((((//////(/////////////(((//(((////(((((((((((/(#%&%#.
,*********************************((((((//(##((((((((((((((((((((((/((((((((((((((((((((//**,,,,,/@@@.
,********************************((((((//(#((((((((((((((((((((((((((((((((((//*****//////////*,,,.....
,#%(////*****//**************((((((//(#((((((((((((((((((((((((((//******////////**,,............
,#@@@*,,***/*****************(((((///(#(((((((((((((((((((//*****////////**,,..............
...,,,,****//////***********((((((//(#((((((((((///////////////**,,,............
  ...,*////((((///*****(((((///((((((((((((((((///*,,,.............
       ....,**/(((((((//(#%########((//**,,,..............
            ....,**/((%%%&&###((/*,,,................
                 .....*/#%(/,,,,,............
                            .......
""")
    for _ in 1...3 {
        print("🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄🙄")
        sleep(1)
    }
    print("Okay \(enterName ?? "playa")..... I see you 👀!!! Maybe you wanna come back when you can get a little more hyped than \(howAdenturousAsAnInt)")
    trophy.level = "Super soft!!"
    
default:
    isPlaying = true
    print("That's not a whole number between 1 and 10.......... Try again!!!")
}

