//
//  소수찾기.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
        var array = [Bool](repeating: true, count: n + 1)
    
    for i in 2...n {
        if array[i] {
            for j in stride(from: i, through: n, by: i) {
                if i != j {
                    array[j] = false
                }
                
            }
        }
        
    }

    return array.filter { $0 }.count - 2
}
