//
//  카펫.swift
//  Algo
//
//  Created by Seokho on 2020/04/17.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ brown:Int, _ red:Int) -> [Int] {
    
    var answer = [(Int, Int)]()
    
    let area = brown + red
    
    for height in 1 ... area / 2 {
        let width_Double = Double(area) / Double(height)
        
        if floor(width_Double) != width_Double {
            continue
        }
        
        let width: Int = Int(width_Double)
        if height > width { continue }
        
        let redArea = (width - 2) * (height - 2)
        let brownArea = area - red
        
        if redArea == red && brownArea == brown {
            answer.append((width, height))
            break
        }
    }

    return [answer.first!.0, answer.first!.1]
}
