//
//  main.swift
//  Adventure Test
//
//  Created by Ramu on 10/10/18.
//  Copyright © 2018 Ramu. All rights reserved.
//

import Foundation

print("Welcome! Your adventure begins")
print("Choose a destination \"France 🇫🇷\", \"Spain 🇪🇸\"")
var counterNumber = 0
var trialCount = 3
let destination = ("France", "Spain")
let FranceOrSpain = readLine()
switch FranceOrSpain {
case "France":
    print("lets learn a few words in French. Select a word: hello, how are you?, goodbye, thank you")
    break
case "Spain":
    print("Welcome to Spain. You made the right choice: lets learn some numbers")
    print("select a number 1...10")
    break
default:
    print("default")
    break
}
//        print("this is a test, you need to answer correctly")
//        print("Congratulation! 👏 yo passed the test")
if FranceOrSpain == "France"{
    while counterNumber < 5 {
        let response1 = readLine()
        let format = response1?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        switch format {
        case "hello":
            print("Bonjour")
            counterNumber += 1
            
        case "how are you":
            print("comment allez vous")
            counterNumber += 1
            
        case "goodbye":
            print("au revoir")
            counterNumber += 1
            
        case "thank you":
            print("je vous remercie")
            counterNumber += 1
            continue
            
        default:
            print("thats not a word")
        }
    }
}
if FranceOrSpain == "France"{
    while counterNumber >= 0 && trialCount >= 0 {
        let response4 = readLine()
        let format4 =  response4?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        switch format4 {
        case "Bonjour":
            print("hello")
            trialCount -= 1
            
        case "comment allez vous":
            print("how are you")
            trialCount -= 1
            
        case "Au revoir":
            print("goodbye")
            trialCount -= 1
            
        case "Je vous remercie":
            print("thank you")
            trialCount -= 1
            
        default:
            print("thats not a word")
        }
    }
}
if FranceOrSpain == "Spain" {
    while counterNumber < 5 {
        let response2 = readLine()
        let format2 = response2?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        switch format2 {
        case "1":
            print("uno")
            counterNumber += 1
        case "2":
            print("dos")
            counterNumber += 1
        case "3":
            print("dos")
            counterNumber += 1
        case "4":
            print("cuatro")
            counterNumber += 1
        case "5":
            print("cinco")
            counterNumber += 1
        case "6":
            print("seis")
            counterNumber += 1
        case "7":
            print("siete")
            counterNumber += 1
        case "8":
            print("ocho")
            counterNumber += 1
        case "9":
            print("nueve")
            counterNumber += 1
        case "10":
            print("dieze")
            counterNumber += 1
        default:
            print("thats not a number")
        }
    }
}
while counterNumber > 1 && trialCount >= 0 {
    let response2 = readLine()
    switch response2 {
    case "uno":
        print("1")
        trialCount -= 1
    case "dos":
        print("2")
        trialCount -= 1
    case "tres":
        print("3")
        trialCount -= 1
    case "cuatro":
        print("4")
        trialCount -= 1
    case "cinco":
        print("5")
        trialCount -= 1
    case "seis":
        print("6")
        trialCount -= 1
    case "siete":
        print("7")
        trialCount -= 1
    case "ocho":
        print("8")
        trialCount -= 1
    case "nueve":
        print("9")
        trialCount -= 1
    case "dieze":
        print("10")
        trialCount -= 1
    default:
        print("thats not a number")
        // default:
    }
    //print("default")
}
// next readline
// continue to other steps



print("next level")
var response3 = readLine() // this step, the player is asked what he/she learned from the destination he/she chose
switch response3 {
case "au revoir":
    print("goodbye")
case "bonjour":
    print("hello")
case "comment allez vous":
    print("how are you")
case "thank you":
    print("je vous remercie")
    
default:
    print("")
}
