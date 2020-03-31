//
//  이상한문자만들기.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    
    var result = ""
    var index = 0
    
    for char in Array(s) {
        
        if char == " " {
            result += " "
            index = 0
        } else {
            if index % 2 == 0 {
                result += char.uppercased()
            } else {
                result += char.lowercased()
            }
            index += 1
        }
    }
    return result
}
