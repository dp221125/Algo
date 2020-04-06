//
//  프린터.swift
//  Algo
//
//  Created by Seokho on 2020/04/06.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    //인덱스랑 우선 순위가 같이 저장되는 큐
    var queue: [(Int, Int)] = []
    //우선순위큐( 우선순위 큐는 기본적으로 최대힙이므로 내림차순으로 정렬한다
    var priorityQueue = priorities.sorted(by : >)
    //결과적으로 리턴해줘야하는 값
    var result = 0
    
    //우선순위를 순회하면서 큐에 인덱스와 함께 우선순위를 저장한다.
    priorities.enumerated().forEach { (index, property) in
        queue.append((index, property))
    }
    
    //큐가 비어있을 때까지 순회를 한다.
    while !queue.isEmpty {
        
        // 큐의 맨 앞에 있는 우선순위와 우선순위큐의 첫번째 값을 비교한다.
        if queue.first!.1 == priorityQueue.first! {
            
            //큐의 맨앞에 있는 값의 인덱스가 내가 요청한 문서의 인덱스인지 확인한다.
            if queue.first!.0  == location {
                return result + 1
            }
            
            //우선순위의 값과 일치하므로 큐애 우선순위 큐에서 하나를 pop한다.
            result += 1
            queue.removeFirst()
            priorityQueue.removeFirst()
        } else {
            // 더 높은 우선순위의 값이 존재하므로 하나를 꺼내 맨 뒤에 push 한다.
            queue.append(queue.removeFirst())
        }
    }
    
    return result
}
