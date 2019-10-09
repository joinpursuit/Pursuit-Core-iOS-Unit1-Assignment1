//
//  main.swift
//  text adventure
//
//  Created by xera agana-woodbine on 10/1/19.
//  Copyright © 2019 xera agana-woodbine. All rights reserved.
//
// use ReadLine() to get input from the user

import Foundation

//  vet, get school,

print("""
HELLO!!!!
WELCOME !!!
you are now play
SAVE Kitten ASADA 🐱
""")
sleep(2)




print(" What is your name ")
var name = readLine() ?? ""
 



print(" \(name) Loveeeee it, your name is so  kittylicious ")

sleep(2)


let startQuote = """
today has been a long day
your tired
feed up
hungry
and baby asada 🐈 is not feeling to good 😿
But you still have a long evening ahead of you\(name)
"""
print(startQuote)
sleep(2)


print("do you think you can make it to the vet on time tomorrow and still make it to school yes / no")

var answer = readLine()

if answer == "yes" {
    print("I love your determination 🥰 \(name)")
} else if answer == "no" {
    print(" TO BAD \(name)YOU STILL HAVE TO TRY 🤷🏽‍♀️ ")
} else {
    print("\(name) you did not enter a valid choice🤨")
}



print("lets get started")
sleep(2)

//var decisionOpption: [String] = ["eat", "sleep", "study", "feed cat"]

var decisionOpption = ["eat", "sleep", "feed cat"]
let options = """
Please enter one of the options below:
Eat
Sleep
feed cat
"""

print(options)


let response = readLine()?.lowercased() ?? ""






if let userOptionIndex = decisionOpption.firstIndex(of: response) {
    let option = decisionOpption[userOptionIndex]
    //print("you selected \(decisionOpption[userOptionIndex])")
    
    
    switch option {
    case "eat":
        print("lit its taco tuesday 🌮 ")
sleep(2)
              print("do you like tacos")
        let response2 = readLine()
        if  response2  == "yes" {
            print("thats what \(name) i like to hear so do I")
        }else if response2 == "no"{
            print("well thats to bad \(name) 🤷🏽‍♀️ ")
        }
            sleep(2)
        let tacoCount = "2, 4, 6, 8"
        print("so we are making tacos  how many tacos do you wanna make \(tacoCount)")
        let tacoAmount = Int(readLine()!)
        
        for tacoAmount in tacoCount {
            if tacoCount == "2" || tacoCount == "4" || tacoCount == "6" || tacoCount == "8" {
                print("to slow \(name)asada just ate your tacos now your hungry  its late looks like your gonna be late tomorrow you should have made some better decisions ")
            } else {
            print(" can you not read I said choose \(tacoCount)")
            }
            
        }
    case "feed cat":
        print(" Smart idea \(name) her appointment is soon ")
        
        print(" baby asada is now feed and ready for her apointment tomorrow now its time to tend to your self")
        
        print(" \(options)")
        
         let response3 = readLine()

        if response3 == "eat"{
            print("smart idea \(name) your gonna need some fuel")
        }else if response3 == "sleep" {
            print(" you over slept \(name)cause you didnt have enough energy now your week and frail 👴🏾 and have no energy to make it to the vet before school but worse of all your a cat murdered cause asada missed her appointment and is in criticle condition to loose ")
            
        } else {
            print(" \(name) get it together thats not a valid answer try again ")
        }

case "sleep":
        print("""
I feel you
you will have to be up early
""")
        
          print(" \(name) your a fool you over slept cause you didnt have enough energy now your week and frail 👴🏾 and have no energy to make it to the vet before school but worse of all your a cat murdered cause asada missed her appointment and is in criticle condition you better pack you bags and leave town the kitty 🚓 are looking for you  ")
    default:
        print("read again you only have 4 choices 😅 ")
    }
    
    decisionOpption.remove(at: userOptionIndex)
    

}
