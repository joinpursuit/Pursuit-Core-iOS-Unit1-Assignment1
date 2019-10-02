//
//  main.swift
//  textBasedAdventure
//
//  Created by Edward O'Neill on 9/30/19.
//  Copyright © 2019 Eddie O'Neill. All rights reserved.
//

import Foundation

var count = 1
var bool = false

func space() {
    for _ in 1..<71 {
        print()
    }
}

func commandDoNotExist() {
    print("the route you ented does not exist")
    print("this game does not have a save function so please start over again")
    print("Good bye")
}

func congrats() {
    
    print("""
             ,----------------,              ,---------,
        ,-----------------------,          ,'        ,'|
      ,'                      ,'|        ,'        ,'  |
     +-----------------------+  |      ,'        ,'    |
     |  .-----------------.  |  |     +---------+      |
     |  |                 |  |  |     | -==----'|      |
     |  | Congratulations!|  |  |     |         |      |
     |  |  You have made  |  |  |/----|`---=    |      |
     |  | it to the GOAL! |  |  |   ,/|==== ooo |      ;
     |  |                 |  |  |  // |(((( [33]|    ,'
     |  `-----------------'  |,' .;'| |((((     |  ,'
     +-----------------------+  ;;  | |         |,'
        /_)______________(_/  //'   | +---------+
   ___________________________/___  `,
  /  oooooooooooooooo  .o.  oooo /,   /'-----------
 / ==ooooooooooooooo==.o.  ooo= //   ,`---{)B     ,'
/_==__==========__==_ooo__ooo=_/'   /___________,'
`-----------------------------'
""")
    count = 0
}

func reStart() {
    space()
    print("""
             This is an dead end.....

                   GAME OVER...
""")
    print("""
             .... NO! ...                  ... MNO! ...
           ..... MNO!! ...................... MNNOO! ...
         ..... MMNO! ......................... MNNOO!! .
        ..... MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!! .
         ... !O! NNO! 3 MM>MMM 1 MMPPP>OOII 1 NO! ....
            ...... ! MMMM 3 MM>MM 1 PP>O 1 II! ! ...
           ........ 3 MMMM>MMMMM 1 PPO>OO 1 I!! .....
           ........ MMMMMOOOOOOPPPPPPPPOOOOMII! ...
            ....... MMMMM..    OPPMMP    .,OMI! ....
             ...... MMMM::  o .,OPMP,. o  ::I!! ...
                 .... NNM:::.,,OOPM!P,.::::!! ....
                  .. MMNNNNNOOOOPMO!!IIPPO!!O! .....
                 ... MMMMMNNNNOO:!!:!!IPPPPOO! ....
                   .. MMMMMNNOOMMNNIIIPPPOO!! ......
                  ...... MMMONNMMNNNIIIOO!..........
               ....... MN MOMMMNNNIIIIIO! OO ..........
            ......... MNO! iii enter iiiI OOOO ...........
          ...... NNN.MNO! . O!'cheat'!!O . OONO NO! ........
           .... MNNNNNO! ...OOO to OOOO .  MMNNON!........
           ...... MNNNNO! .. PP WIN PP .. MMNON!........
              ...... OO! ................. ON! .......

        """)
    print("""
            Do you want to try again?

            Type-in 'start' to continue

    if not type in anyother word and you can exit out
""")
    let startingPoint = readLine() ?? "-1"
    if startingPoint == "cheat" {
        print("3 -> 1 -> 1 -> 3 -> 1 -> 1 -> 3 -> 1 -> 1")
        print("YOU CHEETER!!!")
        print()
    } else if startingPoint != "start" {
        print("See you again!")
        count = 0
    }
    print()
    
    if startingPoint == "start" && count < 3 {
        mazeBluePrint(result: false)
    } else if startingPoint == "start" && count >= 3 {
        mazeBluePrint(result: true)
    }
}



func mazeBluePrint(result: Bool) {
    if count >= 2 {
        bool = true
    }
    while count != 0 {
        space()
        print("Pick one of the route below and enter it in!")
        print("if you want to get a hint, enter 'hint'")
        print()
        print("1")
        print("2")
        print("3")
        print("4")
        print()
        let layerA1 = Int(readLine() ?? "-1") ?? -1
        print() //creates a new line
        
        if layerA1 == -1 || layerA1 > 4 {
            space()
            commandDoNotExist()
            count = 0
        }
        switch layerA1 {
        case 1:
            space()
            print("Pick one of the route below and enter it in!")
            print()
            print("1")
            print("2")
            print("3")
            print()
            let layerB1 = Int(readLine() ?? "-1") ?? -1
            
            if layerB1 == -1 || layerB1 > 4 {
                space()
                commandDoNotExist()
                count = 0
            }
            switch layerB1 {
            case 1:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC1 = Int(readLine() ?? "-1") ?? -1
                
                if layerC1 < 3 && layerC1 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            case 2:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC2 = Int(readLine() ?? "-1") ?? -1
                
                if layerC2 < 3 && layerC2 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
                
            case 3:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC3 = Int(readLine() ?? "-1") ?? -1
                
                if layerC3 < 3 && layerC3 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            default:
                print()
            }
        case 2:
            space()
            print("Pick one of the route below and enter it in!")
            print()
            print("1")
            print("2")
            print("3")
            print()
            let layerB2 = Int(readLine() ?? "-1") ?? -1
            
            if layerB2 == -1 || layerB2 > 4 {
                space()
                commandDoNotExist()
                count = 0
            } else if layerB2 == 1 {
                space()
                reStart()
                count = 0
            }
            switch layerB2 {
            case 2:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC4 = Int(readLine() ?? "-1") ?? -1
                
                if layerC4 < 3 && layerC4 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            case 3:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC5 = Int(readLine() ?? "-1") ?? -1
                
                if layerC5 < 3 && layerC5 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            default:
                print()
            }
        case 3:
            space()
            print("Pick one of the route below and enter it in!")
            print()
            print("1")
            print("2")
            print("3")
            print()
            let layerB3 = Int(readLine() ?? "-1") ?? -1
            
            if layerB3 == -1 || layerB3 > 4 {
                space()
                commandDoNotExist()
                count = 0
            } else if layerB3 == 3 {
                space()
                reStart()
                count = 0
            }
            switch layerB3 {
            case 1:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC6 = Int(readLine() ?? "-1") ?? -1
                
                if layerC6 == 1 {
                    space()
                    if result == true {
                        congrats()
                        count = 0
                    } else {
                        count += 1
                        print(count)
                        mazeBluePrint(result: bool)
                        break
                    }
                    count = 0
                } else if layerC6 == 2 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            case 2:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC7 = Int(readLine() ?? "-1") ?? -1
                
                if layerC7 < 3 && layerC7 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            default:
                print()
            }
        case 4:
            space()
            print("Pick one of the route below and enter it in!")
            print()
            print("1")
            print("2")
            print("3")
            print()
            let layerB4 = Int(readLine() ?? "-1") ?? -1
            
            if layerB4 == -1 || layerB4 > 4 {
                space()
                commandDoNotExist()
                count = 0
            } else if layerB4 == 2 {
                if result == true {
                    space()
                    reStart()
                    count = 0
                } else {
                    count += 1
                    print(count)
                    mazeBluePrint(result: bool)
                    break
                }
            }
            switch layerB4 {
            case 1:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC8 = Int(readLine() ?? "-1") ?? -1
                
                if layerC8 == 1 {
                    space()
                    reStart()
                    count = 0
                } else if layerC8 == 2 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            case 3:
                space()
                print("Pick one of the route below and enter it in!")
                print()
                print("1")
                print("2")
                print()
                let layerC9 = Int(readLine() ?? "-1") ?? -1
                
                if layerC9 < 3 && layerC9 > 0 {
                    space()
                    reStart()
                    count = 0
                } else {
                    space()
                    commandDoNotExist()
                    count = 0
                }
            default:
                print()
            }
            
        default:
            print()
        }
        
        print() // creates space between lines
        
    }
    
}

space()
print("Welcome to the Eddie's Maze Beta 0.01!! the rule's are simple, just make it all the way to the goal!")
print()
print("if you're ready, type in 'start' and hit enter!")
print()
print("if you do not want to play type 'anyother word' and press enter")
print()
print("YOU CAN NOT back track on this game so please choose wisely ")
var startingPoint = readLine() ?? "-1"
let cheat = (routeToGoal: "3 -> 1 -> 1 -> 3 -> 1 -> 1 -> 3 -> 1 -> 1", message: "YOU CHEATER!!!")
if startingPoint == "cheat" {
    space()
    print(cheat.routeToGoal)
    space()
    print(cheat.message)
    print()
} else if startingPoint != "start" {
    print("See you again!")
    count = 0
}
print()

if startingPoint == "start" && count < 3 {
    mazeBluePrint(result: false)
} else if startingPoint == "start" && count >= 3 {
    mazeBluePrint(result: true)
}
