
import Foundation

var summerBudget = 200...1200
print("Adventures for the Summer! Choose your adventure: \"Learn Biking\" or \"SkyDiving\"")

if let response = readLine() {
 
    switch response {
        
    case "Learn Biking":
        
        print("Get biking gears and rent a bike. i.e helment, biking shoes etc and please put your level of Biking experience")
        
        let levelOfBikingExperience = readLine()! //Force unwrap optional
        
        var levelOfBikingExperienceInt = Int(levelOfBikingExperience)! //Force unwrap optional
        
        if levelOfBikingExperienceInt <= 3 {
            
            print("Please carefully weear protective materials and seek some guidance")
           
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

            } else if choice == "Atlanta" {
                print("You can access skydiving locations in Atlanta by following this link https://www.yelp.com/search?cflt=skydiving&find_loc=Atlanta%2C+GA")
            }
        else {
            print("We have more options for you")
    
}
    case "I really don't know which to choose":
        print("How do you mean?. You mean you love both options? Do you need us to help you decide?")
        let response = readLine()!
        
        if response == "Yes"{
            print("okay... so how much is your budget for this adventure?")
        } else if response == "No" {
        print("okay then. You can always come back when you have it figured out. Have a great day! 👋🏽")
        }
        
        
    default:
        print("Sorry I didn't get your response. Please return to main menu")
}
}
