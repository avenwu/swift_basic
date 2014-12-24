//
//  ProtocolTest.swift
//  IntroductionToAlgrithms
//
//  Created by aven wu on 12/24/14.
//  Copyright (c) 2014 avenwu. All rights reserved.
//

import Foundation
protocol MyProtocol{
    func sayHello()
}

extension Int: MyProtocol{
    func sayHello() {
        println("Type is Int")
    }
}

func testProtocol(){
    7.sayHello();
}