//
//  17404.swift
//  RGB거리2
//
//  Created by SeokHyun on 2023/08/23.
//

import Foundation

let n = Int(readLine()!)!
var a = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
_ = (1...n).map { a[$0] = readLine()!.split{$0==" "}.map{Int(String($0))!} }
var d = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
// 집을 칠하는 비용은 최대 1000이고 집의 수는 2에서 1000사이의 수 이므로 가능한 최대 값 MAX = 1000x1000 + 1이다
let max = 1000*1000+1
var result = max

for i in 0..<3 {
  for j in 0..<3 { // 1번집 색깔 결정
    if i == j {
      d[1][j] = a[1][j]
    } else {
      d[1][j] = max
    }
  }
  
  for k in 2...n { // dp
    d[k][0] = min(d[k-1][1], d[k-1][2]) + a[k][0]
    d[k][1] = min(d[k-1][0], d[k-1][2]) + a[k][1]
    d[k][2] = min(d[k-1][0], d[k-1][1]) + a[k][2]
  }
  
  for j in 0..<3 {
    if i != j { // 1번집과 n번집의 색깔이 다를 때만 최솟값 비교
      result = min(result, d[n][j])
    }
  }
}

print(result)
