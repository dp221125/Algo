//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func isEqual<T: Equatable>(_ a: T, _ b: T, isDebug: Bool = false)  {
    
    if isDebug {
        print("Expext Value: \(a)")
        print("Result Value: \(b)")
    }
    
    if a == b {
        print("Two Argument is Equal")
    } else {
        print("Two Argument isn't Equal")
    }
}


func solution(_ clothes:[[String]]) -> Int {
    
    var dic = [String: Int]()
    
    clothes.forEach { str in
        if let _ = dic[str.last!] {
            dic[str.last!]! += 1
        } else {
            dic[str.last!] = 1
        }
    }

    return  dic.map { $0.value + 1 }.reduce(1, *) - 1
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
