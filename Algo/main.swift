//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }

    var cArr = arr
    let min: Int! = arr.min()
    cArr.remove(at: cArr.firstIndex(of: min)!)
    return cArr
}

print(solution([4,3,2,1]))
