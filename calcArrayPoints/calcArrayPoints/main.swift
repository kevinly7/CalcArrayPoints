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
    (num1: Int?, num2: Int?) -> Int?
    in if num1 != nil && num2 != nil {
        return num1! + num2!
    }
    return nil
}

let sub = {
    (num1: Int?, num2: Int?) -> Int?
    in if num1 != nil && num2 != nil {
        return num1! - num2!
    }
    return nil
}

let mul = {
    (num1: Int?, num2: Int?) -> Int?
    in if num1 != nil && num2 != nil {
        return num1! * num2!
    }
    return nil
}

let div = {
    (num1: Int?, num2: Int?) -> Int?
    in if num1 != nil && num2 != nil {
        return num1! / num2!
    }
    return nil
}

func mathOp(num1: Int?, num2: Int?, op:(Int?, Int?) -> Int?) -> Int? {
    return op(num1, num2)
}

print("Calculator, Array, and Points")
print("\n\n")
print("Calculator")
print("5 + 2  =  \(mathOp(5, num2: 2,op: add)!)")
print("5 - 2  =  \(mathOp(5, num2: 2,op: sub)!)")
print("5 * 2  =  \(mathOp(5, num2: 2,op: mul)!)")
print("5 / 2  =  \(mathOp(5, num2: 2,op: div)!)")
print("nil + 2  =  \(mathOp(nil, num2: 2,op: add))")
print("5 - nil  =  \(mathOp(5, num2: nil,op: sub))")
print("nil * 2  =  \(mathOp(nil, num2: 2,op: mul))")
print("5 / nil  =  \(mathOp(5, num2: nil,op: div))")



//  ---Array---
let addArray = {
    (nums: [Int]?) -> Int? in
    var total = 0
    if nums != nil {
        for num in nums! {
            total += num
        }
        return total
    }
    return nil
}

let mulArray = {
    (nums: [Int]?) -> Int? in
    var total = 1
    if nums != nil {
        for num in nums! {
            total *= num
        }
        return total
    }
    return nil
}

let countArray = {
    (nums: [Int]?) -> Int? in
    if nums != nil {
        var total = 0
        for num in nums! {
            total++
        }
        return total
    }
    return nil
}

let avgArray = {
    (nums: [Int]?) -> Int? in
    if nums != nil {
        return addArray(nums)! / countArray(nums)!
    }
    return nil
}

func arrayOp(nums: [Int]?, op:[Int]? -> Int?) -> Int? {
    return op(nums)
}

var testArray : [Int] =
    [2, 1, 8, 6, 5]

var nilArray : [Int]? = nil

print("\n\n")
print("Array")
print("Add array of [2, 1, 8, 6, 5]        =   \(arrayOp(testArray, op: addArray)!)")
print("Multiply array of [2, 1, 8, 6, 5]   =   \(arrayOp(testArray, op: mulArray)!)")
print("Count array of [2, 1, 8, 6, 5]      =   \(arrayOp(testArray, op: countArray)!)")
print("Average array of [2, 1, 8, 6, 5]    =   \(arrayOp(testArray, op: avgArray)!)")
print("Add array of nil                    =   \(arrayOp(nilArray, op: addArray))")
print("Multiply array of nil               =   \(arrayOp(nilArray, op: mulArray))")
print("Count array of nil                  =   \(arrayOp(nilArray, op: countArray))")
print("Average array of nil                =   \(arrayOp(nilArray, op: avgArray))")



// ---Points---
let addPoints = {
    (point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) in
    return (point1.0 + point2.0, point1.1 + point2.1)
}

let subPoints = {
    (point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) in
    return (point1.0 - point2.0, point1.1 - point2.1)
}

func addDictionary(dictionary1: [String: Double], dictionary2: [String: Double]) -> [String: Double] {
    var totalDictionary = [String: Double]()
    if dictionary1.keys.contains("x") && dictionary2.keys.contains("x") {
        totalDictionary["x"] = dictionary1["x"]! + dictionary2["x"]!
    } else {
        totalDictionary["N/A"] = -999
    }
    
    if dictionary1.keys.contains("y") && dictionary2.keys.contains("y") {
        totalDictionary["y"] = dictionary1["y"]! + dictionary2["y"]!
    } else {
        totalDictionary["N/A"] = -999
    }
    return totalDictionary
}

func subDictionary (dictionary1: [String: Double], dictionary2: [String: Double]) -> [String: Double] {
    var totalDictionary = [String: Double]()
    if dictionary1.keys.contains("x") && dictionary2.keys.contains("x") {
        totalDictionary["x"] = dictionary1["x"]! - dictionary2["x"]!
    } else {
        totalDictionary["N/A"] = -999 //prints when "x" key is not found in first or second dictionary
    }
    
    if dictionary1.keys.contains("y") && dictionary2.keys.contains("y") {
        totalDictionary["y"] = dictionary1["y"]! - dictionary2["y"]!
    } else {
        totalDictionary["N/A"] = -999 //prints when "y" key is not found in first or second dictionary
    }
    return totalDictionary
}

var point1 = (2, 1)
var point2 = (8, 6)
var dictionary1: [String: Double] = ["x": 2, "y": 1]
var dictionary2: [String: Double] = ["x": 8, "y": 6]
var unsupportedDic1: [String: Double] = ["a": 2, "y": 1]
var unsupportedDic2: [String: Double] = ["x": 8, "b": 6]


print("\n\n")
print("Points")
print("Add points (2, 1) and (8, 6)        =   \(addPoints(point1, point2))")
print("Subtract points (2, 1) and (8, 6)   =   \(subPoints(point1, point2))")
print("Add dictionary of      [x: 2, y: 1] and [x: 8, y: 6]   =   \(addDictionary(dictionary1, dictionary2: dictionary2))")
print("Subtract dictionary of [x: 2, y: 1] and [x: 8, y: 6]   =   \(subDictionary(dictionary1, dictionary2: dictionary2))")
print("Add dictionary of      [a: 2, y: 1] and [x: 8, y: 6]   =   \(addDictionary(unsupportedDic1, dictionary2: dictionary2))")
print("Subtract dictionary of [x: 2, y: 1] and [b: 8, y: 6]   =   \(subDictionary(dictionary1, dictionary2: unsupportedDic2))")