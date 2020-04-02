//
//  x간격만큼있는n개의숫자.swift
//  Algo
//
//  Created by Seokho on 2020/04/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var result = [Int64]()
    
    if x == 0 {
        return [Int64](repeating: 0, count: n)
    }

    for index in stride(from: Int64(0), to: Int64(n * x + (x > 0 ? 1 : -1)), by: Int64.Stride(Int64(x))) {
        if index != 0 {
            result.append(index)
        }
    }
    return result
}
