//
//  문자열 내 p와 y의 개수.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    var pCounter = 0
    var yCounter = 0
    
    s.forEach { char in
        if char.uppercased() == "P" {
            pCounter += 1
        }
        else if char.uppercased() == "Y" {
            yCounter += 1
        }
    }

    return pCounter == yCounter
}
