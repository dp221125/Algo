//
//  불량사용자.swift
//  Algo
//
//  Created by Seokho on 2020/04/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func dfs(_ index: Int, _ arr: [Set<String>], _ size: Int, _ temp: Set<String>) -> [Set<String>]{

    let arrSize = arr.count
    var cTemp = temp
    var result = [Set<String>]()

    if index == arrSize {
        if cTemp.count == size {
            result.append(temp)
            return result
        }
    }

    for element in arr[index] {
        if !cTemp.contains(element) {
            cTemp.insert(element)
            let a = dfs(index + 1, arr, size, cTemp)

            if !result.isEmpty {
                   a.forEach { arr in
                    if !result.contains(arr) {
                        result.append(arr)
                    }
                }
            } else {
                result.append(contentsOf: a)
            }

            cTemp.remove(element)
        }
    }


    return result
}


func solution(_ user_id:[String], _ banned_id:[String]) -> Int {

    var result = [Set<String>]()
    let userSize = user_id.count

    banned_id.forEach { str in
        var temp = Set<String>()
        let arrStr = Array(str)
        let arrSize = str.count

        for index in 0 ..< userSize {

            if user_id[index].count != arrSize { continue }

            let arrElement = Array(user_id[index])

            var flag = true
            for inIndex in 0 ..< arrElement.count {
                if arrElement[inIndex] != arrStr[inIndex] && arrStr[inIndex] != "*" {
                    flag = false
                    break
                }
            }

            if flag {
                temp.insert(user_id[index])
            }
        }

        result.append(temp)
    }

    return dfs(0, result, banned_id.count, Set<String>()).count
}
