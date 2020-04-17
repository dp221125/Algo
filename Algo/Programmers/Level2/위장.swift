//
//  위장.swift
//  Algo
//
//  Created by Seokho on 2020/04/17.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

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
