//
//  스킬트리.swift
//  Algo
//
//  Created by Seokho on 2020/04/03.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    
    var results = 0
    
    skill_trees.forEach { skill_tree in
        var learned: String =  .init()
        skill_tree.forEach { char in
            if skill.contains(char) {
                learned += String(char)
            }
        }
        
        if skill.starts(with: learned) {
            results += 1
        }
    }
    
    return results
}
