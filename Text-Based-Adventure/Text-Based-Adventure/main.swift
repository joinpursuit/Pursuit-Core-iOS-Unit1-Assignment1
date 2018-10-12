
import Foundation
let foldingBike = (name:"foldingBike" , weight:40)

let mountainBike = (name:"moutainBike" , weight:20)
let BMX = (name:"BMX" , weight:50)
let roadBicycle = (name:"roadBicycle", weight: 30)
let bikeTypes = [foldingBike,mountainBike,BMX,roadBicycle]
var username = [ "Grace","Alice","Jane","Micheal", "Bruce", "Simon", "Drake","Jabeen"]

var greeting = "Hello Welcome! Please key in your username"
print(greeting)
let userResponse = readLine()
loop: for people in username{
    if people == userResponse{
        print("Hi \(people)!", "You are welcome back🤝!. So you want to try some adventures this summer? Yes or No")
        let userResponse2 = readLine()
        var YesOrNo = true
        innerloop: while YesOrNo  {
//            print("Hi \(people)!", "You are welcome back🤝!. So you want to try some adventures this summer? Yes or No")
            if userResponse2 == "Yes"{
                print("okay we got you")
                YesOrNo = false
                break loop
            } else if userResponse2 == "No"{
                print("Would you want to try out some of our amazing summer adventures?")
                YesOrNo = false
                continue innerloop
                
            } else{
                print("Please say Yes or No")
                break innerloop
            }
        }
    }
}
print("Here are some adventures for the Summer! Choose your adventure: \"Learn Biking\" or \"SkyDiving\"")
if let response = readLine() {
    
    switch response {
    case "Learn Biking":
        
        print("Learn biking is an amazing choice. Get biking gears and rent a bike. i.e helment, biking shoes etc. On a scale of 1...6, please enter the number that best describe your biking experience.")
        
        let levelOfBikingExperience = readLine()! //Force unwrap optional
        
        let levelOfBikingExperienceInt = Int(levelOfBikingExperience)! //Force unwrap optional
        
        if levelOfBikingExperienceInt <= 3 {
            
            print("You a novice but don't worry,we will guide you through your biking experience. Please enter your weight")
            let userWeight = Int( readLine()!)!
            for bikeChoice in bikeTypes {
                if bikeChoice.weight > userWeight {
                    print("\(bikeChoice) is the best choice for you. Now put on your biking gears and enter 0 to start")
                    let userResponse3 = readLine()
                    var startLevel = 0
                    let endLevel = 1
                    _ = 1
                    let gameStart = true
                    
                    while(startLevel < endLevel) { // 0 < 1
                        if gameStart {
                            
                            print("Keep moving steady until you see a mountain")
                        } else {
                            if startLevel>endLevel {
                                print("You completed your first Race")
                            }
                        }
                        startLevel += 1
                    }
                   
                }
                if bikeTypes[bikeTypes.count - 1].weight >= userWeight { // 20
                    print("Sorry we don't have any bike that meets your weight")
                }
            }
            
        } else if (4...6).contains(levelOfBikingExperienceInt) { //checks if in range
            
            print("You don't really need guidance and can just wear protective wears and begin your adventure")
        }
    case "SkyDiving":
        
        print("You really made an interesting Choice. Please enter a prefered location \"New York\" \"Chicago\" \"Atlanta\"")
        
        let choice = readLine()!
        
        if choice == "New York"{
            print("Check out the best skydiving companies in /(choice)")
        } else if choice == "Chicago"{
            print("please follow https://chicago.cbslocal.com/top-lists/best-skydiving-near-chicago/ to check out the best skydiving companies in Chicago")
            _ = readLine()
            
        } else if choice == "Atlanta" {
            print("You can access skydiving locations in Atlanta by following this link https://www.yelp.com/search?cflt=skydiving&find_loc=Atlanta%2C+GA")
        } else {
            print("We have more options for you")
        }
    case "I really don't know which to choose":
        print("How do you mean?. You mean you love both options? Do you need us to help you decide? Yes or No")
        let response = readLine()!
        
        if response == "Yes"{
            print("okay... so how much is your budget for this adventure? 10...100")
            print("Your budget can afford skydiving")
        }else if response == "No" {
            print("okay then. You can always come back when you have it figured out. Have a great day! 👋🏽")
        }
        
        
    default:
        print("Sorry I didn't get your response. Please return to main menu Please")
    }
}


