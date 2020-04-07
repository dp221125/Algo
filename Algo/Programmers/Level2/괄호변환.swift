//
//  괄호변환.swift
//  Algo
//
//  Created by Seokho on 2020/04/07.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ p:String) -> String {
    
    var lCounter = 0
    var rCounter = 0
    var index = 0
    var result = ""
    
    if isRight(s: p) || p == ""{
        return p
    }
    
    for element in Array(p).map({ String($0) }) {
        if element == "(" {
            lCounter += 1
        } else if element == ")" {
            rCounter += 1
        }
        
        index += 1
        if lCounter == rCounter {
            break
        }
    }
    
    let uIndex = p.index(p.startIndex, offsetBy: lCounter + rCounter - 1)
    let pIndex = p.index(after: uIndex)
    
    let u = String(p[p.startIndex ... uIndex])
    var v: String = ""
    
    if lCounter + rCounter != p.count {
        v = String(p[pIndex ..< p.endIndex])
    }
    
    if isRight(s: u) {
        result += u
        result += solution(v)
    } else {
        result += "("
        result += solution(v)
        result += ")"
        
        let str = u[u.index(after: u.startIndex) ..< u.index(before: u.endIndex)]

        for i in str {
            if i == "(" {
                result += ")"
            } else {
                result += "("
            }
        }
    }
    return result
}

func isRight(s: String) -> Bool {
    var temp = [String]()
    
    for element in Array(s).map({ String($0) }) {
        if element == "(" {
            temp.append(element)
        } else {
            if temp.isEmpty {
                return false
            }
            temp.removeFirst()
        }
    }
    
    if temp.isEmpty { return true }
    
    return false
}
