//
//  15989.swift
//  1,2,3더하기_4
//
//  Created by SeokHyun on 2023/08/05.
//

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
  let n = Int(readLine()!)!
  var d = Array(repeating: Array(repeating: 0, count: 4), count: 10_001) // 1,2,3의 합으로 나타내는 방법의 수 (중복 제거)
  
  d[1][1] = 1 // (1)
  d[2][1] = 1 // (1, 1)
  d[2][2] = 1 // (2)
  d[3][1] = 1 // (1, 1, 1)
  d[3][2] = 1 // (1, 2)
  d[3][3] = 1 // (3)
  
  if n < 4 {
    print(d[n][1]+d[n][2]+d[n][3])
  } else {
    for i in 4...n {
      d[i][1] = d[i-1][1]
      d[i][2] = d[i-2][1] + d[i-2][2]
      d[i][3] = d[i-3][1] + d[i-3][2] + d[i-3][3]
    }
    print(d[n][1]+d[n][2]+d[n][3])
  }
}
