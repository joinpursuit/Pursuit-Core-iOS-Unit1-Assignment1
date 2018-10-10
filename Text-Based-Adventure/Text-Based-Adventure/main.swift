//
//  main.swift
//  Text-Based-Adventure
//
//  Created by Donkemezuo Raymond Tariladou on 10/10/18.
//  Copyright © 2018 Donkemezuo Raymond Tariladou. All rights reserved.
//

import Foundation

print("Enter your option:")
// string? - optional
if let response = readLine(){
    switch response {
    case "swim":
        print("don't forget your googles")
    case "bike":
        print("pack an extra spare tube and hydration")
    case "run":
        print("nice day for a run in Central Park")
            default:
        print("Enter option again???????")
        let option2 = readLine()! // force unwraps - dangerous
        if option2 == "rest" {
            print("happy recovery")
        }
    }
}

