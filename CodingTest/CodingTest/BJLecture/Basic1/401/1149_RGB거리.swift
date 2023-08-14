//
//  1149.swift
//  RGB거리
//
//  Created by SeokHyun on 2023/08/14.
//

let n = Int(readLine()!)!
var cost = Array(repeating: [Int](), count: n)
_ = (0..<n).map { cost[$0] = readLine()!.split{$0==" "}.map{Int(String($0))!} }
var d = Array(repeating: Array(repeating: 0, count: 3), count: n)

// d의 초기 설정
for i in 0..<3 {
  d[0][i] = cost[0][i]
}

for i in 1..<n {
  d[i][0] = min(d[i-1][1], d[i-1][2]) + cost[i][0] // r == 0
  d[i][1] = min(d[i-1][0], d[i-1][2]) + cost[i][1] // g == 1
  d[i][2] = min(d[i-1][0], d[i-1][1]) + cost[i][2] // b == 2
}

print(min(d[n-1][0], d[n-1][1], d[n-1][2]))
