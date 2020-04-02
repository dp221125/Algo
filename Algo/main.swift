//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

/*
 var stage = Array(repeating: 0, count: N+2)
 var pendingUser = Array(repeating: 0, count: N+2)
 var failure: [(Double, Int)] = Array()
 var result: [Int] = []
 for s in stages {
 for i in 1...s {
 stage[i] += 1
 }
 pendingUser[s] += 1
 }
 
 print(stage)
 print(pendingUser)
 
 print(failure)
 for (i,s) in stage[1..<N+1].enumerated() {
 failure.append((Double(pendingUser[i+1]) / Double(s),i+1))
 print(failure)
 }
 
 print(failure)
 
 failure.sort { a,b in
 if a.0 != b.0 {
 return a.0 > b.0
 } else {
 return a.1 < b.1
 }
 }
 
 for f in failure {
 result.append(f.1)
 }
 
 return result
 */

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
