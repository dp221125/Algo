//
//  튜플.swift
//  Algo
//
//  Created by Seokho on 2020/04/16.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var result = [Int]()
    
    let convertS = s.replacingOccurrences(of: "{{", with: "").replacingOccurrences(of: "}}", with: "").components(separatedBy: "},{").map { $0.split(separator: ",") }.sorted { $0.count < $1.count}
    
    convertS.forEach { value in
        value.forEach { str in
            if result.isEmpty {
                result.append(Int(String(str))!)
            } else {
                if !result.contains(Int(String(str))!) {
                    result.append(Int(String(str))!)
                }
            }
        }
    }
    
    return result
}
