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

func doorIsLocked() {
    print("""
███████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓█
████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█
███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
████▓▓▓╬╬╬╬╬╬╬▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█
████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█
███▓▓▓▓▓▓▓╬╬▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
████▓▓▓╬╬╬╬▓▓▓▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
█████▓▓▓▓▓▓▓▓█▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█
█████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
█████▓▓▓▓▓████▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██
████▓▓███▓▓▓▓▓▓▓██▓╬╬╬╬╬╬╬╬╬╬╬╬█▓╬▓╬╬▓██
█████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██
█████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███
██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███
███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████
███████▓▓██▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓████
████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████
█████████▓▓▓█▓▓▓▓▓███▓╬╬╬╬╬╬╬╬╬╬╬▓██████
██████████▓▓▓█▓▓▓╬▓██╬╬╬╬╬╬╬╬╬╬╬▓███████
███████████▓▓█▓▓▓▓███▓╬╬╬╬╬╬╬╬╬▓████████
██████████████▓▓▓███▓▓╬╬╬╬╬╬╬╬██████████
███████████████▓▓▓██▓▓╬╬╬╬╬╬▓███████████
""")
    sleep(2)
    print("All the door go locked and there is no way to get out from this room")
    sleep(3)
}

func arrow() {
    space()
    print("""
 ________________
|\t_____ / |
| |  /|,| |   | |
| | |,x,| |   | |
| | |,x,' |   | |
| | |,x   ,   | |
| | |/    |%==| |
| |    /] ,   | |
| |   [/ ()   | |
| |       |   | |
| |       |   | |
| |       |   | |
| |      ,'   | |
| |   ,'      | |
|_|,'_________|_|
""")
    sleep(2)
    space()
    print("Arrow striked through your head When you opened the door...")
    sleep(3)
    space()
    for _ in 0..<3 {
        print("""
            _                                       -----
        .-'` |___________________________//////             ---------
        `'-._|                           \\\\\\\\                 ---------
                                                        -----
    """)
        sleep(1)
        space()
    print("""
            _                                           -----
        .-'` |___________________________//////                 ---------
        `'-._|                           \\\\\\             ---------
                                                    -----
    """)
        sleep(1)
        space()
    }
}

func commandDoNotExist() {
    print("the route you ented does not exist")
    print("this game does not have a save function so please start over again")
    print("Good bye")
}

func congrats() {
    
    print("""
:..｡o○☆ﾟ･:,｡:..｡o○☆ﾟ･:,｡ﾟ･:,｡★ﾟ･:,｡ﾟ･:,｡☆:..｡o○☆ﾟ･:,｡:..｡o○☆ﾟ･:,｡ﾟ･:,｡★ﾟ･:,｡ﾟ･:,｡☆
:..｡o○☆ﾟ･:,｡:..｡o○☆ﾟ･:,｡ﾟ･:,｡★ﾟ･:,｡ﾟ･:,｡☆:..｡o○☆ﾟ･:,｡:..｡o○☆ﾟ･:,｡ﾟ･:,｡★ﾟ･:,｡ﾟ･:,｡☆
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
             ...... MMMM::    .,OPMP,.    ::I!! ...
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
        if count == 1 {
            print("You are surounded by 4 doors and there's nothing else in the room")
        } else {
            print("You entered a room with 4 doors")
        }
        print("Which door do you want to go into?")
        print("Pick one of the door below and enter it in!")
        sleep(1)
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
            print("You entered a room with 3 doors")
            print("Which door do you want to go into?")
            print("Pick one of the door below and enter it in!")
            sleep(1)
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC1 = Int(readLine() ?? "-1") ?? -1
                
                if layerC1 < 3 && layerC1 > 0 {
                    arrow()
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC2 = Int(readLine() ?? "-1") ?? -1
                
                if layerC2 < 3 && layerC2 > 0 {
                    doorIsLocked()
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC3 = Int(readLine() ?? "-1") ?? -1
                
                if layerC3 < 3 && layerC3 > 0 {
                    arrow()
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
            print("You entered a room with 2 doors")
            print("Which door do you want to go into?")
            print("Pick one of the door below and enter it in!")
            sleep(1)
            print()
            print("1")
            print("2")
            print()
            let layerB2 = Int(readLine() ?? "-1") ?? -1
            
            if layerB2 == -1 || layerB2 > 4 {
                space()
                commandDoNotExist()
                count = 0
            } else if layerB2 == 1 {
                arrow()
                space()
                reStart()
                count = 0
            }
            switch layerB2 {
            case 2:
                space()
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC4 = Int(readLine() ?? "-1") ?? -1
                
                if layerC4 < 3 && layerC4 > 0 {
                    arrow()
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC5 = Int(readLine() ?? "-1") ?? -1
                
                if layerC5 < 3 && layerC5 > 0 {
                    doorIsLocked()
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
            print("You entered a room with 3 doors")
            print("Which door do you want to go into?")
            print("Pick one of the door below and enter it in!")
            sleep(1)
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
                arrow()
                space()
                reStart()
                count = 0
            }
            switch layerB3 {
            case 1:
                space()
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
                print()
                print("1")
                print("2")
                print()
                let layerC7 = Int(readLine() ?? "-1") ?? -1
                
                if layerC7 < 3 && layerC7 > 0 {
                    doorIsLocked()
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
            print("You entered a room with 3 doors")
            print("Which door do you want to go into?")
            print("Pick one of the door below and enter it in!")
            sleep(1)
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
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
                    doorIsLocked()
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
                print("You entered a room with 2 doors")
                print("Which door do you want to go into?")
                print("Pick one of the door below and enter it in!")
                sleep(1)
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
func start() {
    print("""
db   d8b   db d88888b db       .o88b.  .d88b.  .88b  d88. d88888b
88   I8I   88 88'     88      d8P  Y8 .8P  Y8. 88'YbdP`88 88'
88   I8I   88 88ooooo 88      8P      88    88 88  88  88 88ooooo
Y8   I8I   88 88~~~~~ 88      8b      88    88 88  88  88 88~~~~~
`8b d8'8b d8' 88.     88booo. Y8b  d8 `8b  d8' 88  88  88 88.
 `8b8' `8d8'  Y88888P Y88888P  `Y88P'  `Y88P'  YP  YP  YP Y88888P
""")
    sleep(1)
    print("\nWelcome to the Eddie's Maze Beta 0.01!! the rule's are simple, just make it all the way to the goal!")
    sleep(1)
    print("\nYOU CAN NOT back track on this game so please choose wisely ")
    sleep(1)
    print("\nif you're ready, type 'start' and hit enter!")
    sleep(1)
    print("\nif you do not want to play type 'anyother word' and press enter")
    sleep(1)
//let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fire), userInfo: nil, repeats: true)
    
//    var timer = Timer(timeInterval: 2.0, repeats: true) { (thing) in
//        print("yes")
//    }
//    if timer == Timer(timeInterval: 2.0) {
//        print("I was here")
//    }
    
    print("\nif you want some hint, enter 'hint'")
}
start()
var startingPoint = readLine()?.lowercased() ?? "-1"
let cheat = (routeToGoal: "3 -> 1 -> 1 -> 3 -> 1 -> 1 -> 3 -> 1 -> 1", message: "YOU CHEATER!!!")
if startingPoint == "cheat" {
    space()
    print(cheat.routeToGoal,"\n")
    print(cheat.message)
    print()
    sleep(1)
    print("the game will start in 3 seconds")
    sleep(3)
    startingPoint = "start"
} else if startingPoint == "hint" {
    space()
    print("Pay attention to the Skull")
    sleep(1)
    print("\nthe game will start in 5 seconds")
    sleep(5)
    startingPoint = "start"
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
