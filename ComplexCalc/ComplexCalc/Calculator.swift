//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    //add functions
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    func add(_ args: [Int]) -> Int {
        var sum = 0;
        for i in 0...args.count-1 {
            sum += Int(args[i])
        }
        return sum
    }
    func add(lhs : (x : Int, y : Int), rhs : (x : Int, y : Int)) -> (Int, Int) {
        let newX = lhs.x + rhs.x
        let newY = lhs.y + rhs.y
        return (newX, newY)
    }
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var result = [String:Int]()
        for (variableL, valueL) in lhs {
            for (variablR, valueR) in rhs {
                if (variableL == variablR) {
                    result[variableL] = valueL + valueR
                }
            }
        }
        return result
    }
    //subtract functions
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    func subtract(lhs : (x : Int, y : Int), rhs : (x : Int, y : Int)) -> (Int, Int) {
        let newX = lhs.x - rhs.x
        let newY = lhs.y - rhs.y
        return (newX, newY)
    }
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var result = [String:Int]()
        for (variableL, valueL) in lhs {
            for (variablR, valueR) in rhs {
                if (variableL == variablR) {
                    result[variableL] = valueL - valueR
                }
            }
        }
        return result
    }
    //multiply functions
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    func multiply(_ args: [Int]) -> Int {
        var sum = Int(args[0]);
        for i in 1...args.count-1 {
            sum = sum * Int(args[i])
        }
        return sum
    }
    //divide functions
    func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    //count function
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    //average function
    func avg(_ args: [Int]) -> Int {
        var sum = 0;
        for i in 0...args.count-1 {
            sum += Int(args[i])
        }
        return sum / (args.count)
    }
    //mathop functions
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var sum = beg;
        for i in 0...args.count-1 {
            sum = op(sum, args[i])
        }
        return sum
    }
}
