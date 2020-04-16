//
//  K번쨰수.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer = [Int]()
    
    commands.forEach { item in
        answer.append(array[item[0]-1...item[1]-1].sorted()[item[2]-1])
    }
    return answer
}
