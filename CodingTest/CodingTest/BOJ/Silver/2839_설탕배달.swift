//
//  2839.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/08/25.
//

let n = Int(readLine()!)!
// d[n][k]의 의미: 마지막수가 5일때의 최소 개수와 마지막수가 3일때의 최소 개수중에서 최솟값 + 1
var d = Array(repeating: 1667, count: 5001)

d[3] = 1
d[5] = 1

if 1<=n, n<=5 {
  if d[n] >= 1667 {
    print(-1)
  } else {
    print(d[n])
  }
} else {
  for i in 6...n {
    d[i] = min(d[i-3], d[i-5]) + 1
  }
  if d[n] >= 1667 {
    print(-1)
  } else {
    print(d[n])
  }
}
