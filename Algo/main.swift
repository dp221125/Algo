//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(sqrt(Double(n)) == floor(sqrt(Double(n))) ? Int(pow(sqrt(Double(n)) + 1, 2)) : -1)
}

print(solution(121))
