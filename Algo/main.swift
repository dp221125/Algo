//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var answer = [String](repeating: "", count: n)
    var bitCalc = [Int]()
    
    for index in 0 ..< n {
        bitCalc.append(arr1[index] | arr2[index])
        
    }
    
    for index in 0 ..< n {
        for _ in 0 ..< n{
            answer[index].insert(bitCalc[index] % 2 == 0 ? " " : "#", at: answer[index].startIndex)
            bitCalc[index] >>= 1
        }
    }
    return answer 
}

print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
