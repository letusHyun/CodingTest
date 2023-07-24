//
//  1874.swift
//  스택 수열
//
//  Created by SeokHyun on 2023/07/22.
//

import Foundation

let count = Int(readLine()!)!
var stack = [Int]()
var result = [String]()
var maxElement = 1
for _ in 0..<count {
  let num = Int(readLine()!)!
  
  while maxElement <= num {
    stack.append(maxElement)
    result.append("+")
    maxElement += 1
  }
  
  if stack.last! == num {
    stack.removeLast()
    result.append("-")
  } else {
    print("NO")
    exit(0)
  }
}

print(result.joined(separator: "\n"))
