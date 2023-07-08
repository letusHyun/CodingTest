//
//  10845.swift
//  큐
//
//  Created by SeokHyun on 2023/07/04.
//

import Foundation

struct Queue {
  private var queue = [Int]()
  mutating func push(_ value: Int) {
    queue.append(value)
  }

  // queue의 맨 앞 제거
  mutating func pop() -> Int {
    queue.reverse() // O(1)를 하기 위해 reversed
    return queue.popLast() ?? -1
  }

  func size() -> Int {
    return queue.count
  }

  func empty() -> Int {
    return queue.isEmpty ? 1 : 0
  }

  func front() -> Int {
    return queue.first ?? -1
  }

  func back() -> Int {
    return queue.last ?? -1
  }
}

let input = Int(readLine()!)!
var queue = Queue()

for _ in 0..<input {
  let output = readLine()!.split{$0==" "}
  switch String(output[0]) {
  case "push":
    queue.push(Int(output[1])!)
  case "pop":
    print(queue.pop())
  case "size":
    print(queue.size())
  case "empty":
    print(queue.empty())
  case "front":
    print(queue.front())
  case "back":
    print(queue.back())
  default: break
  }
}
