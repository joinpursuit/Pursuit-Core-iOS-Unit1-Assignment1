
import Foundation


print("HOW TO BEGIN AN ADVENTURE")
print("")
print("")
print("You passed through security at JFK. The flight is delayed. If you want to go to the bar to kill time? (enter: \"bar\"): ")
let barOrRelax = readLine()!.lowercased()
switch barOrRelax {
case "bar", "yes", "y", "b":
    let barDrinkMenu = (beer: "cerveza", vodka: "vodka", vino: "wine", priceAllDrinks: 14.99)
    print("Can I offer you a cerveza, vodka, or wine? Happy hour is about to end: ")
    let userWantsToDrink = readLine()?.lowercased()
    switch userWantsToDrink {
        case barDrinkMenu.beer, barDrinkMenu.vodka, barDrinkMenu.vino:
        print("You need to order at least two drinks. All drinks are $14.99. How many do you want?: ")
        let howManyDrinks = readLine()!
        let howManyDrinksInt = Int(howManyDrinks) ?? 0  // nil coelescing
        var counterDrinks = 0
        if howManyDrinksInt >= 2 {
            for _ in 2...howManyDrinksInt{
                counterDrinks += 1
                print("skål!!!")
            }
            let check: Double = barDrinkMenu.priceAllDrinks * Double(counterDrinks)
                print("Here is your check for drinks: $\(check). The food is on the house. ")
            } else if howManyDrinksInt < 2 {
                print("Get out of here!!! You will never gonna make it in the land if where vikings drink beer in hot swimming pools... With my bartender, cool tour guide, and magical icelandic gnome powers I condemn you to be Tom Hanks in that movie where he lives in a terminal.")
        } else {
            print("The gnomes of Island can sense you are a smart ass and killed you from afar...")
        }default:
            print("Gnomes that only understand true or false killed you for having those poor motor skills...and for being a smart ass.")
        }
    
        sleep (1)
        print("Ready for your flight?: ")
        let isUserReadyForFlight = readLine()!
        switch isUserReadyForFlight{
        case "yes":
            print("You had an awesome time at the bar last night, huh?...", "Finally you arrived in ICELAND!!!", "You off off the plane, went to the toilet, picked up the car, and started driving east when suddenly, under a sunny and clear sky, a hail storm unleashes, with hails the size of coins and winds so strong that shakes your car. Drivers on the other side keep hunking at you and blinking their lights. Do you STOP or KEEP GOING?: ", terminator: " ")
            let stopOrKeepGoing = readLine()!.lowercased()
            switch stopOrKeepGoing{
            case "stop":
                print("The board indicates that all is well.", "The only other thing to check is if the LIGHTS are working but is bright out, you have to get off the car to CHECK or stay in the car until the storm passes...\"CHECK\" or \"STAY\": ", separator: " ",terminator: "")
                let stayOrGoOut = readLine()?.lowercased()
                stayOrGoOut == "stay" ? print("Those five minutes saved your life! and you are off to an adventure 🗻 🧗🏽‍♂️ 🚵🏽‍♂️"):print("Some common sense is what you lacked! Opening that door cost you a life ☠️")
            case "keep going":
                print("You lucky dare devil! A couple of kilometers later the sky cleared and you are making good time on your way to your hotel, which is 8 hours away from Reikjavik.", "Will you stop to explore this magestic and powerful waterfall or go straigth to the hotel...\"WATERFALL\" or \"HOTEL\": ", separator: " ")
                let exploreOrContinue = readLine()
                if exploreOrContinue == "waterfall"{
                    print("While you were braving the cold water to reach behind the waterfall a gnome appeared behind a rock and it is smiling at you...are you afraid?: ")
                    let doYouSeeAGnome = readLine()!.lowercased()
                    doYouSeeAGnome == "yes" ? print("Good instincts until you last breath."): print("You should be. He just made you his dinner ☠️☠️☠️")
                }else if exploreOrContinue == "hotel"{
                    print("You made it to the hotel! You have the option to stay on the second [2] or fifth floor [5]?: ")
                    let oddOrEven = readLine()!
                    let oddOrEvenInt = Int(oddOrEven)!
                    print("Do you want a room with a view?: yes or no" )
                    let roomWithView = readLine()?.lowercased()
                    if oddOrEvenInt == 2 && roomWithView == "yes" {
                        print("Enjoy!")
                        while roomWithView == "no" {
                            print ("Sharp angles were the death of you")
                        }
                    }else {
                        print("You were doomed to begin with...")
                    }
                    
                }
            default:
            print("Time was the ☠️ of you. Your trip ended before it began!")
            }
    default:
    print("If you are here, you are here to be brave and drink, and to stick to the forking menu... With my bartender, cool tour guide, and magical icelandic gnome powers, I reject you and YOU SHALL NOT PASS!!!")
    }
default:
print("Time was the ☠️ of you. Your trip ended before it began!")
}

