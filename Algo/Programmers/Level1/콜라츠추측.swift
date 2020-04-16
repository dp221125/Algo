//
//  콜라츠추측.swift
//  Algo
//
//  Created by Seokho on 2020/04/01.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ num:Int) -> Int {
    
    var result = num
    var count = 0
    
    //입력값이 1이되면 반복 종료
    while(result != 1){
        if(result % 2 == 0){
            result = result / 2
        }else {
            result = (result * 3) + 1
        }
        
        count += 1
        
        if(count > 500){
            count = -1;
            break
        }
    }
    return count
}
