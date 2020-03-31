//
//  정수내림차순으로배열하기.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(String(n).sorted()).reversed()))!
}
