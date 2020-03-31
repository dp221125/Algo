//
//  나누어떨어지는숫자배열.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    if divisor == 1 {
        return arr.sorted()
    }
    
    var result: [Int] = []
    
    arr.forEach { int in
        if int % divisor == 0 {
            result.append(int)
        }
    }
    
    if result.count == 0 {
        result.append(-1)
    }
    return result.sorted()
}
