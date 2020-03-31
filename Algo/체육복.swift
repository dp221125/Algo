//
//  체육복.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var student = [Int](repeating: 1, count: n)
    var answer = 0

    for index in 0 ..< lost.count {
        student[lost[index] - 1] -= 1
    }
    
    for index in 0 ..< reserve.count {
        student[reserve[index] - 1] += 1
    }
    
    for index in 0 ..< student.count {
        
        if index > 0 && student[index] == 2 && student[index - 1] == 0 {
            student[index] -= 1
            student[index - 1] += 1
        }
        else if index + 1 < student.count && student[index] == 2 && student[index + 1] == 0 {
            student[index] -= 1
            student[index + 1] += 1
        }
    }
    
    for index in 0 ..< student.count {
        if student[index] >= 1 {
            answer += 1
        }
    }

    return answer
}
