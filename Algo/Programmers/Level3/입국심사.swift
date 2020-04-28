//
//  입국심사.swift
//  Algo
//
//  Created by Seokho on 2020/04/28.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {

    var min: Int64 = 1
    var max: Int64 = Int64(times.max()! * n)
    var mid: Int64 = 0
    var result: Int64 = 0
    
    while min <= max {
        mid = (min + max) / 2
        
        var sum: Int64 = 0
        times.forEach { time in
            sum += mid / Int64(time)
        }
        
        if sum >= n {
            result = mid
            max = mid - 1
        } else {
            min = mid + 1
        }
    }
    
    return result
}
