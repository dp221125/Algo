//
//  섬연결하기.swift
//  Algo
//
//  Created by Seokho on 2020/05/07.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    
    var result = 0
    let sortCost = costs.sorted { $0[2] < $1[2] }
    var visited = [Bool](repeating: false, count: n)
    
    visited[0] = true
    
    while visited.trueCounter() != n {
        for cost in sortCost {
            let first = cost.first!
            let second = cost[1]
            let connect = cost.last!
            
            if visited[first] || visited[second] {
                if visited[first] && visited[second] { continue }
                else {
                    visited[first] = true
                    visited[second] = true
                    result += connect
                    break
                }
            }
        }
    }
    
    return result
}
extension Array where Element == Bool {
    func trueCounter() -> Int {
        self.filter { $0 }.count
    }
}
