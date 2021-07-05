//

import Foundation

let myFirstArrays: [(number: Int, letters: String, myBool:Bool)]

//let mySecondArray = [(number:4, letters:"Alan"),
//                    (number:3, letters: "Alex"),
//                    (number:3, letters: "Alex", bool: true)
//    ] as [Any]

//let mySecondArray = [2,3,5,6]
//let colors = ["red","blue","green"]
//for number in mySecondArray {
//    if number % 2 != 0 {
//    print(number)
//}
//}
//
//
//var array = [2,3,4,5,6]
//array.insert(8, at: 2)
//print(array)
//
//let theLastthing = array.popLast()
//print(theLastthing!)
//print(array)
//
//var otherArray = [2,4,3,56,45,6,6,6,3]
//var lastIndex = otherArray.count-1
//print(otherArray[otherArray.count-1])
//
//array.first
//array.last
//
//print(array)
//
//var myArray = [3,4,5]
//var mySecondary = myArray
//myArray.append(contentsOf: [2,3,4])
//print(mySecondary)
//print(array)



//let colors = ["Orange","Red","Yellow","Turquoise","Lavender"]
//let somecolor = colors[0]
//let somecolor2 = colors[2]
//let somecolor4 = colors[4]
//let myFavoriteColors = somecolor + "," + somecolor2 + " and " + somecolor4
//
//print("\(myFavoriteColors) are some of my favorite colors")
//
//
//var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
//westernStates.removeLast(2)
//print(westernStates)

//let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
//let continentialStates = ["Texas", "New York", "Florida"]
//for state in moreStates{
//    if continentialStates.contains(state) {
//    print("\(state) is a continential state")
//    } else {
//    print("\(state) is not a continential state")
//
//}
//}

//var garden = ["dirt","🌷","dirt","🌷","dirt","dirt","🌷","dirt","🌷","dirt"]
//var basket = [String]()
//for i in garden{
//    if i == "🌷"{
//        basket.append(i)
//
//    }
//}
//print(basket)

var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]
battingLineup.insert("Suzuki", at: 8)
print(battingLineup)
battingLineup.remove(at: 1)
print(battingLineup)
battingLineup.insert("Tejada", at: 1)
print(battingLineup)
battingLineup.remove(at: 5)
print(battingLineup)
battingLineup.remove(at: 0)
print(battingLineup)
battingLineup.insert("Reyes", at: 7)
print(battingLineup)

//
//let myTestScores = [1,23,4,5,7,8]
//let score = myTestScores[4]
//print(score)
//print(myTestScores)
//let myfirstThreeScores = myTestScores[3...5]
//print(myfirstThreeScores.first)
//
//let names = ("alan", "alex", "i need a new name", "hat", "josh", "hello")
//let myArraySlice = words [2...5]  // this will not run because we delcared it to run from 2-5
//print(myArraySlice [0])
//
//var numbers = [24, 5,7,85,68]  // to change a number in a specific index
//numbers[2] = 100
//print(numbers)
//
//var numbers = [24,5,7,85,68]
//
//for i in 0..<numbers.count - 1 {
//    numbers[i] += 2
//}
//print(numbers)
//
//var numbers = [24,5,7,85,68]
//
//for i in 0..<numbers.count - 1 {    // this means we want to assign all the numbers except the last one to 2
//    numbers[i] = 2
//}
//print(numbers)
//
//var firstArray = [2,3,4]
//var secondArray = [2,3,4]
//
//print(firstArray == secondArray)
//
//let myName = "Alan"
//let myNameAsArray = Array(myName)
//print(myNameAsArray)
//print(myNameAsArray [1])
//
//var array = [4,5,6,7,8]
//
//array.insert(9, at:4)  // to insert in a specific index
//print(array)
//
//var winningNumber = [2,4,7,8]
//var theNumberIPicked = 9
//print(winningNumber.contains(theNumberIPicked))         // will tell us if true or false
//
//
//var winningName = ["alan", "alex", "josh"]
//print(winningName.contains("alan"))
//
//let array = ["alan", "alex", "josh"]
//var counter = 0
//for name in array {
//    if name == "alan" {
//        print(counter)
//    }
//counter += 1
//}

let myMatrix = [[1,2,3,4],
                [5,6,7,8],
                [9,10,11,12]]

