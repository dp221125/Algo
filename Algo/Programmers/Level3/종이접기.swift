//
//  종이접기.swift
//  Algo
//
//  Created by Seokho on 2020/04/27.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    if n == 1 { return [0] }
    
    var paper: [Bool] = [false]
    
    for _ in 2...n {
        
        let right = paper.map {!$0}.reversed()
        paper.append(false)
        paper += right
    }
    
    return paper.map { $0 == false ? 0 : 1}
}
