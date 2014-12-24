//
//  EnumTest.swift
//  IntroductionToAlgrithms
//
//  Created by aven wu on 12/24/14.
//  Copyright (c) 2014 avenwu. All rights reserved.
//

import Foundation
enum Hello{
    case A(String)
    case B(String, String)
}
func testEnumDefine(){
    let a = Hello.A("A")
    let b = Hello.B("A", "B")
    switch b {
    case let .A(aa):
        println("Hello \(aa)")
    case let .B(aa, bb):
        println("Hello \(aa),\(bb)")
    }
}