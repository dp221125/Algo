//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return arr.map { Double($0)}.reduce(0, +) / Double(arr.count)
}
print(solution([1,2,3,4]))
