//
//  실패율.swift
//  Algo
//
//  Created by Seokho on 2020/04/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    guard N >= 1 && N <= 500 else { return [] }
    var successUser = [Int](repeating: 0, count: N + 2)
    var stopUser = [Int](repeating: 0, count: N + 2)
    var failure = [Int: Double]()
    
    stages.forEach { stage in
        for index in 1 ... stage {
            successUser[index] += 1
        }
        stopUser[stage] += 1
    }
    
    for (index, element) in successUser[1 ..< N + 1].enumerated() {
        if element == 0 || stopUser[index + 1] == 0 {
            failure[index + 1] = 0
        } else {
            failure[index + 1] = Double(stopUser[index + 1]) / Double(element)
        }
    }
    
    return failure.keys.sorted { (value1, value2) -> Bool in
        if failure[value1]! != failure[value2]! {
            return failure[value1]! > failure[value2]!
        } else {
            return value1 < value2
        }
    }
    
}
