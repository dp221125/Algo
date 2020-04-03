//
//  solution.swift
//  Algo
//
//  Created by Seokho on 2020/03/30.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    
    var answer: String = ""
    var totalDay: Int = b
    var monthDay: Int = 0
    
    
    for index in 1..<a {
        
        if ( index < 8 && index % 2 == 1 ) || ( index >= 8 && index % 2 == 0 ){
            monthDay = 31
        }
        else if index == 2 {
            monthDay = 29
        } else {
            monthDay = 30
        }
        
        totalDay += monthDay
    }
    
    switch totalDay % 7 {
    case 0:
        answer = "THU"
        break;
    case 1:
        answer = "FRI"
        break;
    case 2:
        answer = "SAT"
        break;
    case 3:
        answer = "SUN"
        break;
    case 4:
        answer = "MON"
        break;
    case 5:
        answer = "TUE"
        break;
    case 6:
        answer = "WED"
        break;
    default:
        answer = ""
    }
    
    
    return answer
}

