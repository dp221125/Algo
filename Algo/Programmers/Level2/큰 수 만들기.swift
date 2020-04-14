//
//  큰 수 만들기.swift
//  Algo
//
//  Created by Seokho on 2020/04/14.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var temp = [String]()
    var result = ""
    var cK = k
    
    for (index, num) in Array(number).enumerated() {
        
        while !temp.isEmpty && Int(temp.last!)! < Int(String(num))! && cK > 0 {
            temp.removeLast()
            cK -= 1
        }
        
        if cK == 0 {
            let sindex = number.index(number.startIndex, offsetBy: index)
            let str = String(number[sindex ..< number.endIndex])
            temp.append(str)
            break
        }
        
        temp.append(String(num))
    }
    
    
    if cK > 0 {
        result = temp[0 ..< temp.count - cK].joined()
    } else {
        result = temp.joined()
    }
    
    return result
}
