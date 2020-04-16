//
//  평균구하기.swift
//  Algo
//
//  Created by Seokho on 2020/04/01.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return arr.map { Double($0)}.reduce(0, +) / Double(arr.count)
}
