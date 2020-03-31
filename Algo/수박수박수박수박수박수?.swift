//
//  수박수박수박수박수박수?.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> String {
    var answer: String = ""
    
    for index in 0..<n {
        answer += index % 2 == 0 ? "수" : "박"
    }
    return answer
}
