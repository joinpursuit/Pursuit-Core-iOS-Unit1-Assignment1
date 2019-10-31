//
//  main.swift
//  EscapeRoom
//
//  Created by Andréa Evans on 10/3/19.
//  Copyright © 2019 Andrea Evans. All rights reserved.
//




//You are standing alone in a dimly lit walkway. Behind you is a dark wooden door, and to the North of you lies the UNKNOWN. Which way would you like to go? Choose direction "North" or "South"

print("You are standing alone in a dimly lit walkway. Behind you is a dark wooden door, and to the North of you lies the UNKNOWN. Which way would you like to go? Choose direction \"North\" or \"South\"")
 // If north: "You have decided to venture into the UNKNOWN! Enter "continue" to proceed ahead."
// If south: "Too bad! The door is chained shut from the outside! Choose another way!"

// If user inputs some other value, print: "You cannot go this way!"
var responseNorthSouth = readLine()?.lowercased()
var gameOver: Bool = true
repeat {
switch responseNorthSouth {
    case "north" :
        print("You have decided to venture into the UNKNOWN! Enter \"continue\" to proceed ahead!")
    let responseContinue = readLine()?.lowercased()
        if responseContinue == "continue" {
            print("As you ascend toward the end of the hall, you come up to a large door.")
            print()
            print("Do you wish to open the door? yes or no?")
            let openDoorResponse = readLine()?.lowercased()
            switch openDoorResponse {
            case "yes" :
                print("Boy do you have guts! You enter the room and immeditately notice a podium in the center of the space.")
                print()
                print("On it, there is a small black box with gold trim and a golden lock.")
                print()
                print("On either side of the box, there lies a key,")
                print()
                print("each enclosed inside a glass case.")
                print("Which key do you choose? Enter key 1 or key 2.")
                var keyOneOrTwo = readLine()?.lowercased()
                if keyOneOrTwo == "1" {
                    print("Looks like this key does not fit! Try the other!")
                    keyOneOrTwo = readLine()?.lowercased()
                } else if keyOneOrTwo == "2"{
                    print("The key fits! Enter \"unlock\" to see inside the box!")
                    let keyFits = readLine()?.lowercased()
                    if keyFits == "unlock" {
                        print("Inside the box there is a note.")
                        print()
                        print("Read note?")
                        var readNote = readLine()?.lowercased()
                        if readNote == "read" {
                            print("NOTE: WELCOME TO THE HOUSE OF ANALIZSIA. WE ARE SO HAPPY THAT YOU HAVE ARRIVED THIS DAY! WE HAVE NOT HAD NEW GUESTS FOR MANY MOONS, SO WE ARE PLEASED FOR YOU, WE ARE!! ON THIS REST YOU MAY HAVE NOTICED,YOU HAVE, 2 KEYS. ONE KEY OPENS THIS BOX, IT DOES, AND THE OTHER YOU MUST KEEP! YOU MUST KEEP IT TO OPEN THE DOOR OF YOUR DESTINY. WE HOPE YOU STAY FOREVER INDEED! INDEED STAY FOREVER!")
                            print()
                            print("SIGNED, THE WE")
                            print()
                            print("Some note!")
                            print()
                            print("You take the key and close the box.")
                            print()
                            print("Suddenly, before you, there appears 3 doors. You look at the key in your hand that unlocks the \"DOOR TO YOUR DESTINY\". Could one of these be that door? Choose a door.")
                            let chooseDoor = readLine()?.lowercased()
                            switch chooseDoor {
                            case "1" :
                                print("FLAME AND FIRE! YOU ARE TO BURN HERE FOR ETERNITY!")
                                print("GAME OVER")
                                print()
                                print("Do you wish to play again?")
                                let playAgain = readLine()?.lowercased()
                                if playAgain == "yes" {
                                    gameOver = false
                                } else {
                                    print("YOU DID NOT SURVIVE THE ESCAPE ROOM.")
                                    gameOver = true
                                }
                            case "2" :
                                print("Before you is the garden of reflection and truth. Do you wish to Enter?\"yes\" or \"no\"?")
                                let enterGarden = readLine()?.lowercased()
                                if enterGarden == "yes" {
                                    print("How serene...")
                                    print()
                                    print("Up ahead you notice a path heading in either direction; one to the East, and another to the West. Which way would you like to go?")
                                    var eastWest = readLine()?.lowercased()
                                    if eastWest == "east"{
                                        print("Wise choice! You walk along the path and you come upon a large tree blocking your way. What do you do?")
                            
                                        print()
                                        print("(a). go around the tree")
                                        print()
                                        print("(b). go back and take the west path")
                                        print()
                                        print("(c). choose another door")
                                        let answerChoice = readLine()?.lowercased()
                                        switch answerChoice {
                                        case "a" :
                                            print("What a brave soul! Enter \"continue\" to move along the path.")
                                            let continueResponse = readLine()?.lowercased()
                                            if continueResponse == "continue" {
                                                print("You continue along and come across an enclosure")
                                                print()
                                                print("In the center of the enclosure, there is a single door. Open door?")
                                                let openDoor = readLine()?.lowercased()
                                                if openDoor == "open" || openDoor == "open door" {
                                                    print("DOOR IS LOCKED. YOU NEED A KEY! Enter \"key\".")
                                                    var enterKey = readLine()?.lowercased()
                                                    if enterKey == "key" {
                                                        print("THE DOOR IS UNLOCKED. Type \"enter\" to enter.")
                                                        var enterResponse = readLine()?.lowercased()
                                                        if enterResponse == "enter" {
                                                            print("CONGRATULATIONS YOU'VE ENTERED THE LAIR OF RICHES! YOU WIN THE GAME! Do you wish to play again?")
                                                               let playAgain2 = readLine()?.lowercased()
                                                            if playAgain2 == "yes" {
                                                                gameOver = false
                                                            } else if playAgain2 == "no" {
                                                              gameOver = true
                                                            } else {
                                                                print("invalid response")
                                                            }
                                                        } else {
                                                            print("invalid response")
                                                            enterResponse = readLine()?.lowercased()
                                                        }
                                                    } else {
                                                        print("invalid selection")
                                                        enterKey = readLine()?.lowercased()
                                                    }
                                                } else {
                                                    print("invalid response")
                                                }
                                            } else {
                                                print("invalid response")
                                            }
                                        case "b" :
                                            print("You have chosen a different path.")
                                            print()
                                            print("You move along West path and come to a stop at the entrance of a dark cave.")
                                            print()
                                            print("Do you wish to enter?")
                                            let enter = readLine()?.lowercased()
                                            if enter == "yes" {
                                                print("Although bravely, you have foolishly entered the lair of a giant Vugula!")
                                                print()
                                                print("YOU ARE DEAD. Would you like to try again?")
                                                let tryAgain = readLine()?.lowercased()
                                                if tryAgain == "yes" {
                                                    gameOver = false
                                                } else {
                                                    gameOver = true
                                                }
                                            
                                            } else if enter == "no" {
                                                print("GAME OVER.")
                                                gameOver = true
                                            } else {
                                                print("invalid input")
                                            }
                                        case "c" :
                                            print("OH NO, THE DOOR HAS DISAPPEARED! Choose west!")
                                            eastWest = readLine()?.lowercased()
                                            if eastWest == "west" {
                                                print("You move along West path and come to a stop at the entrance of a dark cave. Do you wish to enter?")
                                                print("You have chosen a different path.")
                                                print()
                                                print("You move along West path and come to a stop at the entrance of a dark cave.")
                                                print()
                                                print("Do you wish to enter?")
                                                let enter = readLine()?.lowercased()
                                                    if enter == "yes" {
                                                       print("Although bravely, you have foolishly entered the lair of a giant Vugula!")
                                                       print()
                                                       print("YOU ARE DEAD. Would you like to try again?")
                                                            let tryAgain = readLine()?.lowercased()
                                                            if tryAgain == "yes" {
                                                            gameOver = false
                                                            } else {
                                                            gameOver = true
                                                            }
                                                                                           
                                                   } else if enter == "no" {
                                                        print("GAME OVER.")
                                                        gameOver = true
                                                   } else {
                                                        print("invalid input")
                                                                                           }
                                            } else {
                                                print("invalid input")
                                            }
                                        default :
                                            print("Invalid input")
                                        }
                                    }
                                } else if enterGarden == "no" {
                                    print("Try the next door")
                                    let nextDoor = readLine()?.lowercased()
                                        if nextDoor == "3" {
                                          print("Here lies a portal. Would you like to enter?")
                                           let enterPortal = readLine()?.lowercased()
                                            if enterPortal == "yes" {
                                                print("DOOR 3 IS A VOID!!")
                                                print()
                                                print("YOU WILL STAY HERE WITH THE WE FOR ALL ETERNITY! CONGRATULATIONS! GAME OVER. Would you like to play again?")
                                                let playAgain3 = readLine()?.lowercased()
                                                if playAgain3 == "yes" {
                                                    gameOver = false
                                                } else {
                                                    gameOver = true
                                                }
                                            }
                                        }
                                }
                            case "3" :
                                print("Here lies a portal. Would you like to enter?")
                                let enterPortal = readLine()?.lowercased()
                                if enterPortal == "yes" || enterPortal == "enter"{
                                    print("DOOR 3 IS A VOID!! YOU WILL STAY HERE WITH THE WE FOR ALL ETERNITY! CONGRATULATIONS! GAME OVER. Would you like to play again?")
                                    let playAgain4 = readLine()?.lowercased()
                                    if playAgain4 == "yes" {
                                         gameOver = false
                                    } else {
                                         gameOver = true
                                    }
                                
                                }
                            default :
                                print("invalid input")
                                }
                        } else {
                            print("Invalid input.")
                            readNote = readLine()?.lowercased()
                        }
                    } else {
                        print("Invalid input")
                    }
                } else {
                    print("Invalid input")
                }
            case "no" :
                print("You've been eaten alive. GAME OVER")
                gameOver = true
            default :
                print("You've been eaten alive. GAME OVER")
                gameOver = true
            }
        } else {
            print("invalid response")
    }
case "south" :
   print("Too bad! The door is chained shut from the outside! Choose another way!")
    responseNorthSouth = readLine()?.lowercased()
   if responseNorthSouth == "north" {
    gameOver = false
    }
default:
    print("invalid input")
    gameOver = true
}
} while gameOver == false
    



//User ultimately must input "north" or "North" and then "continue"


// User inputs "continue"

//"As you ascend toward the end of the hall, you come up to a large door."
//User enters something like "open door" otherwise console will print "I do not recognize this entry". In case user inputs "enter room" console will print "You cannot enter room without first opening the door"

//"Before you is a large room."
//User types "enter" or "enter room"

//"Boy do you have guts! You enter the room and immeditately notice a podium in the center of the space. On it, there is a small black box with gold trim and a golden lock. On either side of the box, there lies a key, each enclosed inside a glass case. Which key do you choose? Enter key 1 or key 2.

//if user chooses key 1, print: "Looks like this key does not fit! Try the other!" if key 2, print: "The key fits! Enter "unlock" to see inside the box!"

//User inputs "unlock"

//"Inside the box there is a note."
//User enters "read note"

//NOTE: WELCOME TO THE HOUSE OF ANALIZSIA. WE ARE SO HAPPY THAT YOU HAVE ARRIVED THIS DAY! WE HAVE NOT HAD NEW GUESTS FOR MANY MOONS, SO WE ARE PLEASED FOR YOU, WE ARE!! ON THIS REST YOU MAY HAVE NOTICED,YOU HAVE, 2 KEYS. ONE KEY OPENS THIS BOX, IT DOES, AND THE OTHER YOU MUST KEEP! YOU MUST KEEP IT TO OPEN THE DOOR OF YOUR DESTINY. WE HOPE YOU STAY FOREVER INDEED! INDEED STAY FOREVER!

//                          SIGNED, THE WE

//User enters "close note"

//"Some note! You take the key and close the box. Suddenly, before you, there appears 3 doors. You look at the key in your hand that unlocks the "DOOR TO YOUR DESTINY". Could one of these be that door?"
//"Choose a door."

//door 1 : "FLAME AND FIRE!" "YOU ARE TO BURN HERE FOR ETERNITY!" *** GAME OVER. Do you wish to play again?"



//Door 2: "Before you is the garden of reflection and truth. Do you wish to Enter?"
//                      user enters "yes" or "no"

//In case of "yes" to door 2: "How serene. Up ahead you notice a path heading in either direction; one to the East, and another to the West. Which way would you like to go?"


// If East: "Wise choice! You walk along the path and you come upon a large tree blocking your way. What do you do?"
//              (a). go around the tree             (b). go back and take the west path                  (c). choose another door
            
        //In case of (a) print: "What a brave soul! Enter "continue" to move along the path.
            //user enters "continue"
        //"You continue along and come across an enclosure"
        //user inputs "enter enclosure"
        //"In the center of the enclosure, there is a single door.
        //user inputs "open door"
        //"DOOR IS LOCKED. YOU NEED A KEY!"
        // user inputs "use key"
        //"THE DOOR IS UNLOCKED. Type "enter" to enter."
        //User types "enter"
        //CONGRATULATIONS YOU'VE ENTERED THE LAIR OF RICHES! YOU WIN THE GAME! Do you wish to play again?

            //If yes, start over, if no, GAME OVER
        



        //In case of (b) print: "You have chosen a different path. You move along West path and come to a stop at the entrance of a dark cave." Do you wish to enter?"
            // user enters "yes" or "no"
            // if "yes" print: "Although bravely, you have foolishly entered the lair of a giant Vugula! YOU ARE DEAD. Would you like to try again?"
                                                        // if "no" print("GAME OVER")
                                                        // if "yes" print: "Would you like to take the East Path or choose another door?"
        
      
                    //if "take east path, print "Wise choice..." and choose (a) or (c)
                    //if "choose another door" print: "OH NO, THE DOOR HAS DISAPPEARED! Choose east or west!

        //In case of (c) print:"OH NO, THE DOOR HAS DISAPPEARED! Choose east or west!


//If West: "You move along West path and come to a stop at the entrance of a dark cave." Do you wish to enter?"
// user enters "yes" or "no"
// if "yes" print: "Although bravely, you have foolishly entered the lair of a giant Vugula! YOU ARE DEAD. Would you like to try again?"
                                            // if "no" print("GAME OVER")
                                            // if "yes" print: "Would you like to take the East Path or choose another door?




//Door 3: "Here lies a portal. Would you like to enter?"
//                         user enters "yes" or "no"
//If "yes" : "DOOR 3 IS A VOID!! YOU WILL STAY HERE WITH THE WE FOR ALL ETERNITY! CONGRATULATIONS! GAME OVER. Would you like to play again?

