//
//  다리를지나는트럭.swift
//  Algo
//
//  Created by Seokho on 2020/04/06.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var onBridege = [Int]()
    var waitTrucks = truck_weights
    var cWeight = weight
    var times = [Int]()
    var result = 0
    
    while !onBridege.isEmpty || !waitTrucks.isEmpty {
        result += 1
        
        let time: Int? = times.first
        
        if time != nil && bridge_length == result - time! {
            cWeight += onBridege.removeFirst()
            times.removeFirst()
        }
        
        let truck: Int? = waitTrucks.first
        
        if truck != nil && cWeight >= truck! {
            cWeight -= truck!
            onBridege.append(truck!)
            times.append(result)
            waitTrucks.removeFirst()
        }
        
    }
    
    return result
}
