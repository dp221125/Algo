//
//  숫자게임.swift
//  Algo
//
//  Created by Seokho on 2020/04/27.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    
    let sortA = a.sorted()
    var sortB = b.sorted()
    var point = 0
    
    for aElement in sortA {
        
        for index in 0 ..< sortB.count {
            if sortB[index] > aElement {
                point += 1
                sortB.remove(at: index)
                break
            }
        }
    }
    return point
}
