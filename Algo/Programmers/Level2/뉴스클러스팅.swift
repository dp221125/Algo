//
//  뉴스클러스팅.swift
//  Algo
//
//  Created by Seokho on 2020/04/22.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    
    var cStr1 = [String]()
    var cStr2 = [String]()
    let sStr1 = Array(str1).map { String($0).uppercased()}
    let sStr2 = Array(str2).map { String($0).uppercased()}
    
    for element in 0 ..< str1.count - 1 {
        if (sStr1[element] + sStr1[element + 1]).isAlpha() {
            cStr1.append(sStr1[element] + sStr1[element + 1])
        }
    }
    
    
    for element in 0 ..< str2.count - 1 {
        if (sStr2[element] + sStr2[element + 1]).isAlpha() {
            cStr2.append(sStr2[element] + sStr2[element + 1])
        }
    }
    
    let total = cStr1.count + cStr2.count
    var temp = 0
    for element in cStr2 {
        if cStr1.contains(element) {
            let a = cStr1.firstIndex(of: element)!
            cStr1.remove(at: a)
            temp += 1
        }
    }

    if total == 0 {
        return 65536
    }
    return Int(Double(temp) / Double((total - temp)) * 65536)
}
extension String {
    func isAlpha() -> Bool {
        var result = true
        for element in self {
            if !element.isLetter {
                result = false
                break
            }
        }
        
        return result
    }
}
