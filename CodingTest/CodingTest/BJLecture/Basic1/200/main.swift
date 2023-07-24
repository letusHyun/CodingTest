//
//  1158.swift
//  CodingTest
//
//  요세푸스문제
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
    
    return element
  }
}

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = input[0]
let k = input[1]
var queue = Queue<Int>()
_ = (1...n).map{ queue.enqueue($0) }

var result = [Int]()

while !queue.isEmpty {
  for _ in 0..<k-1 {
    queue.enqueue(queue.dequeue()!)
  }
  result.append(queue.dequeue()!)
}

print("<" + result.map{String($0)}.joined(separator: ", ") + ">")
