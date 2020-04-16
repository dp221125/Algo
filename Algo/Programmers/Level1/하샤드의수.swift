//
//  하샤드의수.swift
//  Algo
//
//  Created by Seokho on 2020/04/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ x:Int) -> Bool {
    return x % String(x).reduce(0) { $0 + Int(String($1))!} == 0
}

print(solution(10))
