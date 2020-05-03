//
//  여행경로.swift
//  Algo
//
//  Created by Seokho on 2020/05/03.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func dfs(_ depth: Int,_ maxDepth: Int, _ tickets: [[String]],_ visited: inout [Bool], _ result: inout [String]) {
    

    let start = tickets[depth].last!
    result.append(start)
        
    for (index, element) in tickets.enumerated() {
        let end = element.first!
        
        if start == end && !visited[index] {
            visited[index] = true
            dfs(index, maxDepth ,tickets, &visited, &result)
            if result.count != maxDepth {
                result.removeLast()
                visited[index] = false
            } else {
                break
            }
        }
    }

}

func solution(_ tickets:[[String]]) -> [String] {
    
    let size = tickets.count
    
    let copyTicket = tickets.sorted { $0.last! < $1.last! }
    print(copyTicket)
    var result = [String]()
    var visited = [Bool](repeating: false, count: size)
    for (index, element) in copyTicket.enumerated() {
        let icn = element.first!
        
        if icn == "ICN" {
            result = []
            visited = [Bool](repeating: false, count: size)
            visited[index] = true
            result.append(icn)
            dfs(index, size + 1 ,copyTicket, &visited, &result)
            if result.count == size + 1 {
                break
            }
        }
    }
    
    return result
}
