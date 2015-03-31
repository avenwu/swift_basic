// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var intStr = "ss"
var myOptionalInt : Int? = intStr.toInt()
if myOptionalInt != nil {
    var myInt = myOptionalInt!
    print("unwrapped Int:\(myInt)");
} else {
    print("myOptionalInt =\(myOptionalInt)")
}
if var myInt = intStr.toInt() {
    print("unwrapped and local scope: \(myInt)")
}
func httpResponse() -> (rc: Int, status: String) {
    return (200, "OK")
}
httpResponse()
var xyz = (x: 0, y:"0", z:0)
xyz.x
xyz.1
var colors = ["red", "green", "green"]
colors.append("yellow")
colors.insert("black", atIndex: 0)

var rect = (10, 10)
switch rect {
case let (w, h) where w == h:
    print("\(w,h) is square")
default:
    print("rectangle but not square")
}
let s = "A"
countElements(s)
let chinese = "好a"
countElements(chinese)
var null:String?
str.capitalizedString
str.uppercaseString
str.lowercaseString

let constan = 10 as Int
let c2: Int = 10

struct MyStruct {
    var money = 100 as Int
    
    mutating func  addMoney(count : Int){
        money += count;
    }
}
func changeMoney(var myStruct: MyStruct, addMore count : Int){
    myStruct.addMoney(count)
    println("Internal money = \(myStruct.money)")
}
var myStruct = MyStruct()
//通过changeMoney增加money，内部输出110
changeMoney(myStruct, addMore: 10)
//这里money还是100
println("Outside money = \(myStruct.money)")
//直接增加money
myStruct.addMoney(10)
println("Outside money = \(myStruct.money)")

class MyClass {
    var money = 100 as Int
    
    func addMonet(count : Int){
        money += count;
    }
}
func changeMoney(myClass : MyClass, addMore count : Int){
    myClass.addMonet(count)
    println("Internal money = \(myClass.money)")
}
var myClass = MyClass()
changeMoney(myClass, addMore: 10)

myClass.money

