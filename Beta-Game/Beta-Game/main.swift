//
//  main.swift
//  Beta_Game
//
//  Created by Juan Ceballos on 10/1/19.
//  Copyright © 2019 Juan Ceballos. All rights reserved.
//

import Foundation

//  keep track of player score
var lovePoints = 0, pointTracker = "", answerTracker = "", playerCharChoice = ""
var badResponse = false
let romeo = "Romeo", juliet = "Juliet"

//var charSel = ""
//  initialize bool that will check if user entered valid resonse


/*
 *  game's Intro and title
 */
print("""
Welcome to: Cuffing Season!

Which is exactly what it sounds like.
You're tired of watching Netflix alone,
and want to find that significant other
to fill the existential void in your life.
------------------------------------------

""")

//  start menu
print("START MENU")


/*
 *  function to record response
 */
func prefAnswer() -> String?  {
    let preferrence = readLine()
    return preferrence
}

/*
*  function to print gender pref
*/
func printPrefQuestion()    {
    print("""

    First of all, do you prefer to date (choose a or b):
    a)  Men
    b)  Women

    """)
}

/*
*  function to print male chracters
*/
func printMaleChars()   {
    print("""

    Choose your possible future Romeo
    ---------------------------------
    a)  Romeo(Video Editor)

    """)
}

/*
*  function to print female chracters
*/
func printFemaleChars()   {
    
    print("""

    Choose your possible future Wifey
    ---------------------------------
    a)  Juliet(Musician: Violin)

    """)
}

//  call gender question printer
printPrefQuestion()

//  store user reponse in var to use for comparisons
var pref = prefAnswer()

/*
 *  repeat to enter for options first time around and loop if
 *  user enters invalid response
 */
repeat  {
    /*
     *  Unwrap due to readline know it's going to string to compare and
     *  lowercase
     */
    if pref?.lowercased() == "a" {  //**Maybe Switch Instead**
        printMaleChars()
        // sets badResonse to false to exit
        badResponse = false
    }

    else if pref?.lowercased() == "b"    {
        printFemaleChars()
        badResponse = false
    }

    //  Don't get past this till valid response
    else    {
        print("\nCome Again?")
        printPrefQuestion()
        pref = prefAnswer()
            /*  if user still enters invalid response badRespnse stays true
            *  will run loop to recheck for response
            */
            if pref?.lowercased() != "a" || pref?.lowercased() != "b"   {
                badResponse = true
            }
    }
} while badResponse == true

//-------------------------------------------------

//var charSel = prefAnswer()

//var choice = (pref?.lowercased(), charSel?.lowercased())

//let romeo = ("a", "a") ?? : String
//let juliet = ("b", "a")

repeat  {
    let charSel = prefAnswer()
    let choice = (pref?.lowercased(), charSel?.lowercased())
    switch choice   {
    case ("a", "a") :
        print("\nYou Chose Romeo!")
        playerCharChoice = romeo
        badResponse = false
    case ("b", "a") :
        print("\nYou Chose Juliet!")
        playerCharChoice = juliet
        badResponse = false
    default:
        print("\n(Sorry what?)")
        if pref?.lowercased() == "a"  {
            printMaleChars()
            //charSel = prefAnswer()
            //print(charSel.lowercased())
            if charSel?.lowercased() != "a"   {//print("here")
                    badResponse = true
                }
                //else {choice = ("a", "a")}
        }
    
        else if pref?.lowercased() == "b"   {
            printFemaleChars()
            //charSel = prefAnswer()
            if charSel?.lowercased() != "a"   {
                badResponse = true
            }
            //else {choice = ("b", "a")}
        }
    }
} while badResponse == true
var pickUpLine = ""
func encounter(playerChoice : String) -> String   {
    //var playerChoice = playerCharChoice
    print("\n*************Encounter Phase**************")
    print("\nSaw \(playerChoice), enter pick up line:")
    pickUpLine = readLine() ?? ""
    let lineLength = pickUpLine.count
    
    for _ in 1...lineLength {print("🔥", terminator:"")}
    
    print("\n\n\(pickUpLine )? Interesting approach. What's your name?")
    let playerName = readLine()
    print("\nWell My name is \(playerChoice).")
    print("\nAnd how old are you?")
    guard let age = readLine() else { return "" }
    if Int(age) ?? 0 < 26  {
        print("Well that's about my age cool")
    }
    
    else    {
        print("Bit older, but that's fine")
    }
    
    
    print("\nOk, coffee good?")
    let dateIdea = readLine()
    if dateIdea?.lowercased() == "yes" || dateIdea?.lowercased() == "y" || dateIdea?.lowercased() == "yeh" || dateIdea?.lowercased() == "sure" || dateIdea?.lowercased() == "ye"    {
        print("\nNice, bright and early!")
    }
        else{
            print("\nLet's start with coffee, \nyou can order other stuff at this spot if that's the issue")
    }
    
    print("\nI'm free this weekend, Saturday, or Sunday?")
    let dateResponse = readLine()
    if dateResponse?.lowercased() == "saturday" || dateResponse?.lowercased() == "sunday" || dateResponse?.lowercased() == "sun" || dateResponse?.lowercased() == "sat" {
        print("\nGreat, I'll book you in!")
        print("\nOk so coffee this \(dateResponse ?? ""). See you then, \(playerName ?? "")!\n")
    }
    
    else    {
        print("\nWell what day works for you?")
        let counterDate = readLine()
        print("\nOk I guess I can make \(counterDate ?? "") work.")
        print("\nOk so coffee this \(dateResponse ?? ""). See you then, \(playerName ?? "")!\n")
    }
    
    return playerName ?? ""
}

func printRomeoQ1()  {
    print("""
    Romeo: What's your favorite movie?
    a)  Kind of just watch Netflix here and there.
    b)  "The Room" for sure.
    c)  Hard to say so many good ones.
    d)  Khaaaaaaaaan!

    """)
}

func romeoR1(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Romeo: Well Ok.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Romeo: You're tearing me apart, Lisa! Love it lol!")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Romeo: ...")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Romeo: Not a Sci-Fi fan but can respect it for sure.")
    }
    else{
        print("Romeo: You're silence speaks volumes")
    }
}

func romeoQ1(romeoAns : String) -> (Int, String)  {
    var qScore = 0
    switch romeoAns.lowercased()  {
    case "a":
        qScore = 0
    case "b":
        qScore = 2
    case "c":
        qScore = 0
    case "d":
        qScore = 1
    default:
        qScore = 0
    }
    return (qScore, romeoAns)
}

func printRomeoQ2()  {
    print("""

    Romeo: Well my favorite director is Brian de Palma, his use of tracking shots
    in "Carrie" was masterful, do you like his work?
    a)  Sorry not familiar, you should show
        me his stuff sometime, maybe next date.
    b)  Huge fan love all his work.

    """)
}

func romeoR2(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Romeo: Yeah, for sure.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("\nRomeo: Phenomenal!", terminator:"")
    }
    else{
        print("Romeo: You're silence speaks volumes.")
    }
}

func romeoQ2(romeoAns : String) -> (Int, String)  {
    var qScore = 0
    switch romeoAns.lowercased()  {
    case "a":
        qScore = 1
    case "b":
        qScore = 0
    default:
        qScore = 0
    }
    return (qScore, romeoAns)
}

func printRomeoQ3()  {
    print("""
     What's your favorite movie by him?
    """)
    print("""
    a)  Alien
    b)  The Money Pit
    C)  Psycho
    d)  Blow Out

    """)
}

func romeoR3(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Romeo: *Movie by Ridley Scott, Awkward Silence*")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Romeo: *Movie by Richard Benjamin,He senses your fraudness*")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Romeo: *Movie by Alfred Hitchcock* ...")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Romeo: AAAAAAAH! Some of his best work!")
    }
    else{
        print("Romeo: You're silence speaks volumes.")
    }
}

func romeoQ3(romeoAns : String) -> (Int, String)  {
    var qScore = 0
    switch romeoAns.lowercased()  {
    case "a":
        qScore = -1
    case "b":
        qScore = -1
    case "c":
        qScore = -1
    case "d":
        qScore = 2
    default:
        qScore = -1
    }
    return (qScore, romeoAns)
}

func printRomeoQ4()  {
    print("""
    
    **You're at the end of your coffee date and the bill comes.** DO you:
    a)  Reach for your wallet?
    b)  sit expectedly?
    C)  Ask, "how you want to split it?"
    d)  Offer to dine and dash?

    """)
}

func romeoR4(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Romeo: Your money's no good here, I got it.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Romeo: Lol, I'm old school too.")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Romeo: No it's fine I got this")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Romeo: *Laughs* we're no Bonnie and Clyde just yet, I got it.")
    }
    else{
        print("Romeo: You're silence speaks volumes")
    }
}

func romeoQ4(romeoAns : String) -> (Int, String)  {
    var qScore = 0
    switch romeoAns.lowercased()  {
    case "a":
        qScore = 1
    case "b":
        qScore = 1
    case "c":
        qScore = 1
    case "d":
        qScore = 1
    default:
        qScore = 0
    }
    return (qScore, romeoAns)
}

//*************************Juliet Story************************

func printJulietQ1()  {
    print("""
    
    Juliet: What's your favorite music genre?
    a)  Rock and Roll
    b)  Hip-Hop
    c)  Classical
    d)  Country

    """)
}

func julietR1(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Juliet: Well Ok, mine's Classical.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Juliet: Word. I listen to Classical myself")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Juliet: Mines Too!")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Juliet: Country is cool, I like Classical.")
    }
    else{
        print("Juliet: You're silence speaks volumes")
    }
}

func julietQ1(julietAns : String) -> (Int, String)  {
    var qScore = 0
    switch julietAns.lowercased()  {
    case "a":
        qScore = 1
    case "b":
        qScore = 1
    case "c":
        qScore = 2
    case "d":
        qScore = 1
    default:
        qScore = 0
    }
    return (qScore, julietAns)
}

func printJulietQ2()  {
    print("""

    Juliet: I'm a big fan of Bach what bout you?
    a)  Sorry not familiar, you should show
        me his stuff sometime, maybe next date.
    b)  Huge fan love all his work.
    
    """)
}

func julietR2(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Juliet: Yeah, for sure.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("\nJuliet: Phenomenal!", terminator:"")
    }
    else{
        print("Juliet: You're silence speaks volumes.")
    }
}

func julietQ2(julietAns : String) -> (Int, String)  {
    var qScore = 0
    switch julietAns.lowercased()  {
    case "a":
        qScore = 1
    case "b":
        qScore = 0
    default:
        qScore = 0
    }
    return (qScore, julietAns)
}

func printJulietQ3()  {
    print("""
     What's your favorite composition by him?
    a)  Fidello
    b)  Mass in B Minor
    C)  Fu\u{00fc}r Elise
    d)  Symphony No.1

    """)
}

func julietR3(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Juliet: *Bethoven, Awkward Silence*")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Juliet: AAAAAAAH! Some of his best work!")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Juliet: *Bethoven* ...")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Juliet: *Bethoven, Juliet senses your fraudness*")
    }
    else{
        print("Juliet: You're silence speaks volumes.")
    }
}

func julietQ3(julietAns : String) -> (Int, String)  {
    var qScore = 0
    switch julietAns.lowercased()  {
    case "a":
        qScore = -1
    case "b":
        qScore = 2
    case "c":
        qScore = -1
    case "d":
        qScore = -1
    default:
        qScore = -1
    }
    return (qScore, julietAns)
}

func printJulietQ4()  {
    print("""

    **You're at the end of your coffee date and the bill comes.** DO you:
    a)  Reach for your wallet?
    b)  sit expectedly?
    C)  Ask, "how you want to split it?"
    d)  Offer to dine and dash?

    """)
}

func julietR4(playerResponse : String)   {
    if playerResponse.lowercased() == "a"   {
        print("Juliet: Such a gentleman.")
    }
    else if playerResponse.lowercased() == "b"   {
        print("Juliet: Well ok, I got it.")
    }
    else if playerResponse.lowercased() == "c"   {
        print("Juliet: 50/50 I guess")
    }
    else if playerResponse.lowercased() == "d"   {
        print("Juliet: *Laughs* we're no Bonnie and Clyde just yet, I got it.")
    }
    else{
        print("Juliet: You're silence speaks volumes")
    }
}

func julietQ4(julietAns : String) -> (Int, String)  {
    var qScore = 0
    switch julietAns.lowercased()  {
    case "a":
        qScore = 2
    case "b":
        qScore = -1
    case "c":
        qScore = 1
    case "d":
        qScore = 1
    default:
        qScore = 0
    }
    return (qScore, julietAns)
}



//*******PLAYER'S NAME*****************************************
//when first declared value also stored return, also
//saved playerCharChoice to avoid using more conditionals/loops
let name = encounter(playerChoice: playerCharChoice)
//print(name)

// the date
print("♥♥♥♥♥♥♥Date Phase♥♥♥♥♥♥♥\n")
switch playerCharChoice {
case romeo:
    
    //round 1
    printRomeoQ1()
    let romeoA1 = readLine()
    romeoR1(playerResponse: romeoQ1(romeoAns: romeoA1 ?? "").1)
    lovePoints += romeoQ1(romeoAns: romeoA1 ?? "").0
    pointTracker += (String(romeoQ1(romeoAns: romeoA1 ?? "").0) + " ")
    answerTracker += (romeoQ1(romeoAns: romeoA1 ?? "").1 + " ")
    
    //round 2
    printRomeoQ2()
    let romeoA2 = readLine()
    romeoR2(playerResponse: romeoQ2(romeoAns: romeoA2 ?? "").1)
    lovePoints += romeoQ2(romeoAns: romeoA2 ?? "").0
    pointTracker += (String(romeoQ2(romeoAns: romeoA2 ?? "").0) + " ")
    answerTracker += (romeoQ2(romeoAns: romeoA2 ?? "").1 + " ")
    
    //Bonus Round
    if romeoA2?.lowercased() == "b" {
        printRomeoQ3()
        let romeoA3 = readLine()
        romeoR3(playerResponse: romeoQ3(romeoAns: romeoA3 ?? "").1)
        lovePoints += romeoQ3(romeoAns: romeoA3 ?? "").0
        pointTracker += (String(romeoQ3(romeoAns: romeoA3 ?? "").0) + " ")
        answerTracker += (romeoQ1(romeoAns: romeoA3 ?? "").1 + " ")
    }
    
    //final round
    printRomeoQ4()
    let romeoA4 = readLine()
    romeoR4(playerResponse: romeoQ4(romeoAns: romeoA4 ?? "").1)
    lovePoints += romeoQ4(romeoAns: romeoA4 ?? "").0
    pointTracker += (String(romeoQ4(romeoAns: romeoA4 ?? "").0) + " ")
    answerTracker += (romeoQ4(romeoAns: romeoA4 ?? "").1 + " ")
    
    if lovePoints <= 2  {
        print("""
                
              Sorry \(name), I don't see it.
              Besides, I'm Blu-ray you're VHS.
              """)
    }
    
    else {
        print("\nI had a really nice time, Netflix and chill next date?")
    }
    
case juliet:
    //round 1
    printJulietQ1()
    let julietA1 = readLine()
    julietR1(playerResponse: julietQ1(julietAns: julietA1 ?? "").1)
    lovePoints += julietQ1(julietAns: julietA1 ?? "").0
    pointTracker += (String(julietQ1(julietAns: julietA1 ?? "").0) + " ")
    answerTracker += (julietQ1(julietAns: julietA1 ?? "").1 + " ")
    
    //round 2
    printJulietQ2()
    let julietA2 = readLine()
    julietR2(playerResponse: julietQ2(julietAns: julietA2 ?? "").1)
    lovePoints += julietQ2(julietAns: julietA2 ?? "").0
    pointTracker += (String(julietQ2(julietAns: julietA2 ?? "").0) + " ")
    answerTracker += (julietQ2(julietAns: julietA2 ?? "").1 + " ")
    
    //Bonus Round
    if julietA2?.lowercased() == "b" {
        printJulietQ3()
        let julietA3 = readLine()
        julietR3(playerResponse: julietQ3(julietAns: julietA3 ?? "").1)
        lovePoints += julietQ3(julietAns: julietA3 ?? "").0
        pointTracker += (String(julietQ3(julietAns: julietA3 ?? "").0) + " ")
        answerTracker += (julietQ3(julietAns: julietA3 ?? "").1 + " ")
    }
    
    //final round
    printJulietQ4()
    let julietA4 = readLine()
    julietR4(playerResponse: julietQ4(julietAns: julietA4 ?? "").1)
    lovePoints += julietQ4(julietAns: julietA4 ?? "").0
    pointTracker += (String(julietQ4(julietAns: julietA4 ?? "").0) + " ")
    answerTracker += (julietQ4(julietAns: julietA4 ?? "").1 + " ")
    
    
    if lovePoints <= 2  {
        print("""
              
              Sorry \(name), I don't see it.
              Besides, I'm Blu-ray you're VHS.
              """)
    }
    
    else {
        print("\nI had a really nice time, Netflix and chill next date?")
    }
    
default:
    print("Game Error!")
}

//Results
print("\nResults Phase")


//print("\(playerCharChoice): Sorry ")

print("Your total Love points are: \(lovePoints)")
print("Your responses for each question: \(answerTracker)")
print("Points received per question:     \(pointTracker)")

