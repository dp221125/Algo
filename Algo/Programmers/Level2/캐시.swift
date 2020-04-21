//
//  캐시.swift
//  Algo
//
//  Created by Seokho on 2020/04/21.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var cache =  [String]()
    var time = 0
    
    if cacheSize == 0 {
        return cities.count * 5
    } else {
        cities.forEach { city in
            
            let lowerCity = city.lowercased()
            
            if let item = cache.firstIndex(of: lowerCity) {
                cache.remove(at: item)
                cache.append(lowerCity)
                time += 1
            } else {
                if cacheSize > cache.count {
                    cache.append(lowerCity)
                    time += 5
                } else {
                    cache.removeFirst()
                    cache.append(lowerCity)
                    time += 5
                }
            }
        }
        
    }
    return time
}
