//
//  베스트앨범.swift
//  Algo
//
//  Created by Seokho on 2020/04/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {

    var dic = [String: [[Int]]]()
    
    genres.enumerated().forEach { (index, element) in
        if dic[element] == nil {
            dic[element] = [[index, plays[index]]]
        } else {
            dic[element]! += [[index, plays[index]]]
        }
    }
    
    return Array(dic.values)
            .sorted {
                ($0.reduce(0) { $0 + $1[1] }) > ($1.reduce(0) { $0 + $1[1] })
            }
            .flatMap {
                $0.sorted { $0[1] > $1[1] }.map { $0[0] }.prefix(2)
            }
}
