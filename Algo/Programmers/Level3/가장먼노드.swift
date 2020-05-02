//
//  가장먼노드.swift
//  Algo
//
//  Created by Seokho on 2020/05/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func findNode(_ size: Int, _ index: Int, _ visited: inout [Int], board: [[Int]]) {
    
    visited[index] = 1
    
    var queue = [Int]()
    queue.append(index)
    
    while !queue.isEmpty {
        
        guard let element = queue.first else { break }
        queue.removeFirst()
        
        for index in board[element] where visited[index] < 1 {
            queue.append(index)
            visited[index] = visited[element] + 1
        }
        
       
     }
}

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    
    
    var board = [[Int]](repeating: [Int](), count: n + 1)
    var visited = [Int](repeating: 0, count: n + 1)
    
    for node in edge {
        let index: (first: Int, second: Int) = (node.first!, node.last!)
        board[index.first].append(index.second)
        board[index.second].append(index.first)
    }
    
    findNode(n, 1, &visited, board: board)
   
    visited.sort()
    
    return visited.filter { visited.last! == $0 }.count
}

