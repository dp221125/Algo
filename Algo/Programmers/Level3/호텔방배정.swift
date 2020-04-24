//
//  호텔방배정.swift
//  Algo
//
//  Created by Seokho on 2020/04/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func findRoom(_ dic: inout [Int64: Int64], _ room: Int64) -> Int64 {

    if dic[room] == nil {
        dic[room] = room + 1
        return room
    }

    let result = findRoom(&dic, dic[room]!)
    dic[room] = result + 1
    return result
}

func solution(_ k:Int64, _ room_number:[Int64]) -> [Int64] {

    var dic = [Int64: Int64]()
    var result = [Int64]()

    room_number.forEach { want in
        let findResult = findRoom(&dic, want)
        result.append(findResult)
    }

    return result
}
