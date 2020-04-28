//
//  디스크 컨트롤러.swift
//  Algo
//
//  Created by Seokho on 2020/04/28.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    let jobSize = jobs.count
    var sortedJob = jobs.sorted { (job, job2) -> Bool in
        if job.last! == job2.last! {
            return job.first! < job2.first!
        } else {
            return job.last! < job2.last!
        }
    }
    
    var time = 0
    var result = 0
    
    while !sortedJob.isEmpty {
        for (index, element) in sortedJob.enumerated() {
            if element.first! <= time {
                time += element.last!
                result += time - element.first!
                sortedJob.remove(at: index)
                break
            }
            
            if index == sortedJob.count - 1 {
                time += 1
            }
        }
    }
    
    return result / jobSize
}
