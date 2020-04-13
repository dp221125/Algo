//
//  카카오징검다리건너기.swift
//  Algo
//
//  Created by Seokho on 2020/04/13.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ stones: [Int], _ k: Int) -> Int {
        
    var max = stones[0 ..< k].max()!
    var maxIndex: Int! = stones.firstIndex(of: max)

    while stones.count >= maxIndex + k {
        var temp = -1 //인덱스
        var temp2 = -1 // 숫자
        for index in maxIndex ..<  maxIndex + k {
            if temp2 < stones[index] {
                temp = index
                temp2 = stones[index]
            }
        }

        max = min(temp2, max)
        maxIndex = temp + 1
    }
    
    return max
}
