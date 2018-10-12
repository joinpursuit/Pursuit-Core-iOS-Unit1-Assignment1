
import Foundation
print("Welcome! enter your name")
let nameOfUser = readLine()!
print("Hi! \(nameOfUser)")
print("How old are you?")
let ageOfUser = readLine()!
print("you're so young!")

var myTuple = (book:"", cooked:"", workout:"",shopped:"")
var personalErrands = ("workout and shopping")
var priorities = ("study and cooking")
var message1 = ("Working on priorities!")
var message2 = ("You did it!")
var activities = false
//var books = (book1:"Women in tech", book2:"Hooked", book3:"Swift for dummies") //tuple
var loopCase1 = false
var loopStudy = false
var loopCase2 = false
var rigthAnswer = false
var loopCaseInbooks = false
var loopForBookChoice = false
var closeLoopBooks = false
var loopInCooking = false
var loopCaseCooking = false
var messageAfterATaskIsCompleted = "Let's complete your remainig tasks"
var loopCaseCoding = false
var loop2 = false
var count = 0

repeat {
while rigthAnswer == false {
    print ("Please pick from gruop 1 or 2 to accomplished your 3 tasks")
    print("you've done \(count) of your tasks so far")
    print ("""
1.- Studyng, cooking
2.-Workout, shopping
""")
// let respondeFromUser = 1...4
    if let response1 = readLine() {
        switch response1 {
        case "1":
            rigthAnswer = true
            loopCase1 = true
            //something in one of those 2 options is now true
            print("Your priorities are \(priorities)")
        case "2":
            rigthAnswer = true
            loopCase2 = true
            print ("Your personal errands are \(personalErrands)")
        default:
            print("You must enter a valid number")
        }
    }
}
while loopCase1 {
    print("What do we do now?! ☺️")
    let response2 = readLine()
    switch response2 {
    case "study":
        print("""
Great! Here is a list of books to pick from:
Women in Tech
Hooked
""")
    count += 1
        
        loopCase1 = false
        loopStudy = true
        
        if loopCaseInbooks == false   {
            print("Which book would you like to read?")
         myTuple.book = readLine()!
            print("")
            switch myTuple.book {
            case "Women in Tech":
                print("Great choice! You read \(myTuple.book)")
                loopForBookChoice = true

            case "Hooked":
                print("👍🏻,you read \(myTuple.book)")
                loopForBookChoice = true
                
            default:
                print("Whatever you read will make you grow (Instagram captions do not count)")
                closeLoopBooks = true
            }
        }
    case "cooking":
        print("""
😋. Here are some sugestions:
chicken 🍗
steak 🥩
""")
        count += 1
        
        if loopInCooking == false   {
            print("What would you like to cook?")
            let answerForTheQuestionCook = readLine()
            switch answerForTheQuestionCook {
            case "chicken":
                print("We're getting hungry!\(messageAfterATaskIsCompleted)")
                loopInCooking = true
                loopCase1 = false
                
            case "steak":
                print("It's ok, we will not tell your vegan friends \(messageAfterATaskIsCompleted)")
                loopCase1 = false
               loopInCooking = true
    
                
            default:
             print("Whatever you cook it'll be ok. Just remember to make enough foor for your lunches on the week")
                loopInCooking = true
            }
        }
    default:
        print("no")
    }
    }
//        if rigthAnswer && loopCase2 == true {
//            let answerForOpt2 = readLine()
//           switch answerForOpt2 {
     let myWorkoutLoop = false
    
    
while loopCase2 {
            print("What do we do now?! ☺️")
            let response3 = readLine()
            switch response3 {
    case "workout":
                print ("What kind of exercise would you like to do?")
                count += 1
                if myWorkoutLoop == false {
                    print("yoga or lifting")
                    myTuple.workout = readLine()!
                    switch myTuple.workout {
                    case "yoga":
                        print("Namaste 🧘🏻‍♀️")
                        loopCase2 = false
                    case "lifting":
                        print("🏋️‍♀️")
                        loopCase2 = false
                    default:
                       print("Find the time to work out")
                    }
                }
                
    case "shopping":
                count += 1
                loopCase2 = false
                //if myShoppingLoop == true {
                    
                    print("are you shopping for groceries or clothes? ")
                    myTuple.shopped = readLine()!
                    switch myTuple.shopped {
                    case"groceries":
                        print("Shop for greceries just make sure you don't over spend")
                    case "clothes":
                        print("Shop for clothes only if you really need it!")
                    default:
                        print("Good! save your money")
                        
                    }
                    
               // }
                
                
    default:
                print("Pick a option!")
        }
        }
        
        rigthAnswer = false
    loopInCooking = false
    } while count < 3
print(count)
print("you finished! now you can sleep, count sheeps to fall asleep🐑")
print("How many you want to count?")

if let sleepResponse = Int(readLine()!) {
    for number in 1...sleepResponse {
        print(String(number) + "sheep")
    }
}




