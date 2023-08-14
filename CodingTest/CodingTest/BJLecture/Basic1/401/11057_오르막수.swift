//
//  11057.swift
//  오르막 수
//
//  Created by SeokHyun on 2023/08/14.
//


// 1<=n<=1000
// 0<=k<=9

let n = Int(readLine()!)!
// d[i][k]의 의미: 수의 길이가 i이고, 마지막 수가 k일때의 오름차순 개수
// d[i][k] += d[i-1][0~k]
var d = Array(repeating: Array(repeating: 0, count: 10), count: n+1)
let mod = 10_007

for i in 0...9 {
  d[1][i] = 1
}

if n == 1 {
  print(printResult())
} else {
  for i in 2...n { // 저장기법을 사용하기 위해서 i는 2부터 n까지 올라가야 함
    for j in 0...9 {
      for l in 0...j {
        d[i][j] = (d[i][j] + d[i-1][l]) % mod
      }
    }
  }
  print(printResult())
}

func printResult() -> Int {
  var result = 0
  for i in 0...9 {
    result = (result + d[n][i]) % mod
  }
  return result
}
