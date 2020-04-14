//
//  타겟넘버.swift
//  Algo
//
//  Created by Seokho on 2020/04/14.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func searchNode(_ number: [Int], _ depth: Int, _ target: Int, _ value: Int) -> Int{
    
    var result = 0
    
    if depth == number.count {
        if target == value {
            return 1
        } else {
            return 0
        }
    }
    
    result += searchNode(number, depth + 1, target, value + number[depth])
    result += searchNode(number, depth + 1, target, value - number[depth])
    
    return result
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    return searchNode(numbers,0, target, 0)
}
