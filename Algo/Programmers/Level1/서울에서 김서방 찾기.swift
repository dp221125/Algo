//
//  서울에서 김서방 찾기 .swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.map{ $0.uppercased() }.firstIndex(of: "KIM")!)에 있다"
}
