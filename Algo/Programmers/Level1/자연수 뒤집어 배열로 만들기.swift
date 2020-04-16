//
//  자연수 뒤집어 배열로 만들기.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    return Array((String(String(n).reversed()))).map { Int(String($0))! }
}
