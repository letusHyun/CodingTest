//
//  1158.swift
//  요세푸스 문제(실버4)
//
//  Created by SeokHyun on 2023/07/16.
//

import Foundation

struct Queue<T> {
  private var queue = [T]()
  private var head = 0
  var count: Int {
    queue.count - head
  }
  var isEmpty: Bool {
    count <= 0 ? true : false
  }
  
  mutating func enqueue(_ element: T) {
    queue.append(element)
  }
  
  mutating func dequeue() -> T? {
    if isEmpty { return nil }
    
    let element = queue[head]
    head += 1
    
    if head > 50 {
      queue.removeFirst(head)
      head = 0
    }
    return element
  }
}

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
var count = input[0]
var term = input[1]
var result = [Int]()
var queue = Queue<Int>()
_ = (1...count).map{queue.enqueue($0)}

while !queue.isEmpty {
  for _ in 0..<term-1 {
    queue.enqueue(queue.dequeue()!) // 꺼내고 다시 enqueue
  }
  result.append(queue.dequeue()!) // dequeue
}

print("<" + result.map{String($0)}.joined(separator: ", ") + ">")
