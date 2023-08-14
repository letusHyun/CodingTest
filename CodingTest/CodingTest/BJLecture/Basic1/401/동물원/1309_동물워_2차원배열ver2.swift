//
//  1309.swift
//  동물원
//
//  Created by SeokHyun on 2023/08/14.
//

let n = Int(readLine()!)!
var d = Array(repeating: Array(repeating: 0, count: 2), count: n+1)
let mod = 9901
d[0][0] = 1
d[1][0] = 1
d[1][1] = 2

if n == 1 {
  print(d[1][0] + d[1][1])
} else {
  for i in 1..<n+1 {
    d[i][0] = (d[i-1][0] + d[i-1][1]) % mod
    d[i][1] =  (2 * d[i-1][0] + d[i-1][1]) % mod
  }
  print((d[n][0] + d[n][1]) % mod)
}
