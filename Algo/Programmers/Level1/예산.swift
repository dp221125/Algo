//
//  예산.swift
//  Algo
//
//  Created by Seokho on 2020/04/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum = 0
    var answer = 0
    let copyD = d.sorted()
   
    copyD.forEach { int in
        if sum + int <= budget {
            sum += int
            answer += 1
        }
    }
    
    return answer
}
