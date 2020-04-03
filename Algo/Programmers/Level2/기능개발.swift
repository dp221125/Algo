//
//  기능개발.swift
//  Algo
//
//  Created by Seokho on 2020/04/03.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var remains: [Int] = []
    
    progresses.enumerated().forEach { (index, progress) in
        let remain = (100 - progress) / speeds[index]
        if (100 - progress) % speeds[index] > 0 {
            remains.append(remain + 1)
        } else {
            remains.append(remain)
        }
        print(progress % speeds[index])
    }
    
    var lastOuput = -10000
    var result: [Int] = []
    
    print(remains)
    remains.enumerated().forEach { (index, element) in

        if lastOuput > element {
            result[result.count - 1] += 1
        } else {
            lastOuput = element
            result.append(1)
        }

    }
    return result
}
print(solution([0,0,0,0], [100,50,34,25]))
