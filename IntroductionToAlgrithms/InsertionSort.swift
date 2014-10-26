//
//  InsertionSort.swift
//  IntroductionToAlgrithms
//
//  Created by aven wu on 14/10/26.
//  Copyright (c) 2014年 avenwu. All rights reserved.
//

import Foundation

//sort the number array from min to max
func sortIncreace(inout arrayData:[Int]) -> [Int] {
    for var i = 1; i < arrayData.count; i++ {
        var key = arrayData[i];
        var j = i-1
        println("current data = \(key), index = \(i)")
        while j >= 0 && arrayData[j] > key {
            println("switch elements: j=\(j), data=\(arrayData[j])")
            arrayData[j+1] = arrayData[j]
            j--
        }
        arrayData[j+1] = key
    }
    return arrayData
}

//sort the inputed number array by decreasing the value
func sortDecrease(inout arrayData:[Int]) -> [Int] {
    for var i = 1; i < arrayData.count; i++ {
        var key = arrayData[i]
        var j = i-1
        while j>=0 && arrayData[j] < key {
            arrayData[j+1] = arrayData[j]
            j--
        }
        arrayData[j+1] = key
    }
    return arrayData
}

func executeSort(){
    var dataArray = [3,2,5,7,1,9]
    println("array=\(dataArray), \nsorted=\(sortIncreace(&dataArray))")
    println("array=\(dataArray), \nsorted=\(sortDecrease(&dataArray))")
}