//
//  약수의합.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    
    if n <= 1 {
        return n
    }
    
    var answer = 0
    
    for index in 1 ... n/2{
        if n % index == 0{
            answer += index
        }
    }
    return answer + n
}
