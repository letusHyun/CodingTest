//
//  15990.swift
//  1,2,3더하기_5
//
//  Created by SeokHyun on 2023/08/08.
//

let t = Int(readLine()!)!
var d = Array(repeating: Array(repeating: 0, count: 4), count: 100_001) // testCase안에 넣으면 시간초과
d[1][1] = 1 // 1
d[2][2] = 1 // 2
d[3][1] = 1 // 2 1
d[3][2] = 1 // 1 2
d[3][3] = 1 // 1
let bigNum = 1_000_000_009

for i in 4...100_000 {
  d[i][1] = d[i-1][2] % bigNum + d[i-1][3] % bigNum
  d[i][2] = d[i-2][1] % bigNum + d[i-2][3] % bigNum
  d[i][3] = d[i-3][1] % bigNum + d[i-3][2] % bigNum
}

for _ in 0..<t {
  let n = Int(readLine()!)!
  print((d[n][1] + d[n][2] + d[n][3]) % bigNum)
}
