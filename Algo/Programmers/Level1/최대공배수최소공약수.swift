//
//  최대공배수최소공약수.swift
//  Algo
//
//  Created by Seokho on 2020/03/31.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcd = GCD(n,m)
    let lcm = n * m / gcd
    return [gcd, lcm]
}

func GCD(_ n: Int, _ m: Int) -> Int {
    let remain = n % m
    if remain == 0 {
        return m
    }
    else {
        return GCD(m, remain)
    }
}

print(GCD(4, 7))
