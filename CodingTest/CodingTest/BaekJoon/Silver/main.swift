//
//  1874.swift
//  스택 수열
//
//  Created by SeokHyun on 2023/06/29.
//

import Foundation

let count = Int(readLine()!)!
var inputs = [Int]()
var result = [String]()
_ = (0..<count).map{ _ in inputs.append(Int(readLine()!)!) }

var stack = [Int]()

var max = 0

for input in inputs {
  if max < input {
    for i in max+1...input {
      stack.append(i)
      result.append("+")
    }
    max = input // max 갱신
    _ = stack.popLast()
    result.append("-")
  } else if max == input {
    _ = stack.popLast()
    result.append("-")
  } else { // max > input
    if input != stack.last! { // input과 stackLast가 같아야 pop하는데, 서로 다르다면 실패!
      break
    }
    _ = stack.popLast()
    result.append("-")
  }
}

if stack.isEmpty {
  print(result.joined(separator: "\n"))
} else {
  print("NO")
}
