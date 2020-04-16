//
//  자릿수더하기.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var copyN = n
    var answer:Int = 0

    while(copyN != 0) {
        answer += copyN % 10
        copyN =  copyN / 10
    }
    return answer
}
