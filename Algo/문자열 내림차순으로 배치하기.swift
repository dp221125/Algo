//
//  문자열 내림차순으로 배치하기.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}
