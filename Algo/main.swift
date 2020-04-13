//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func isEqual<T: Equatable>(_ a: T, _ b: T, isDebug: Bool = false)  {
    
    if isDebug {
        print("Expext Value: \(a)")
        print("Result Value: \(b)")
    }
    
    if a == b {
        print("Two Argument is Equal")
    } else {
        print("Two Argument isn't Equal")
    }
}
