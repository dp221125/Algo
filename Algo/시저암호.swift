//
//  시저암호.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    return Array(s).map { char  in
        if char == " " {
            return String(char)
        } else {
            if char.isUppercase {

                return String(UnicodeScalar(min((char.asciiValue! + UInt8(n)), (char.asciiValue! + UInt8(n)) % 91 + 65)))
            }
            return String(UnicodeScalar(min((char.asciiValue! + UInt8(n)), (char.asciiValue! + UInt8(n)) % 123 + 97)))
        }
    }.joined()
}
