//
//  main.swift
//  calcArrayPoints
//
//  Created by Kevin Ly on 10/12/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

//  ---CALCULATOR---
import Foundation

let add = {
    (num1: Int, num2: Int) -> Int
    in return num1 + num2
}

let sub = {
    (num1: Int, num2: Int) -> Int
    in return num1 - num2
}

let mul = {
    (num1: Int, num2: Int) -> Int
    in return num1 * num2
}

let div = {
    (num1: Int, num2: Int) -> Int
    in return num1 / num2
}

func mathOp(num1: Int, num2: Int, op:(Int, Int) -> Int) -> Int {
    return op(num1, num2)
}

print("Calculator, Array, and Points")
print("")
print("")
print("")
print("Calculator")
print("5 + 2  =  \(mathOp(5, num2: 2,op: add))")
print("5 - 2  =  \(mathOp(5, num2: 2,op: sub))")
print("5 * 2  =  \(mathOp(5, num2: 2,op: mul))")
print("5 / 2  =  \(mathOp(5, num2: 2,op: div))")



//  ---Array---
let addArray = {
    (nums: [Int]) -> Int in
    var total = 0
    for num in nums {
        total = total + num
    }
    return total
}

let mulArray = {
    (nums: [Int]) -> Int in
    var total = 1
    for num in nums {
        total = total * num
    }
    return total
}

let countArray = {
    (nums: [Int]) -> Int in
    var total = 0
    for num in nums {
        total++
    }
    return total
}

let avgArray = {
    (nums: [Int]) -> Int in
    return addArray(nums) / countArray(nums)
}

func arrayOp(nums: [Int], op:[Int] -> Int) -> Int {
    return op(nums)
}

var testArray : [Int] =
    [2, 1, 8, 6, 5]

print("")
print("")
print("")
print("Array")
print("Add array of [2, 1, 8, 6, 5]        =   \(arrayOp(testArray, op: addArray))")
print("Multiply array of [2, 1, 8, 6, 5]   =   \(arrayOp(testArray, op: mulArray))")
print("Count array of [2, 1, 8, 6, 5]      =   \(arrayOp(testArray, op: countArray))")
print("Average array of [2, 1, 8, 6, 5]    =   \(arrayOp(testArray, op: avgArray))")



// ---Points---
let addPoints = {
    (point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) in
    return (point1.0 + point2.0, point1.1 + point2.1)
}

let subPoints = {
    (point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) in
    return (point1.0 - point2.0, point1.1 - point2.1)
}

func addDictionay(point1: [String: Double], point2: [String: Double]) -> [String: Double] {
    var totalDictionary = [String: Double]()
    totalDictionary["x"] = point1["x"]! + point2["x"]!
    totalDictionary["y"] = point1["y"]! + point2["y"]!
    return totalDictionary
}

func subDictionary (point1: [String: Double], point2: [String: Double]) -> [String: Double] {
    var totalDictionary = [String: Double]()
    totalDictionary["x"] = point1["x"]! - point2["x"]!
    totalDictionary["y"] = point1["y"]! - point2["y"]!
    return totalDictionary
}

var point1 : [String: Double] = ["x": 2, "y": 1]
var point2 : [String: Double] = ["x": 8, "y": 6]


print("")
print("")
print("")
print("Points")
print("Add points (2, 1) and (8, 6)        =   \(addPoints((2,1), (8,6)))")
print("Subtract points (2, 1) and (8, 6)   =   \(subPoints((2,1), (8,6)))")
print("Adding points in a dictionary       =   \(addDictionay(point1, point2: point2))")
print("Subtracting points in a dictionary  =   \(subDictionary(point1, point2: point2))")