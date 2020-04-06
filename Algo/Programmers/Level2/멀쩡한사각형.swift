//
//  멀쩡한사각형.swift
//  Algo
//
//  Created by Seokho on 2020/04/06.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func GCD(_ n: Int64, _ m: Int64) -> Int64 {
    let remain: Int64 = n % m
    if remain == 0 {
        return m
    }
    else {
        return GCD(m, remain)
    }
}

func solution(_ w:Int, _ h:Int) -> Int64{

    let w64 = Int64(w)
    let h64 = Int64(h)

    return w64 * h64 - (w64 + h64 - GCD(w64, h64))
}
