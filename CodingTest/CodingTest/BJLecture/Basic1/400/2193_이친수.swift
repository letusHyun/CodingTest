//
//  2193.swift
//  이친수
//
//  Created by SeokHyun on 2023/08/08.
//

let n = Int(readLine()!)!
var d = Array(repeating: Array(repeating: 0, count: 2), count: 91)

d[1][1] = 1

if n == 1 {
  print(d[n][1])
} else {
  for i in 2...n {
    d[i][0] = d[i-1][0] + d[i-1][1]
    d[i][1] = d[i-1][0]
  }
  var result = 0
  for i in 0...1 {
    result += d[n][i]
  }
  print(result)
}
