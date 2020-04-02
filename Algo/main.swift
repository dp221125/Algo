//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
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

    for (i,s) in stage[1..<N+1].enumerated() {
        failure.append((Double(pendingUser[i+1]) / Double(s),i+1))
    }

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
}
