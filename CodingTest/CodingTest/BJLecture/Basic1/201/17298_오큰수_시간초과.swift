//
//  17298.swift
//  오큰수
//
//  Created by SeokHyun on 2023/07/27.
//

import Foundation
let size = Int(readLine()!)!
let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
var stack = [Int]()
var result = [Int]()

func popAll(_ stack: inout [Int]) {
  while !stack.isEmpty {
    _ = stack.popLast()
  }
}

for i in 0..<size {
  for j in stride(from: size-1, through: i+1, by: -1) {
    if input[i] < input[j] {
      stack.append(input[j])
    }
  }
  if stack.isEmpty {
    result.append(-1)
  } else {
    result.append(stack.popLast()!)
    popAll(&stack)
  }
}
print(result.map{String($0)}.joined(separator: " "))

// 이중for문을 사용했기 때문에, O(N^2)이므로 시간 초과
