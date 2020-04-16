//
//  소수찾기.swift
//  Algo
//
//  Created by Seokho on 2020/04/16.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ numbers:String) -> Int {
    
    var result = Set<Int>()
    let convert = Array(numbers).map { Int(String($0))!}
    
    for index in 1 ... convert.count {
        perm(arr: convert, depth: 0, target: index, result: &result)
    }

    return result.count
}

func perm(arr: [Int], depth: Int, target: Int, result: inout Set<Int>)  {

    if depth == target {
        let number = getNumber(arr: arr, target: target)
        if isPrime(num: number) {
            result.insert(number)
        }
    } else {
        for index in depth ..< arr.count {
            var copyArr = arr
            let temp = arr[index]
            copyArr[index] = arr[depth]
            copyArr[depth] = temp
            perm(arr: copyArr, depth: depth + 1, target: target, result: &result)
        }
    }
}

func getNumber(arr: [Int], target: Int) -> Int{
 
    var result = 0

    for index in 0 ..< target {
        let a = pow(Double(10), Double(target - 1 - index))
        result += arr[index] * Int(a)
    }
    
    return result
}

func isPrime(num: Int) -> Bool {
    var result: Bool = true
    
    if num < 2 {
        result = false
    } else if num > 2 {
        for i in 2 ..< num {
            if num % i == 0 {
                result = false
                break
            }
        }
    }
    return result
}
