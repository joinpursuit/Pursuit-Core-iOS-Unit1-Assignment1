import Foundation

var name = "Neptune - The Goddess of Planetune"

var array2 = 0...100
var array = [0,1,2,3,4,5,6,7,8,9,10]
var HP = 100
var MP = 100
var enemy = 30
var enemy2 = 30
var enemy3 = 40
var enemy4 = 40
var enemy5 = 50

var adventurelog = 0
var item = 6


var hit = array2.randomElement()
var luck = array2.randomElement()
var dmg = Int.random(in: 0 ... 10)


//print(hit!)
//print(dmg!)
print("Hello my name is \(name)")
print("Todays the day we get the legendary pudding ^.^ so player what shall we do (player i have limited your options to only type forward because i want pudding)")
var choice = readLine()

while adventurelog == 0 {
    switch choice{
    case "forward":
        adventurelog += 1
    default:
        print("i want pudding so we are going forward")
        choice = readLine()
    }
}
//adventure log is enemy encounter
if adventurelog == 1{
    print("waaaahh our first enemy, This is a trash mob")
    print("player you must type atk, or item if Neptunes health is less then 80")
    print("Enemy HP: \(enemy)")
    loop: while enemy > 0{
        if HP > 0{
            choice = readLine()
            switch choice{
            case "atk":
                print("hyaa")
                enemy -= Int.random(in: 0 ... 10)
                print("Enemy hp: \(enemy)")
                sleep(2)
                print("enemy attacks")
                print("ouch")
                HP -= Int.random(in: 1 ... 10)
                print("Neptune HP: \(HP)")
                sleep(2)
                continue loop
            // attacking damage calculation
            case "item":
                print("Heal time")
                if HP < 80 && item > 0{
                    HP += Int.random(in: 10 ... 20)
                    print("Neptune HP is: \(HP)")
                    item -= 1
                    sleep(2)
                    print("Number of Potion charges remaining are\(item)")
                    print("enemy attacks")
                    print("oh no")
                    //        print(Int.random(in: 0 ... 10))
                    HP -= Int.random(in: 0 ... 10)
                    sleep(2)
                    continue loop
                    
                }
                else{
                    print("no need to heal now or you are out of potions")
                    sleep(1)

                }
            default:
                print("player you need to chose atk, or item the pudding depends on it")
                continue
            }//checking if string was correct
        }
        else {
            print("ohh noo my hp is too low")
        }//defeated loop break
    }
    print("wow we beat the enemy, Neptune has learned Neptune Break type skill to use cose 30 MP")
    print("Neptune HP\(HP) MP\(MP)")
    print("Potions charges \(item)")
    
}
sleep(4)

adventurelog += 1

if adventurelog == 2{
    print("well round 2")
sleep(2)
    print("enemy HP: \(enemy2)")
    loop2: while enemy2 > 0{
        if HP > 0{
            choice = readLine()
            switch choice{
            case "atk":
                print("hyaa")
                enemy2 -= Int.random(in: 0 ... 10)
                print("Enemy hp: \(enemy2)")
                print("enemy attacks")
                print("ahh")
                HP -= Int.random(in: 1 ... 10)
                print("Neptune HP: \(HP)")
                if MP < 97{
                    MP += 3
                }
                print("My Mana: \(MP) ")
                continue loop2
            // attacking damage calculation
            case "skill":
                if MP >= 30{
                    print("This is my special: Neptune Break")
                    enemy2 -= Int.random(in: 0 ... 4)
                    print("atttack 1")
                    print("Enemy hp: \(enemy2)")
                    sleep(1)
                    enemy2 -= Int.random(in: 0 ... 4)
                    print("atttack 2")
                    print("Enemy hp: \(enemy2)")
                    sleep(1)
                    enemy2 -= Int.random(in: 0 ... 4)
                    print("atttack 3")
                    print("Enemy hp: \(enemy2)")
                    sleep(1)
                    enemy2 -= Int.random(in: 0 ... 4)
                    print("atttack 4")
                    print("Enemy hp: \(enemy2)")
                    sleep(1)
                    enemy2 -= Int.random(in: 0 ... 4)
                    print("atttack 5")
                    print("Enemy hp: \(enemy2)")
                    sleep(1)
                    MP -= 30
                    print("Neptune MP:\(MP)")
                    print("enemy attacks")
                    print("ahh")
                    HP -= Int.random(in: 1 ... 10)
                    print("Neptune HP: \(HP)")
                    sleep(1)
                    // this is Neptune break atks the enemy 5 times
                    continue loop2
                }
                else{
                    print("my mana is too low")
                }
            case "item":
                print("heal time")
                if HP < 80 && item > 0{
                    HP += Int.random(in: 10 ... 20)
                    print("Neptune HP is: \(HP)")
                    item -= 1
                    print("Number of Potion charges remaining are\(item)")
                    print("enemy attacks")
                    print("oh no")
                    HP -= Int.random(in: 0 ... 10)
                    print("Neptune HP is: \(HP)")
                    continue loop2
                    // this loop is to use an item and check if their are any potions remaining and the enemy still atks
                }
                else{
                    print("no need to heal now or we are out of potions")
                }
            default:
                print("player you need to chose atk, item, skill the pudding depends on it")
                continue
            }//checking if string was correct
        }
        else {
            print("ohh noo my hp is too low")
        }//defeated loop break
        
    }
}

print("wow we beat the enemy again ")
adventurelog += 1

if adventurelog < 2{
    print("would you like to try again? yes, or no")
    choice = readLine()
    switch choice{
    case "yes":
        print("yay round two")
        adventurelog = 0
    default:
        print("please type yes or no")
        //checks if the game is completed in which at the moment their is no ending
    }
}
else{
    
    print("we finally have gotten the pudding, it may have took ages but we have finally got it")
    sleep(4)
    let neptunia = """
                                 .,**/(//((/*,,.
                                     .**,,................,**,.
                                 *,,............................,*,
                             .,/,..................................,*.
                      .*,. ,.*(..*,.......*,...........................,,
                    .**,..   *, .,*.....*,................................*,
                   .**##..*,,   ,*.....*,...............,...................*.
                  .*,,,,,*,,,.,,..**..*.................*......,/,../. *......*
                   ,/,,,,,,...*%*.*/.*..................*....../,..,@*..*......**
                 .*,/*,%(*,,,,,,,*,.,,.................,,......**..   . ,****....*
              .*,../,,,*,,,*****/..,(..,..............,*...,/,    ..***. .***/....*.
            ,*....*,***,,,/,,.....///.,,,........,....**...**..(%%,,,  *.,%#/*,....*
       .**.....**.......,..,*...,/*,*.,,,.......,,,..,*,,..,/,.   . ,***,,,,,,*.....*
   ,/*,......**..........,,*/,*///,,*,,,,,......,,,..//*,...**. ....,,,,,,,,,**......*.
         .**............/*,,/,,*/,**(*,,,,.....,,,,.*,*/,..../****,,,,*@/,**..........*
     //,,*,...*,,,.....,*,,//,,/..../,(/,,,...,/*,,*,*/(##///*.,..*,,,,*,,*/...........*
       /......*,,......,*,/****,....**,/*,,..,,/,,*(*..,//....*/,.*,,,,,,,*(,......*...,,
      .,....**...*.....*,**,,//.....,**//,,,,,,/,/,.....//...**/,..,***,,,..,,......,,..,.
    ./*.....*(*..*.....**/,.,%%%%%#/.//.,*,,,,,//.......//,.,*,*/*...........,,......,*..,
,**.,,..,,//,....**....*/*,#/%%%%%%%%%/../,,,,*/........****.,,,//,..,,..,....,*,.......*,,
     ,*.......*,.  *.../*.(,%%%%%%%%%/..../,,,/...,(#&%%##&%#.,,//,.,,,..,,,....,/,......,//
       .*,,,*,.   ,/,..,,,,.*/(#%%%%%( ...,*,,/..  (%%%%&%%%&&*,/(,.,,,,.,,,,,...,/,,......,/
         ,..   ,*,. .,,,,.. .*/(%%#(#( ....,**,.../%%%%%%%%%%##*/(,,,,*/,,/((*,,...**,,,......*.
        .**,,*,. . ./*/**,. (//////*(,......*/...,((/#%%%%%%%#///#,,,/**(**,,/*//*,.**,,,,,....,*,
      ,*...,, ...  *,**//*.../#(//*. ............  ,/(%%#((%%*/**/,,/,.**(*,.,(/*,,,***,*, .,,*****
    ,*....,,/./*****..,(........,,................,#//////,//.(./*,/*..*,**,..,**/,,,,,,,*.
  /**,,.    //,/,,,....,............................*((((#. .,.***/,,..//,,,,..,/,*/*,,,,,/*
          .*..,***,,...,,.....................................,//*,,...(/,,,,..../*. .,/,,,**
         .*..,/../*,....*,..................................../(,,,..../,,,,,,...,/,    ./*,*,
        ,,,*.,..,,**,,..**...........*//////(/,...............,*,,,...,*,,,,,,,...*,        ,/*
       .,.   *..,,,/*,..*/*........../*,,,,*//(...............**,,....*/,,,,,,,....*
            .,..,,,,*//, .//*........,,,,,,,,,/..............*(,,....,/,(,,,,,,,....,
            .,.,,,,**,../*,,/,**........,,,,,*...........,*****......**,/**,,/ ,*,..,.
            .,..,,/.  ,/,,,/..,*,/,...................,*/*,,*/,....../*,/ /*,*    .*,*.
             ,..,,/*/*,,**.  .,/ **,///*,,....,,*#(*..*/////(,......**,,* .**.       ,,
             *.../*/(///......,*,.**/**,,,,*,*/(, .*/*,*/. **......./,,,*  ./
              *..* .*//,,,,..*/,*..**(,,****/(..**,,**.  .*........*./**,
               ,*,     .**,,,*/,,%,.**(*,,,*,**,**,....,,/..,/*...*    ,.
                         .*,,*..*&&#.*/*.,////*. ..,,*(//***/*/..*.
                           */...%%*.*,.    ,/(/*%&%,,**,*.   ,/**,,
                           *.../%#*,.,/.  **..*.(%%,.**,,.....//*/,,
                          *  .,%%/. **,//.*,/,.**&%/ ,*,,..   .*/**,,
                        */,  ,#&/* ./,,**,,,** *.%&#  **,,.,**,,/**//
                       ,/***.#%%,*  /,*../,,/,.*,#%%. ,////,,,/,.,,.
                       ,. */,,,/,.*,.*/,. ,*.,/,./%%/,.*(/(*,.*/**.
                        ,*./,,,*/***/,    .***/*/*,,,*/*(**(/*,,..,.
                          .***,/,,,*%&%/#&&&%(, .*,***,.,,  .*......*  ,*
                           **/#%%&%%&%%/(%%%%%&%&(*,,,(,      *...**,*/,.,
                           ,*/#%%%%%%%%//%%%%%%%%&%//(&&,      *.,,. ... *
                           .%%%%%%/*#%%//&%%*/%%%%%%%%%&&/    *,/( . .,*(***
                          .#%%%%%/,*%%%//&%%(**%%%%%%%%%%&(   .*.  ,*. .*,.*.
                         .%%%%%%*/%%%%%//&%%%%%*,(%%%%%%%%%&#.   ,/. . .*,..,*,
                        /%%%%%%&%%%%%%%/*%%%%%%%%%&%%%%%%%%%%%#.  *,,*,.........*(*
                       *%%%%%%%&%%%%%%%/*%%%%%%%%%&%%%%%%%%%%%%%*   .,..........,,*,
                      **(#%%%%%%&%%%%%%(/%%%%%%&&&&%%%%%%%%#(*,,*/*    **..,*,
                     *%(,,,/#%%%%%&&&&&(*%&&%%%%%%%%%%%#/*,,,*(%%%#,     .,***
                    /*,/%%%#/,,,*/((#%%#*#%%##(/**,,,,*/(%%%%#/*,,//
                   .. ,/*,,*(%%%&%%%%###*((##%%%%%&&%%#(/*,,,***.. ,
                   *    ,,***,,,**//(###//##(((//**,,,***//,..*,,. ,
                   *,,.  .,  ..*(/*****//*/*///*,,*/**.   /,,**.
                          * ,*,,** . ./,,*/.   .,/*,,,**/**..  ./(*,
                                *,/*/*,,,,* */**,***//**,/.  .*. ./,*.
                                ********///,.*,,,,,,*////,.. ..*..,*,/,
                                *,,,,...,*/,  *//*,,,,,*/*,..,//..**,**
                                 *,,,,,,,,*.   *,,,,,,...,***(/***(**,*
                                 ,*,,,,,,,*,   .*.... . .**((((/*//****.
                                  ,...   ..,     *,  ...*/.,,,/((/*****
                                  ,*.......*       .***,        ,//***.
                                  .,,,,,,,,/                      .,.
                                   .*,,,,,,,
                                    * ...  ,.
                                 *,*(*,..,,***,
                                 ***,**,,*,..,.
                                 */*/. /**, .,.
                                .*/*,,,,,*,...*
                                 .((///////*//,
                               ./,,,,,,,,,,,*/,
"""
    print(neptunia)
    
}
