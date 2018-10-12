//
//  main.swift
//  adventure2
//
//  Created by Oniel Rosario on 10/12/18.
//  Copyright © 2018 Oniel Rosario. All rights reserved.
//

import Foundation
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



repeat {
print("")
print("IS CODING FUN?")
    print("")
print("yes or no?")
if case readLine() = yes {
    
    print("I THINK IS PRETTY FUN TOO!!")
    print("NEXT QUESTION!")
    print("PRESS ENTER TWICE!!")
    if case readLine() = no {
        print("BOOOOO")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        
        
    
    if case readLine() = no {
            
            print("BOOOOO")
            print("NEXT QUESTION")
            print("PRESS ENTER")
            if case readLine() = yes {
                print("I THINK IS PRETTY FUN TOO!!")
                print("NEXT QUESTION!")
                print("PRESS ENTER TWICE!!")
                break
             }
         }
    }
    }
    } while num == 3

         
//q2
repeat {
print("")
print("WHICH ONE IS YOUR FAVORITE?")
    print("")
print("MARVEL OR DC?")
if case readLine() = a {
    print("GOD BLESS STAN LEE!!")
    print("")
    print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = b {
        print("WELCOME TO THE JUCTICE LEAGUE!!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }
    

if case readLine() = b {
    print("WELCOME TO THE JUCTICE LEAGUE!!!")
    print("")
    print("NEXT QUESTION")
    print("PRESS ENTER")
    if case readLine() = a {
        print("GOD BLESS STAN LEE!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
      }
    }
}
} while num == 3
//q3
repeat {
print("")
print("DRIVER SEAT OR PASSENGER ?")
    print("")
print("driver    or    passenger")
if case readLine() = c {
    print("I GUESS YOU'RE NOT DRINKING TONIGHT ?")
    print("")
    print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = d {
        print("YOU IN CHARGE OF THE AUX CABLE!!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }

if case readLine() = d {
    print("YOU IN CHARGE OF THE AUX CABLE!!!")
    print("")
     print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = c {
        print("GUESS WHO'S NOT DRINKING TONIGHT ?")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
     }
    }
    }
} while num == 3
//q4
repeat {
print("")
print("HOW ARE YOU FEELING TODAY ?")
    print("")
print("happy or sad?")
if case readLine() = h {
    print("YAY!! IF YOU'RE HAPPY, IM HAPPY")
    print("")
     print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = s {
        print("WHAT'S WRONG? CHEER UP!!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }

if case readLine() = s {
    print("WHAT'S WRONG? CHEER UP!!!")
    print("")
     print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = h {
        print("YAY!! IF YOU'RE HAPPY, IM HAPPY")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        
    }
    }
    }

} while num == 3

//q5
repeat {
print("")
print("WHAT DO YOU PREFER ?")
    print("")
print("beach or pool")
if case readLine() = be {
    print("LET'S GO SURFING!!!")
    print("")
     print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = p {
        print("LET'S HAVE A POOL PARTY!!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }


if case readLine() = p {
    print("LET'S HAVE A POOL PARTY!!!")
    print("")
     print("NEXT QUESTION")
     print("PRESS ENTER")
    if case readLine() = be {
        print("LET'S GO SURFING!!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
       
    }
    }
    }
} while num == 3


//q6
repeat {
print("")
print("WHICH ONE WOU LIKE THE MOST ?")
    print("")
print("spotify or applemusic?")
if case readLine() = spo {
    print("I LOVE SPOTIFY!!!")
    print("")
    print("NEXT QUESTION!")
     print("PRESS ENTER")
    if case readLine() = apl {
        print("NICE! I LOVE APPLEMUSIC!!")
        print("")
        print("NEXT QUESTION!")
        print("PRESS ENTER")
        break
    }


if case readLine() = apl {
    print("NICE! I LOVE APPLEMUSIC!!")
    print("")
    print("NEXT QUESTION!")
     print("PRESS ENTER")
    if case readLine() = spo {
        print("I LOVE SPOTIFY!!!")
        print("")
        print("NEXT QUESTION!")
        print("PRESS ENTER")
    }
    }
}
} while num == 3



//q7
repeat {
print("")
print("WHICH iOS INSTRUCTURE YOU LIKE THE MOST ?")
    print("")
print("ALAN OR ALEX?")
if case readLine() = all {
    print("LETS CREATE SOME ARRAYS!!")
    print("")
    print("NEXT QUESTION")
     print("PRESS ENTER")
    
    if case readLine() = alx {
        print("WHAT ALEX DID SAY ABOUT TUPLES??")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }


if case readLine() = alx {
    print("WHAT ALEX DID SAY ABOUT TUPLES??")
    print("")
    print("NEXT QUESTION")
    print("PRESS ENTER")
    
    if case readLine() = all {
        print("LETS CREATE SOME ARRAYS!!")
        print("")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        }
    }
  }
} while num == 3


//q8
repeat {
print("")
print("ARE YOU AN INTROVERT OR EXTROVERT ?")
print("introvert or extrovert ?")
if case readLine() = int {
    print("SO YOU THINK MORE THAN TALK ? THAT'S COOL!")
    print("NEXT QUESTION")
     print("PRESS ENTER")
    
    if case readLine() = ext {
        print("SO YOU TALK MORE THAN YOU THINK? THAT'S COOL!")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }


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
} while num == 3


//q9
repeat {
print("")
print("WHICH ONE WOULD YOU PICK ?")
print("PIZZA OR BURGER ?")
if case readLine() = bur {
    print("THE BIGGER THE BURGER THE BETTER!!")
    print("FINAL QUESTION")
     print("PRESS ENTER")

    if case readLine() = piz {
        print("🍕🍕!!")
        print("NEXT QUESTION")
        print("PRESS ENTER")
        break
    }


if case readLine() = piz {
    print("YAY!! I LOVE PIZZAAA!!!")
    print("FINAL QUESTION")
     print("PRESS ENTER")

    if case readLine() = bur {
        print("THE BIGGER THE BURGER THE BETTER!!")
        print("FINAL QUESTION")
        print("PRESS ENTER")
      
    }
    }
    }
} while num == 3


//q10
repeat {
print("")
print("ARE YOU OVER OR UNDER 21 ?")
    print("over or under ?")
if case readLine() = over {
    print("LET'S GO HAVE A DRINK!!!")
    print("OKAY!! THANKS FOR PLAYING")
     print("PRESS ENTER TO PLAY AGAIN!")

    if case readLine() = under {
        print("YOU SHOULD BE HOME BY 9PM!!")
        print("OKAY!! THANKS FOR PLAYING")
        print("PRESS ENTER TO PLAY AGAIN")
        break
    }


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
    }
print("")
print("OKAY!!!!")
} while num == 3
//
//}
//}
//}
//}
//}
//}
//}
//}
//}
//}
//}
//} while num == 3



