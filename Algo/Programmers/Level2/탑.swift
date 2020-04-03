//
//  탑.swift
//  Algo
//
//  Created by Seokho on 2020/04/03.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ heights:[Int]) -> [Int] {
    
    let total = heights.count - 1
    var result = [Int]()
    
    for (index, element) in heights.reversed().enumerated() {
        let realIndex = total - index
        
        for index in stride(from: realIndex, to: -1, by: -1) {
            if heights[index] > element {
                result.insert(index + 1, at: 0)
                break
            }
        }
        if result.count != index + 1 {
            result.insert(0, at: 0)
        }
    }
    return result
}
