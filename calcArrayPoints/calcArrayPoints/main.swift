//
//  main.swift
//  calcArrayPoints
//
//  Created by Kevin Ly on 10/12/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(num1: Double, num2: Double) -> Double {
    return num1 + num2
}

func sub(num1: Double, num2: Double) -> Double {
    return num1 - num2
}

func mul(num1: Double, num2: Double) -> Double {
    return num1 * num2
}

func div(num1: Double, num2: Double) -> Double {
    return num1 / num2
}

func mathOp(oper: String, num1: Double, num2: Double) -> Double {
    switch oper {
        case "add":
            return add(num1, num2)
        case "sub":
            return sub(num1, num2)
        case "mul":
            return mul(num1, num2)
        case "div":
            return div(num1, num2)
    default:
            return
    }
}