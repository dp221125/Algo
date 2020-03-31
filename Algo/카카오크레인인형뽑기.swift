//
//  카카오크레인인형뽑기.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var result = [Int]()
    var copyBoard = board
    var count = 0
    
    for index in moves {
        for (inIndex, element) in copyBoard.enumerated() {
            if element[index - 1] != 0 {
                result.append(element[index - 1])
                copyBoard[inIndex][index - 1] = 0
                break
            }
        }
        
        if result.count >= 2 && result[result.count - 1] == result[result.count - 2] {
            result.popLast()
            result.popLast()
            count += 2
        }
    }
    return count
}
