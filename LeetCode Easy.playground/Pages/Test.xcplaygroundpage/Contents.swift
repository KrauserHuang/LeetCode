//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func commonItemsBrute(_ a: [Int], _ b: [Int]) -> Bool {
    var c: [Int: Int] = [:]
    let ab = a + b
    for (index, number) in ab.enumerated() {
        print("index: \(index)")
        print("number:\(number)")
    }
    return true
}
