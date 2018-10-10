//
//  main.swift
//  Text based adventrue
//
//  Created by Ashli Rankin on 10/10/18.
//  Copyright © 2018 Ashli Rankin. All rights reserved.
//

import Foundation
// getting response form the user
//print("Enter your optional")
// String? - optional


print("Choose where you want your journey to begin 🌍 : (North America), (South America), (Europe), (Australia), (Antartica), (Africa),(Asia) ")

if let response = readLine() {
    
    switch response.capitalized {
    case "North America":
        print("Where do you want to go? New York, Miami, Chicago)")
       let response1 = readLine()
        switch response1?.capitalized {
        case "New York":
            print("Lets go to the Big Apple 🍎")
        case "Miami":
            print("Press the turn up button twice 🔊")
        case "Chicago":
            print("Lets go to the windy city 💨")
            
        default:
            print("no option")
        }
    case "South America":
        print("We see you are feeling adventurous: Where do you want to go? ")
        let responseSouthAmerica = readLine()
        switch responseSouthAmerica?.capitalized
        { case "Guyana":
            print("🇬🇾")
        case "Chile":
            print("🇨🇱")
        case "Brazil":
            print("🇧🇷")
        default:
           print( "there are no avalible spots at this time")
        }
    case "Europe":
        print("We see you are feeling adventurous: Where do you want to go? ")
        let responseEurope = readLine()
        switch responseEurope?.capitalized
        { case "United Kingdom":
            print("🇬🇾")
        case "Britan":
            print("🇨🇱")
        case "Amsterdam":
            print("🇧🇷")
        default:
            print( "there are no avalible spots at this time")
        }
        
    case "Australia":
        print("We see you are feeling adventurous: Where do you want to go? ")
        let responseAustralia = readLine()
        switch responseAustralia?.capitalized
        { case "Fiji":
            print("🇫🇯")
        case "Solomon Islands":
            print("🇸🇧")
        case "New Zealand":
            print("🇳🇿")
        default:
            print( "there are no avalible spots at this time")
    
        }
    default:
        print("no 🍺 for you")
    }
}










