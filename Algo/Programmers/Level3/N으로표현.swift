//
//  N으로표현.swift
//  Algo
//
//  Created by Seokho on 2020/05/06.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func dfs(_ N: Int, _ number: Int, _ depth: Int, _ temp: Int, _ answer: inout Int)  {
    if depth > 8 {
        return
    }

    if temp == number && (answer > depth || answer == -1) {
        answer = depth
    }

    var calc = 0

    for index in 0 ..< 8 {
        calc = calc * 10 + N
        dfs(N, number, depth + 1 + index, temp + calc, &answer)
        dfs(N, number, depth + 1 + index, temp - calc, &answer)
        dfs(N, number, depth + 1 + index, temp * calc, &answer)
        dfs(N, number, depth + 1 + index, temp / calc, &answer)
    }
}
func solution(_ N:Int, _ number:Int) -> Int {

    var answer = -1
    dfs(N, number, 0, 0, &answer)
    return answer
}
