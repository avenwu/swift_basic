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
count(s)
let chinese = "好a"
count(chinese)
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
    init() {
        
    }
    init(money : Int) {
        self.money = money
    }
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

//操作符重载
postfix func ++ (inout myClass : MyClass) -> MyClass {
    var newClass = MyClass(money : myClass.money)
    myClass.money++
    return newClass
}

prefix func ++ (inout myClass : MyClass) -> MyClass {
    myClass.money++
    var newClass = MyClass(money : myClass.money)
    return newClass
}

let newClass = myClass++
myClass
let newClass2 = ++myClass

var a = 3
a++
++a
func + (left : MyClass, right : MyClass) -> MyClass {
    var newClass = MyClass(money : left.money + right.money)
    return newClass
}
newClass+newClass2

//switch示例
enum Direction: String {
    case EAST = "东"
    case SOUTH = "南"
    case WEST = "西"
    case NORTH = "北"
}

struct Path {
    var direction : Direction
    var miles : Int
}

let path1 = Path(direction: .EAST, miles: 100)
let path2 = Path(direction: Direction.WEST, miles: 200)


func printPath(path : Path) {
    switch path.direction {
    case Direction.EAST:
        println("向东\(path.miles)")
    case .WEST where path.miles > 150:
        println("向西超出150范围")
    case .WEST:
        println("向西\(path.miles)")
    default:
        println("方向：\(path.direction), 距离：\(path.miles)")
    }
}

printPath(path1)
printPath(path2)
printPath(Path(direction: .WEST, miles: 90))

let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
let blurView = UIVisualEffectView(effect: blurEffect)
blurView.frame.size = CGSize(width: 30, height: 30)

//方法定义
//1.
func hello(n : String) -> String {
    return "Hello \(n)"
}

hello("Frank")
//2.扩展方法名name
func hello2(name n:String) -> String {
    return "Hello \(n)"
}
hello2(name:"Frank")

//3.形参和扩展方法名一样，name
func hello3(#name:String) -> String {
    return "Hello \(name)"
}
hello3(name: "Franck")

//4.为形参设置默认值
func hello4(name: String = "Franck") -> String {
    return "Hello \(name)"
}
hello4()

//5.声明变量形参
func hello5(var name: String = "Frank") -> String {
    return "Hello \(name)"
}
hello5()

//6.方法参数
func sayHello(name:String) ->String {
    return "Hello \(name)"
}
func hello6(name:String, f:(String)->String) -> String {
    return f(name)
}
hello6("Frank", sayHello)

//7.闭包
hello6("Frank", {(name:String)->String in
    return "Hello \(name)"
    })

//8.闭包简写，省略参数方法的参数类型
hello6("Frank", {name in
    return "Hello \(name)"
})

//9.闭包简写,省略参数方法的声明
hello6("Frank", {
    return "Hello \($0)"
})


