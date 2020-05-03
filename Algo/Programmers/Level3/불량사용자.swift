//
//  불량사용자.swift
//  Algo
//
//  Created by Seokho on 2020/04/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

//func dfs(_ index: Int, _ arr: [Set<String>], _ size: Int, _ temp: Set<String>) -> [Set<String>]{
//
//    let arrSize = arr.count
//    var cTemp = temp
//    var result = [Set<String>]()
//
//    if index == arrSize {
//        if cTemp.count == size {
//            result.append(temp)
//            return result
//        }
//    }
//
//    for element in arr[index] {
//        if !cTemp.contains(element) {
//            cTemp.insert(element)
//            let a = dfs(index + 1, arr, size, cTemp)
//
//            if !result.isEmpty {
//                   a.forEach { arr in
//                    if !result.contains(arr) {
//                        result.append(arr)
//                    }
//                }
//            } else {
//                result.append(contentsOf: a)
//            }
//
//            cTemp.remove(element)
//        }
//    }
//
//
//    return result
//}
//
//
//func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
//
//    var result = [Set<String>]()
//    let userSize = user_id.count
//
//    banned_id.forEach { str in
//        var temp = Set<String>()
//        let arrStr = Array(str)
//        let arrSize = str.count
//
//        for index in 0 ..< userSize {
//
//            if user_id[index].count != arrSize { continue }
//
//            let arrElement = Array(user_id[index])
//
//            var flag = true
//            for inIndex in 0 ..< arrElement.count {
//                if arrElement[inIndex] != arrStr[inIndex] && arrStr[inIndex] != "*" {
//                    flag = false
//                    break
//                }
//            }
//
//            if flag {
//                temp.insert(user_id[index])
//            }
//        }
//
//        result.append(temp)
//    }
//
//    return dfs(0, result, banned_id.count, Set<String>()).count
//}

func dfs(_ depth: Int, _ maxDepth: Int,_ banID: [Set<String>], _ temp: inout Set<String>, _ result: inout [Set<String>]) {
    
    if depth == maxDepth {
        if temp.count == maxDepth  {
            if !result.contains(temp) {
                result.append(temp)
            }
            return
        }
    }
    
    for element in banID[depth] {
        if !temp.contains(element) {
            temp.insert(element)
            dfs(depth + 1, maxDepth, banID, &temp, &result)
            temp.remove(element)
        }
    }
    
    
}
func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    
    var banList = [Set<String>]()
    
    banned_id.forEach { ban in
        var temp = Set<String>()
        let banSize = ban.count
        let convertBan = Array(ban)
        
        for (index, element) in user_id.enumerated() {
            
            if user_id[index].count != banSize { continue }
            
            var flag = true
            for (c_index, c_element) in Array(element).enumerated() {
                if convertBan[c_index] != c_element && convertBan[c_index] != "*" {
                    flag = false
                    break
                }
            }
            
            if flag {
                temp.insert(user_id[index])
            }
            
        }
        
        banList.append(temp)
    }
    
    var temp: Set<String> = .init()
    var result = [Set<String>]()
    dfs(0, banList.count, banList, &temp, &result)
    
    return result.count
}
