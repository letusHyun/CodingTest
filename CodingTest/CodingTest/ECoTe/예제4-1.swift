//
//  예제4-1.swift
//  상하좌우
//
//  Created by SeokHyun on 2023/05/24.
//

import Foundation

func isBoundary(_ location: (Int, Int)) -> Bool {
  switch location {
  case (0, _): return false
  case (_, 0): return false
  case (N+1, _): return false
  case (_, N+1): return false
  default: return true
  }
}

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { String($0) }
                                                     
var arr2d = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: N), count: N)
var user = (1, 1)
for i in 0..<N {
  for j in 0..<N {
    arr2d[i][j] = (i+1, j+1)
  }
}

for i in 0..<input.count {
  switch input[i] {
  case "R":
    isBoundary(user)
    user = (user.0, user.1 + 1)
  case "L":
    user = (user.0, user.1 - 1)
    isBoundary(user)
  case "U":
    user = (user.0 + 1, user.1)
    isBoundary(user)
  case "D":
    user = (user.0 - 1, user.1)
    isBoundary(user)
  default: break
  }
}


