//
//  기지국설치.swift
//  Algo
//
//  Created by Seokho on 2020/04/27.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    
    var distance = [Int]()
    var answer = 0
    
    for index in 1 ..< stations.count {
        distance.append((stations[index] - w - 1) - (stations[index - 1] + w) )
    }
    
    distance.append(stations.first! - w - 1)
    distance.append(n - (stations.last! + w))
    
    for element in distance {
        if element <= 0 {
            continue
        }
        
        var need =  element / ((w * 2) + 1)
        let remainNeed =  element % ((w * 2) + 1)
        
        if remainNeed != 0 {
            need += 1
        }
        
        answer += need
    }
    return answer
}
