//
//  H-Index.swift
//  Algo
//
//  Created by Seokho on 2020/04/14.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var result = 0
    let sortArgument = citations.sorted()
    let size = sortArgument.count
    
    for (index, element) in sortArgument.enumerated() {
        if element >= size - index {
            result = size - index
            break
        }
    }
    return result
}
