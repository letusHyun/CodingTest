//
//  15988.swift
//  1,2,3더하기_3
//
//  Created by SeokHyun on 2023/08/05.
//

import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
  let n = Int(readLine()!)!
  var d = Array(repeating: -1, count: 1_000_001)
  
  d[1] = 1
  d[2] = 2
  d[3] = 4
  
  if n < 4 {
    print(d[n])
  } else {
    for i in 4...n {
      d[i] = (d[i-1] + d[i-2] + d[i-3]) % 1_000_000_009
    }
    print(d[n])
  }
}
