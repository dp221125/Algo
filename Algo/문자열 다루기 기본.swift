//
//  문자열 다루기 기본.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && (Int(s) == nil ? false : true)
}
