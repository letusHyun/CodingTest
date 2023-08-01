//
//  11726.swift
//  2Xn타일링
//
//  Created by SeokHyun on 2023/08/01.
//

import Foundation

let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 1001)

d[1] = 1
d[2] = 2

if n == 1 {
  print(d[n])
} else if n == 2 {
  print(d[n])
} else {
  for i in 3...n {
    d[i] = (d[i-1] + d[i-2]) % 10_007
  }
  print(d[n])
}
