//
//  main.swift
//  adventure2
//
//  Created by Oniel Rosario on 10/12/18.
//  Copyright © 2018 Oniel Rosario. All rights reserved.
//

import Foundation
let questions = (Q1: "IS CODING FUN?", Q2: "WHICH ONE IS YOUR FAVORITE?", Q3: "DRIVER SEAT OR PASSENGER ?", Q4: "HOW ARE YOU FEELING TODAY ?", Q5: "WHAT DO YOU PREFER ?", Q6: "WHICH ONE WOU LIKE THE MOST ?", Q7: "WHICH iOS INSTRUCTURE YOU LIKE THE MOST ?", Q8: "ARE YOU AN INTROVERT OR EXTROVERT ?", Q9: "WHICH ONE WOULD YOU PICK ?", Q10: "ARE YOU OVER OR UNDER 21 ?")
let yes: String = "yes"
let no: String = "no"
let a: String = "marvel"
let b: String = "dc"
let c: String = "driver"
let d: String = "passenger"
let h: String = "happy"
let s: String = "sad"
let p: String = "pool"
let be: String = "beach"
let spo: String = "spotify"
let apl: String = "applemusic"
let all: String = "alan"
let alx: String = "alex"
let int: String = "introvert"
let ext: String  = "extrovert"
let piz: String = "pizza"
let bur: String = "burger"
let over: String = "over"
let under: String = "under"
let num: Int = 2
let num2: Int = num + 1
let input = 1


repeat {
    print("PRESS 1 TO START THE QUESTIONARY")
    let response = readLine()!
    let valueEntered = Int(response) ?? 1
    if valueEntered == 1 {
        break
    }
} while num == 3




print("")
print(questions.Q1)
    print("")
print("yes or no?")
if case readLine() = yes {
    
    print("I THINK IS PRETTY FUN TOO!!")
    print("NEXT QUESTION!")
    
} else {
    print("BOOOOO")
    print("NEXT QUESTION")
   

    } //while num == 3

         
//q2
//repeat {
print("")
print(questions.Q2)
    print("")
print("MARVEL OR DC?")
if case readLine() = a {
    print("GOD BLESS STAN LEE!!")
    print("")
    print("NEXT QUESTION")
    
} else {
        print("WELCOME TO THE JUCTICE LEAGUE!!!")
        print("")
        print("NEXT QUESTION")
    
} //while num == 3
//q3
//repeat {
print("")
print(questions.Q3)
    print("")
print("driver    or    passenger")
if case readLine() = c {
    print("I GUESS YOU'RE NOT DRINKING TONIGHT ?")
    print("")
    print("NEXT QUESTION")
    
    
} else {
    print("YOU IN CHARGE OF THE AUX CABLE!!!")
    print("")
    print("NEXT QUESTION")
   
} //while num == 3
//q4
//repeat {
print("")
print(questions.Q4)
    print("")
print("happy or sad?")
if case readLine() = h {
    print("YAY!! IF YOU'RE HAPPY, IM HAPPY")
    print("")
     print("NEXT QUESTION")
    
} else {
    print("WHAT'S WRONG? CHEER UP!!!")
    print("")
    print("NEXT QUESTION")
    
    //break
}

 //while num == 3

//q5
//repeat {
print("")
print(questions.Q5)
    print("")
print("beach or pool")
if case readLine() = be {
    print("LET'S GO SURFING!!!")
    print("")
     print("NEXT QUESTION")
    
} else {
    print("LET'S HAVE A POOL PARTY!!!")
    print("")
    print("NEXT QUESTION")
    
    //break
} //while num == 3


//q6
//repeat {
print("")
print(questions.Q6)
    print("")
print("spotify or applemusic?")
if case readLine() = spo {
    print("I LOVE SPOTIFY!!!")
    print("")
    print("NEXT QUESTION!")
    
} else {
    print("NICE! I LOVE APPLEMUSIC!!")
    print("")
    print("NEXT QUESTION!")
    
    if case readLine() = spo {
        print("I LOVE SPOTIFY!!!")
        print("")
        print("NEXT QUESTION!")
        
    }
}
 //while num == 3



//q7
//repeat {
print("")
print(questions.Q7)
    print("")
print("ALAN OR ALEX?")
if case readLine() = all {
    print("LETS CREATE SOME ARRAYS!!")
    print("")
    print("NEXT QUESTION")
    
} else {
    if case readLine() = alx {
        print("WHAT ALEX DID SAY ABOUT TUPLES??")
        print("")
        print("NEXT QUESTION")
        
        
        if case readLine() = all {
            print("LETS CREATE SOME ARRAYS!!")
            print("")
            print("NEXT QUESTION")
           
        }
    }
}
//} while num == 3


//q8
//repeat {
print("")
print(questions.Q8)
print("introvert or extrovert ?")
if case readLine() = int {
    print("SO YOU THINK MORE THAN TALK ? THAT'S COOL!")
    print("NEXT QUESTION")
     print("PRESS ENTER")
} else {
    if case readLine() = ext {
        print("SO YOU TALK MORE THAN YOU THINK? THAT'S COOL!")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        
        if case readLine() = int {
            print("SO YOU THINK MORE THAN TALK ? THAT'S COOL!")
            print("NEXT QUESTION")
            print("PRESS ENTER")
            
        }
    }
}


//q9
//repeat {
print("")
print(questions.Q9)
print("PIZZA OR BURGER ?")
if case readLine() = bur {
    print("THE BIGGER THE BURGER THE BETTER!!")
    print("FINAL QUESTION")
     print("PRESS ENTER")
} else {
    print("YAY!! I LOVE PIZZAAA!!!")
    print("FINAL QUESTION")
    print("PRESS ENTER")
    
    if case readLine() = bur {
        print("THE BIGGER THE BURGER THE BETTER!!")
        print("FINAL QUESTION")
        print("PRESS ENTER")
        
    }
}



//q10
//repeat {
print("")
print(questions.Q10)
    print("over or under ?")
if case readLine() = over {
    print("LET'S GO HAVE A DRINK!!!")
    print("OKAY!! THANKS FOR PLAYING")
     print("PRESS ENTER TO PLAY AGAIN!")
} else {
    repeat {
    if case readLine() = under {
        print("YOU SHOULD BE HOME BY 9PM!!")
        print("OKAY!! THANKS FOR PLAYING")
        print("PRESS ENTER TO PLAY AGAIN")
        
        if case readLine() = over {
            print("LET'S GO HAVE A DRINK!!!")
            print("OKAY!! THANKS FOR PLAYING")
            print("PRESS ENTER TO PLAY AGAIN!")
            
        }
    }
} while num == 3
print("")
print("OKAY!!!!")
} //while num == 3



