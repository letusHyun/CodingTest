//
//  10799.swift
//  쇠막대기
//
//  Created by SeokHyun on 2023/07/27.
//

import Foundation

let input = readLine()!
var count = 0
var stack = [Int]()

for (index, char) in input.enumerated() {
  if char == "(" {
    stack.append(index)
  } else if char == ")" {
    if stack.last! == index-1 { // 현재 ")" 바로 직전이 "("라면 레이저이므로 원시의 쇠막대기의 개수만큼 count
      _ = stack.popLast()!
      count += stack.count
    } else { // 쇠막대기라면 레이저에 의해 잘린 쇠막대기의 개수 count, ex) 막대기를 n등분하면 n+1개
      _ = stack.popLast()!
      count += 1
    }
  }
}

print(count)
