//
//  단어변환.swift
//  Algo
//
//  Created by Seokho on 2020/04/28.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func dfs(_ depth: Int, _ begin: String, _ target: String, _ words: [String], _ visited: inout [Bool], _ result: inout Int) {
    
    for index in 0 ..< words.count {
        var counter = 0
        for element in 0 ..< words[index].count {
            if !visited[index] && Array(begin)[element] != Array(words[index])[element] {
                counter += 1
            }
        }
        
        if counter == 1 {
            if target == words[index] {
                result = depth + 1
            }
            
            visited[index] = true
            dfs(depth + 1, words[index], target, words, &visited, &result)
            
            visited[index] = false
            
        }
    }
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    if !words.contains(target) {
        return 0
    }
    var visted = [Bool](repeating: false, count: words.count)
    var result = 0
    
    dfs(0, begin, target,words, &visted, &result)
    
    return result
}
