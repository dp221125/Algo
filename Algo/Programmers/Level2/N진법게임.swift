//
//  N진법게임.swift
//  Algo
//
//  Created by Seokho on 2020/04/08.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var temp = ""
    var result = ""
    for element in stride(from: 0, to: t * m , by: 1) {
        let covert = String(element, radix: n, uppercase: true)
        temp += covert
        
    }
    
    var index = temp.index(temp.startIndex, offsetBy: p-1)
    while result.count < t {
        result += String(temp[index])
        index = temp.index(index, offsetBy: m)
    }

    return result
}
