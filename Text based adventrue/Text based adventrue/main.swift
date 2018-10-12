//
//  main.swift
//  Text based adventrue
//
//  Created by Ashli Rankin on 10/10/18.
//  Copyright © 2018 Ashli Rankin. All rights reserved.
//

import Foundation
print("🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍")
print("So you're thinking about traveling the world? You have come to the right place, Here at Pursuit Travel we ensure your trips are memorable. Explore some of the world's most exciting countries and cities")
print("🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍")
print(" Where would you like your journey to begin?: North America, South America, Australia, Africa")
print("🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍🌍")

if let response = readLine() {

    switch response.capitalized {
    case "North America":
        print("Where do you want to go? New York, Miami, Chicago)")
        let response1 = readLine()
        switch response1?.capitalized {
        case "New York":
            print("Lets go to the Big Apple 🍎")
            print("While on your trip to New York there are three popular attractions that you can choose from: The Empire State Building , Coney Island , Rockerfeller Center")
            let site = (name: "Empire State Buliding" , Price: 100)
            let site1 = (name: "Coney Island" , Price: 75)
            let site2 = (name: "Rockerfeller Center" , Price: 150)
            
            if let siteResponse = readLine() {
                    switch siteResponse.capitalized {
                            case"Empire State Building":
                                print("🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽")
                                print("You have chosen \(site.name), the price of this attraction is $ \(site.Price)")
                                print("🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽🗽")
                            case "Coney Island":
                                print("🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡")
                        print("Have the time of your life!!, \(site1.name) entry is $ \(site1.Price)")
                                print("🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡🎡")
                            case "Rockerfeller Center":
                                print("🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲")
                        print("Experience the magnifience of the \(site2.name)for the small price of \(site2.Price)")
                                print("🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲")
                    default:
                        print("All other sights are filled sorry for the inconvenience,☹️")
                }
            }
        case "Miami":
            print("Miami is the party capital of North America, before you can turn up we must verify your age")
        if let ageResponse = Int(readLine()!) {
            switch ageResponse {
                case 0...18:
                        print("Its not your time yet, check out Miami's other events")
                        for _ in 1...1 {
                            print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
                            print( "☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️☹️" , separator: "")
                            print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
                            }
                case 19...20:
                        print("⌚️⌚️⌚️⌚️⌚️⌚️⌚️ You are not old enough to turn up yet, but you can enter the club, get the wristband ⌚️⌚️⌚️⌚️⌚️")
                case 21...100:
                        print("🔊🔊🔊🔊🔊🔊🔊 Press the turn up button twice 🔊🔊🔊🔊🔊🔊🔊🔊🔊")
                        for _ in 0...10 {
                            print("🥃" , terminator: "")
                }
                default:
                    print("you are not human")
            }
            }
        case "Chicago":
            
            print("Lets go to the windy city 💨")
            
        default:
            print("no option")    
        }
   
    case "South America":
        print("You have chosen the tropical conrtinet of South America.👨🏾‍🌾We see you are feeling adventurous: Where do you want to go? We are proud to showcase three intresting countries: Guyana, Chile and Brazil. ")
        let responseSouthAmerica = readLine()
        switch responseSouthAmerica?.capitalized{
        case "Guyana":
            print("""
    🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾
                                        Welcome To Guyana
    🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾🇬🇾
""")
            print("While here we suggest you try our delicious dishes")
            
            let dishes = ["Chicken Curry", "Cook-up" ,"Fried Rice"]
            let side = ["Rice" , "Roti" , "Local Drink" ,"Dahl Puri"]
            let price = [250,500,1000,2500,3000,4000]
          
            print("What would you like to eat, some of the dishes we have avalible are: Chicken Curry , Cook up and Fried Rice")
           let responseDishes = readLine()
            
            print("The side orders we have avalible are: Roti ,Rice ,Local Drink and Dahal")
            let responseSide = readLine()
            
            switch responseDishes?.capitalized {
            case dishes[0]:
                switch responseSide?.capitalized {
                        case side[0]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[0]) and \(side[0]) if you would like to purchase this meal the price is \(price[2] + price[0])")
                    print("----------------------------------------------------------------")
                        case side[1]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[0]) and \(side[1]) if you would like to purchase this meal the price is \(price[2] + price[2]) " )
                    print("----------------------------------------------------------------")
                        case side[2]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[0]) and \(side[2]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                        case side[3]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[0]) and \(side[3]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                        default :
                    print("----------------------------------------------------------------")
                    print("Your choice of side is not avalible at the moment")
                    print("----------------------------------------------------------------")
                    
                }
            case dishes[1]:
                switch responseSide?.capitalized {
                case side[0]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[1]) and \(side[0]) if you would like to purchase this meal the price is \(price[5] + price[2]) ")
                    print("----------------------------------------------------------------")
                case side[1]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[1]) and \(side[1]) if you would like to purchase this meal the price is \(price[4] + price[3]) ")
                    print("----------------------------------------------------------------")
                case side[2]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[1]) and \(side[2]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                case side[3]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[1]) and \(side[3]) if you would like to purchase this meal the price is \(price[4] + price[3]) ")
                    print("----------------------------------------------------------------")
                default:
                    print("----------------------------------------------------------------")
                        print("Your choice of side is not avalible at the moment")
                    print("----------------------------------------------------------------")
                    }
            case dishes[2]:
                switch responseSide?.capitalized {
                case side[0]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[2]) and \(side[0]) if you would like to purchase this meal the price is \(price[4] + price[2]) ")
                    print("----------------------------------------------------------------")
                case side[1]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[2]) and \(side[1]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                case side[2]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[2]) and \(side[2]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                case side[3]:
                    print("----------------------------------------------------------------")
                    print("You have chosen \(dishes[2]) and \(side[3]) if you would like to purchase this meal the price is \(price[2] + price[0]) ")
                    print("----------------------------------------------------------------")
                default:
                    print("----------------------------------------------------------------")
                    print("Your choice of side is not avalible at the moment")
                    print("----------------------------------------------------------------")
                }
    
            default:
                print("invalid item")
            }
        case "Chile":
            print("🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱")
            print("WELCOME TO CHILE")
            print("🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱🇨🇱")
            print("Do you speak Spanish? / El hablo espanol?")
            
            if let speechResponse = readLine() {
            switch speechResponse.capitalized {
                case "Yes" ,"Si":
            
                print("Aquí hay 4 hechos sobre Chile" )
                print("""
                    Hecho 1:¿La piscina más grande del mundo está en Chile?
                    En la ciudad de Algarrobo, en la costa del Pacífico, encontramos el paraíso artificial más impresionante que fue nombrado por Guinness Book of Records como la piscina más grande del mundo con una longitud de 1,000 yardas, un área de 20 acres y una profundidad máxima de 115 pies . Posee 66 millones de galones de agua de mar cristalina. La piscina se abrió en diciembre de 2006 y tomó cinco años de trabajo de construcción con un costo de casi mil millones de dólares y un costo de mantenimiento anual de alrededor de 2 millones.
                    """)
                print("""
                    Hecho 2: En Chile, puedes encontrar el lugar más seco de la Tierra, el desierto de Atacama

                    A 7.500 pies, el desierto de Atacama en Chile es el lugar más seco de la Tierra con un paisaje de belleza surrealista. Algunas partes de la región nunca han recibido una gota de lluvia y el desierto es probablemente también el desierto más antiguo de la tierra. El desierto atraviesa una franja de tierra de 1.000 kilómetros entre las montañas de los Andes y el Océano Pacífico, que se extiende sobre un área de 363.000 kilómetros cuadrados.

                    """)
                print ("""
                            Hecho 3:
                            Chile es un destino de vinos de clase mundial y el noveno mayor productor de vino.
                            Chile is the 5th largest exporter of wine and the 9th largest producer. And not just any wine, but some of the best and finest selection of wines have been produced in Chile since the first wine grapes were planted in the country in 1554, brought by Spanish Conquistadores. Chile has more than 1,200 kilometers of viticulture valleys in 14 different areas, which produce more than 10 million hectoliters of wine per year. Make sure you experience Chile Wine Country!)
                        """)
                print("""
                            Hecho 4:
                        
                            La isla "moai" frente a la costa de Chile, fue anexada por el país en 1888 y pasó a llamarse Isla de Pascua a fines del siglo XVIII. Durante la década de 1900 fue una granja de ovejas y fue administrada por la Armada de Chile. En esta isla en particular, se han trazado más de 7 km de túneles subterráneos de lava, que albergan uno de los sistemas de cuevas más extensos de la tierra. En 1966, toda la isla se abrió al público y el resto de los Rapanui se convirtieron en ciudadanos de Chile.
                        """)
                
            case "No":
                        print("Here are three facts about Chile")
                print  ("""
                            Fact 1: World’s Biggest Swimming Pool is in Chile?
                                In Algarrobo city in the Pacific coast, we find the most impressive artificial paradise that was named  by the Guinness Book of Records as the world’s largest swimming pool with a length of 1,000 yards, an area of 20 acres and a maximum depth of 115- feet. It holds 66 million gallons of crystal clear seawater. The pool was opened in December 2006 and it took five years of construction work with a cost of nearly 1 billion dollars and an annual maintenance cost of about 2 million.
                    """)
                    print("""
                                Fact 2: In Chile, You Can Find the Driest Place on Earth, The Atacama Desert
                                At 7,500 feet, Chile’s Atacama Desert is the driest place on Earth with a landscape of surreal beauty. Some parts of the region have never received a drop of rain and the Desert is probably also the oldest desert on earth. The desert runs through a 1,000 kilometer long strip of land between the Andes Mountains and the Pacific Ocean, spreading out over an area of 363,000 square kilometers.
                    """)
                        print("""
                                Fact 3:
                                Chile is the 5th largest exporter of wine and the 9th largest producer. And not just any wine, but some of the best and finest selection of wines have been produced in Chile since the first wine grapes were planted in the country in 1554, brought by Spanish Conquistadores. Chile has more than 1,200 kilometers of viticulture valleys in 14 different areas, which produce more than 10 million hectoliters of wine per year. Make sure you experience Chile Wine Country!
                            """)
                        print("""
                                Fact 4: Easter Island
                                The “moai” island off the coast of Chile, was annexed by the country in 1888 and renamed Easter Island in the late 1700’s. During the 1900s it was a sheep farm and was managed by the Chilean Navy. On this particular Island, more than 7 km of subterranean lava tunnels have been mapped out, which are home to one of the most extensive cave systems on earth. In 1966, the entire island was opened to the public and the remaining Rapanui people became citizens of Chile.
                            """)
        default:
            print("sorry your language is not supported")
        }
            }
            
        case "Brazil":
            print("🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷")
            print("WELCOME TO BRAZIL")
            print("🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷🇧🇷")
        default:
           print( "there are no avalible spots at this time")
        }

    case "Australia":
        print("We see you are feeling adventurous: Where do you want to go? ")
        let responseAustralia = readLine()
        switch responseAustralia?.capitalized {
        case "Fiji":
            for _ in 1...5 {
            print("🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯")
            print("Activities will be added momentarily")
            print("🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯🇫🇯")
            }
        case "Solomon Islands":
            for _ in 1...5 {
            print("🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧")
            print("Activities will be added momentarily")
            print("🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧🇸🇧")
            }
        case "New Zealand":
            for _ in 1...5 {
            print("🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿")
            print("Activities will be added momentarily")
            print("🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿🇳🇿")
            }
        default:
            print( "there are no avalible spots at this time")
        }
    
    case "Africa":
    print("Explore the countries of the mother land, you will never know what to expect. Where would you like to go? Nigeria, Ghana, Ethopia")
    let responseAfrica = readLine()
        switch responseAfrica?.capitalized {
        case "Nigeria":
            print("🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬" , terminator: "")
            print("Welcome to Nija, where do you want to go first? Explore the Gurara waterfall OR Explore the Jungles")
            print("🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬🇳🇬" , terminator: "")
            let responseNija = readLine()
            if responseNija?.capitalized == "Gurara" {
                print("Lets go")
                print("Welcome to the Gurara Falls. You can either Observe the falls or go for swim. What would you like to do?"   ,separator: "")
    let responseFalls = readLine()
                switch responseFalls?.capitalized {
                case "Swim":
                    for _ in 1...6 {
                    print("""
                                🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️
                                        🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️
                                                🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️🏊🏾‍♀️
                            """)
                    }
                    
                case "Observe":
                    print("You chose to be safe and observe the falls, what would you like to do?: 'Observe' swimmers OR go 'Bird watching'")
                    let choice = "observe"
                    let choice1 = "Bird watching"
                    let responseWatch = readLine()
                    if responseWatch?.capitalized == choice{
                    print("Dont you wish you went for a swim")
                    }
                    else if responseWatch?.capitalized == choice1 {
                        print("How many birds can you see?")
                     }
                        for _ in 1...10{
                             print("🦅")
                        }
                        let birdResponse = Int(readLine()!)
                        if birdResponse == 10{
                        print("You are Correct!!!")
                    }
                        else {
                            print("That is incorrect maybe you will get it next time")
                        }
                    
            default:
                    print("this option is not avalible at this time")
                    
                }
                }
            
            else if responseNija?.capitalized == "Jungle" {
                print("watch out for wild animals🦒")
                print("You have arrived!!, this is our jungle, we are about to cross a very dangerous path")
                print("Proceed cautiouisly!! you can either 'Skip' across the bridge OR 'walk cautiously'")
                let choice = readLine()
            
                let steps = 1...20
               
                if choice?.capitalized == "Skip" {
              
                for step in steps where step % 2 != 0 {
                    print(" 😵😵😵😵😵😵 Thge rung collapsed, YOU ARE DEAD!!!  😵😵😵😵😵😵😵😵😵😵😵")
                break
                    }
                }
            else if choice?.capitalized == "Walk Cautiously" {
                for step in steps where step % 2 == 0 {
                    print("🎉🎉🎉🎉🎉🎉🎉🎉🎉🎉You made it to the other side 🎉🎉🎉🎉🎉🎉🎉🎉🎉")
                    }
                }
            }
        case "Ghana":
            print("🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭")
            print("WELCOME TO GHANA")
            print("🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭🇬🇭")
            print("To explore Ghana you need to be very keen, you next journey will depend solely on you choices, please enter a number from 1 to 3")
            let response = Int(readLine()!)
            
            switch response {
            case 1:
                print("You have just jumped out of a plane at 30000ft inorder to deploy you parashute you need to pull the cord")
              let parachuteCode = 12
                print (" The code is the sum of 7 + 5")
                let code = Int(readLine()!)!
                
                let tries = code
                if tries == parachuteCode {
                    print("Congratulations your parachute is been sucessfully deployed")
                }
                
                var time = 10
                
                if tries != 12 {
                    print("INCORRECT CODE!!")
                    while time >= 0 {
                        print("Time is running out you have \(time) seconds" , separator: "")
                        time -= 1
                    }
                    print("🤯💥")
                }
                
               
                case 2:
                print("""
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                                    lets go parasailing
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                                🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊
                    """)

            case 3:
                print("""
                                🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲
                                Vist the cancun national park
                                🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲🌲
                    """)

            default:
                for _ in 1...3{
                print("Invalid number!!")
                }
            }
                
        case "Ethopia": // number of persons traveling
            
            print("🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹")
            print("WELCOME TO ETHOPIA")
            print("🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹🇪🇹")
            print("Due to the massive volume there are no longer any avalible trips to Ethopia")
        default:
            print("Please consider another destination")
        }
    
    
        default:
            print( "there are no avalible spots at this time")
        

}
}
