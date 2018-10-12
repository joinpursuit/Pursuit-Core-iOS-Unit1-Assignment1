//
//  main.swift
//  October 11 2018
//
//  Created by Ashli Rankin on 10/11/18.
//  Copyright © 2018 Ashli Rankin. All rights reserved.
//

import Foundation

//var arrayFruits = ["mango" , "strawberry", "pineapple", "curry"]
//var number = [1,2,3,4]
//var bool = [true, false]
//var double = [2.0, 9.0, 7.0, 7.6]
//var character = [ "a" , "b" , "c"  ,"d" , "e"]
//
//var array = [3,4,5,6]
//var array1 = [7,8,9,10,11]
// indexes for array start at 0
//print(array[2])
//print(array[7])

//for number in array
//{
//    if number % 2 != 0{
//    print(number)
//}
//}
//array.sort()
//array.append(8)
//array.insert(7, at: 0)
//array.remove(at: 1)
//let lastThing = array.popLast()
//print(array)// you can only append the value of the same type.
//print(array)
//print(lastThing!)
//print(array)
//
//print(array.count - 1) // gives youy the last index
//print(array[array.count - 1])
//// last revomes the last object and gives it to you if you want to store it.
//var lastIndex = array.count - 1
//
//array.reverse()
//let arrayReversed = array.reversed() // looks at it makes a copy and asks you what you want to do witht the object
//print(array)

//var myArray = [3,4,5]
//var mySecondArray = [myArray]
//myArray.append(3)
//print(myArray)
//

//let myTestScore = [1,23,4,5,8]
//
//let myScore = myTestScore[0]
//print(myScore)
//print(myTestScore)
//
//let myFirstThreeScores = myTestScore[0...2]// keeps reference no matter what.
//print(myFirstThreeScores)


//let words = ["alan", "ales", "i need new name", "bat", "josh","hello"]
//

//var numbers = [24, 5, 7, 85, 68]
////numbers[2] += 100
////print(numbers)
//for i in 0..<numbers.count - 1 {
//    numbers[i] += 2
//
//
//}
//print(numbers)

//var firstArry = [2,3,4]
//var secondArray = [2,3,6]
//print(firstArry == secondArray)
//
//let myName = "ashli"
//let myNameAsArray = Array(myName)
//print(myNameAsArray)
//print(myNameAsArray[0])


let myMatrix = [
                [1,2,3,4] ,
                [5,6,7,8],
                [9,10,11,12]
                    ] /// matrixes are arrays in an array at index 0 the first object is the first array.

print(myMatrix[0][0])

let myStringMatrix = [
    ["alan", "ashli" , "mary" , "life"] ,
    ["jsmes","john" , "jake"],
    ["sunny" , "sue"]
]
print(myStringMatrix[0][0])
print(myStringMatrix.randomElement()?.randomElement())
