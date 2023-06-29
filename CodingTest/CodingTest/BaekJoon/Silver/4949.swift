//
//  4949.swift
//  균형잡힌 세상
//
//  Created by SeokHyun on 2023/06/27.
//

import Foundation

while let input = readLine(), input != "." {
  print(isBalanced(input))
}

func isBalanced(_ input: String) -> String {
  var stack: [Character] = []
  for i in input {
    switch i {
    case "(", "[":
      stack.append(i)
    case ")":
      if stack.last == "(" {
        _ = stack.removeLast()
      } else {
        return "no"
      }
    case "]":
      if stack.last == "[" {
        _ = stack.removeLast()
      } else {
        return "no"
      }
    default: break
    }
  }
  
  return stack.isEmpty ? "yes" : "no"
}
