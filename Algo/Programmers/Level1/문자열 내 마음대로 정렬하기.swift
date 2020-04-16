//
//  문자열 내 마음대로 정렬하기.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted {
        let first: Character = $0[$0.index($0.startIndex, offsetBy: n)]
        let second: Character = $1[$1.index($1.startIndex, offsetBy: n)]
        
        if first == second {
            return $0 < $1
        } else {
            return first < second
        }
    }
}
