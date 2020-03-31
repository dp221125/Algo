//
//  가운데글자가져오기.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    var result: String = ""
    let startIndex = s.startIndex
    
    let index = s.index(startIndex, offsetBy: s.count / 2)
    if s.count % 2 == 0 {
        result += String(s[s.index(before: index) ... index])
        
    } else {
        result += String(s[index])
    }
    
    return result
}
