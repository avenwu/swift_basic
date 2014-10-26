//
//  SwiftBasic.swift
//  IntroductionToAlgrithms
//
//  Created by aven wu on 14/10/26.
//  Copyright (c) 2014年 avenwu. All rights reserved.
//

import Foundation

func executeDemoUsage(){
    let A = "A"
    println(A)
    var i = 1
    var f:Float = 2
    var d:Double = 2
    let text = "Interger is \(i), Float is \(f), Double is \(d).\nString is \(A)"
    
    println(text)
    
    let array = ["A", "B", "C", 1]
    println("array = \(array)")
    
    let dic = [
        "name":"Zhang san",
        "email":"email@email.com"
    ]
    println("dictionary = \(dic)")
    var emptyArray = [String]()
    var emptyDictionary = [String:String]()
    println("empty array = \(emptyArray), empty dictionary = \(emptyDictionary)")
    
    for element in array {
        println("Element=\(element), name=\(element.className)")
        if element == "A" {
            println("Bingo, \(element) is hit")
        }
    }
    
    var optionalString: String? = "Default value is Hello World"
    optionalString = "Hello Swift"
    println(optionalString)
    optionalString = nil
    println(optionalString)
    
    var vegetable = "red pepper"
    vegetable = "watercress pepper"
    switch vegetable {
    case "celery":
        println("celery hit")
    case let x where x.hasPrefix("watercress"):
        println("customer")
    case let x where x.hasSuffix("pepper"):
        println("x=\(x)")
    default:
        println("default")
    }
    
    var loop = 0
    for i in 0..<5 {
        println(i)
    }
    println("-----")
    for i in 0...5 {
        println(i)
    }
    func testFunction(name:String, day:String)->String{
        return "hello \(name), today is \(day)"
    }
    func calculateStatics(scores:[Int])->(max:Int, min:Int, sum:Int){
        var max = scores[0]
        var min = scores[0]
        var sum = 0
        for i in scores {
            if i > max {
                max = i
            }
            if i < min {
                min = i
            }
            sum+=i
        }
        return (max, min, sum)
    }
    println(testFunction("Java","2014/10/26"))
    let result = calculateStatics([1,2,3,4,5,6])
    println("result=\(result), max = \(result.max), min = \(result.min), sum = \(result.sum)")
    println("max = \(result.0)")
    
    func sumof(numbers:Int...)->Int{
        var sum = 0
        for i in numbers {
            sum += i
        }
        return sum
    }
    
    println(sumof(1,2,3))
   
    var temp = [3,5,2,1,9,0]
    let a = sorted(temp){$0>$1}
    println(a)
}