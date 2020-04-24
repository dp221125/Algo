//
//  네트워크.swift
//  Algo
//
//  Created by Seokho on 2020/04/25.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func dfs(_ depth: Int, _ maxDepth: Int, arr: [[Int]], _ visit: inout [Bool]) {
    
    visit[depth] = true

    for index in 0 ..< maxDepth {
        if !visit[index] && arr[depth][index] == 1 {
            dfs(index, maxDepth, arr: arr, &visit)
        }
    }
}

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited = [Bool](repeating: false, count: n)
    var answer = 0
    for index in 0 ..< n {
        if !visited[index] {
            answer += 1
            dfs(index, n, arr: computers, &visited)
        }
    }
    
    return answer
}
