//
//  숫자야구.swift
//  Algo
//
//  Created by Seokho on 2020/04/08.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func findNumber(_ baseball:[Int], _ range: [Int]) -> [Int] {
    var result = [Int]()
    let findNumber = String(baseball.first!)
    
    let f_findNumber = findNumber[findNumber.startIndex]
    let m_findNumber = findNumber[findNumber.index(findNumber.startIndex, offsetBy: 1)]
    let e_findNumber = findNumber[findNumber.index(before: findNumber.endIndex)]
    
    for index in range {
        
        var strike = 0
        var ball = 0
        
        let strIndex: String = String(index)

        let f_strIndex = strIndex[strIndex.startIndex]
        let m_strIndex = strIndex[strIndex.index(strIndex.startIndex, offsetBy: 1)]
        let e_strIndex = strIndex[strIndex.index(before: strIndex.endIndex)]
        
        
        if (f_strIndex != "0" && m_strIndex != "0" && e_strIndex != "0") &&
            ( f_strIndex != m_strIndex && f_strIndex != e_strIndex && m_strIndex != e_strIndex) {
            if findNumber.contains(f_strIndex) {
                if f_strIndex == f_findNumber  {
                    strike += 1
                } else {
                    ball += 1
                }
            }
            
            if findNumber.contains(m_strIndex) {
                if  m_findNumber == m_strIndex {
                    strike += 1
                } else {
                    ball += 1
                }
            }
            
            if findNumber.contains(e_strIndex) {
                if e_strIndex == e_findNumber {
                    strike += 1
                } else {
                    ball += 1
                }
            }
        }
        
    
        if strike == baseball[1] && ball == baseball[2] {
            result.append(index)
        }

    }
    return result
}

func solution(_ baseball:[[Int]]) -> Int {
    
    var range = [Int]()
    for index in 123 ... 987 {
        range.append(index)
    }
    
    baseball.forEach { value in
        range = findNumber(value, range)
    }
    
    return range.count
}


