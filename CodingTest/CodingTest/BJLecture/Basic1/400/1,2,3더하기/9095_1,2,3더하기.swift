//
//  9095.swift
//  1,2,3더하기
//
//  Created by SeokHyun on 2023/08/01.
//

import Foundation

let size = Int(readLine()!)!
for _ in 0..<size {
  let n = Int(readLine()!)!
  var d = Array(repeating: 0, count: 10+1)
  
  d[1] = 1
  d[2] = 2
  d[3] = 4
  
  if n == 1 || n == 2 || n == 3 {
    print(d[n])
  } else {
    for i in 4...n {
      d[i] = d[i-1] + d[i-2] + d[i-3]
    }
    print(d[n])
  }
}
