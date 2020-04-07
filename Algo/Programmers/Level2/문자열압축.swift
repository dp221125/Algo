//
//  문자열압축.swift
//  Algo
//
//  Created by Seokho on 2020/04/07.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Int {
    
    let length = s.count
    var result: String = ""
    
    for index in 1 ... s.count / 2 {
        
        var temp = ""
        var lastCut = ""
        var sameCounter = 0
         
        for i in  stride(from: 0, to: s.count + 1, by: index) {
            
            let startIndex = s.index(s.startIndex, offsetBy: i)
            var endIndex: String.Index
            if index + i > length {
                endIndex = s.endIndex
            } else {
                endIndex = s.index(s.startIndex, offsetBy: i + index)
            }

            let cutStr = String(s[startIndex ..< endIndex])
            
            if lastCut == cutStr {
                sameCounter += 1
            } else {
                
                if lastCut == "" {
                    lastCut = cutStr
                    sameCounter += 1
                }
                else if sameCounter > 0 {
                    if sameCounter == 1 {
                         temp += lastCut
                    } else {
                         temp += "\(sameCounter)\(lastCut)"
                    }
                   
                    lastCut = cutStr
                    sameCounter = 1
                }
                

            }
            
            if i + index >= s.count + 1 {
                temp += lastCut
            }
        }
        
        
        if result.count > temp.count {
            result = temp
        } else if result == "" {
            result = temp
        }
     
    
        
    }
    
    return result.count
}
