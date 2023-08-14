//
//  1309.swift
//  동물원
//
//  Created by SeokHyun on 2023/08/14.
//

let n = Int(readLine()!)!
var d = Array(repeating: 0, count: n+1)
let mod = 9901
d[0] = 1
d[1] = 3

if n == 1 {
  print(d[n])
} else {
  for i in 2...n {
    d[i] = (2*d[i-1] + d[i-2]) % mod
  }
  print(d[n])
}
