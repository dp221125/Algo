//
//  쇠막대기.swift
//  Algo
//
//  Created by Seokho on 2020/04/13.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ arrangement:String) -> Int {
    
    var stack = [Character]()
    var answer: Int = 0
    let cArrangement = arrangement.replacingOccurrences(of: "()", with: "L")
    
    Array(cArrangement).forEach { char in
        
        if char == "L" {
            answer += stack.count
        }
        else if char == "(" {
            stack.append(char)
        } else {
            stack.removeLast()
            answer += 1
        }
    }
    
    return answer
}
