//
//  main.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func isEqual<T: Equatable>(_ a: T, _ b: T)  {
    if a == b {
        print("Two Variable is Equal")
    } else {
        print("Expext Value: \(a)")
        print("Result Value: \(b)")
        print("Two Variable isn't Equal")
    }
}
