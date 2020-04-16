//
//  두 정수 사이의 합.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    
    if a == b {
        return Int64(a)
    }
    
    var result: Int64 = 0
    
    let min = a > b ? b : a
    let max = min == a ? b : a
    
    for index in min ... max {
        result += Int64(index)
    }
    return result
}
