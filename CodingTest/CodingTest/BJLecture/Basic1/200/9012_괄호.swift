//
//  9012.swift
//  괄호
//
//  Created by SeokHyun on 2023/07/21.
//

import Foundation

var testCase = Int(readLine()!)!

for _ in 0..<testCase {
  let input = readLine()!.map{String($0)}
  var stack = [String]()
  // flag
  // 이미 NO로 나와서 testCase가 끝난 경우, true 변경
  var isEnd = false
  
  for char in input {
    if char == "(" {
      stack.append(char)
    } else { // ")" 인 경우
      guard (stack.popLast() != nil) else {
        print("NO")
        isEnd = true
        break
      }
    }
  }
  
  if !isEnd {
    if !stack.isEmpty {
      print("NO")
    } else {
      print("YES")
    }
  }
}

// NO
// 1. 비어있을 때 pop 하는 경우
// 2. 다 끝났는데 stack 남아있는 경우

// YES
// 1. VPS인 경우
