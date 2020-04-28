//
//  가장 큰 수.swift
//  Algo
//
//  Created by Seokho on 2020/04/28.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {

    let sum = numbers.map { String($0) }
        .sorted(by: { $0 + $1 > $1 + $0})

    let result = sum.reduce("", +)
    return result.first! == "0" ? "0" : result
}
