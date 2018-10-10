//
//  main.swift
//  Adventure Test
//
//  Created by Ramu on 10/10/18.
//  Copyright © 2018 Ramu. All rights reserved.
//

import Foundation

print("Enter your workout: (swim), (bike), (run)")
if let response = readLine () {
    switch response {
    case "swim":
        print("don't forget your googles")
    case "bike":
        print("pack an extra spare tube and hydration")
    case "run":
        print("nice day for a run in Central Park")
    default:
        print("no 🍺 for you")
        print("Enter option again: ????????")
        let option2 = readLine ()! // force unwraps
        if option2 == "rest" {
            print("happy recovery")
        }
    }
}

