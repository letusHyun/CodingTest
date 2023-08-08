//
//  10844.swift
//  쉬운계단수
//
//  Created by SeokHyun on 2023/08/08.
//

let n = Int(readLine()!)!
var d = Array(repeating: Array(repeating: 0, count: 10), count: 101)
var divNum = 1_000_000_000
for i in 1...9 {
  d[1][i] = 1
}

if n >= 2 {
  for i in 2...n { // 자리 수 (길이)
    for j in 0...9 { // 마지막 자리의 값
      if j == 0 { // 마지막 자리의 값이 0인 경우
        d[i][j] = d[i-1][1] % divNum
      } else if j == 9 { // 마지막 자리의 값이 9인 경우
        d[i][j] = d[i-1][8] % divNum
      } else {
        d[i][j] = (d[i-1][j-1] + d[i-1][j+1]) % divNum
      }
    }
  }
}

var result = 0
for i in 0...9 {
  result = (result + d[n][i]) % divNum
}

print(result)
