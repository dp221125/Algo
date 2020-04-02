//
//  핸드폰번호가리기.swift
//  Algo
//
//  Created by Seokho on 2020/04/02.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return [String](repeating: "*", count: phone_number.count - 4).joined() + phone_number[String.Index(utf16Offset: phone_number.count - 4, in: phone_number) ..< phone_number.endIndex]
}
