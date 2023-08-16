//
//  1932.swift
//  정수 삼각형
//
//  Created by SeokHyun on 2023/08/16.
//

let n = Int(readLine()!)!
var t = Array(repeating: [Int](), count: n)
_ = (0..<n).map { t[$0] = readLine()!.split{$0==" "}.map{Int(String($0))!} }
var d = Array(repeating: Array(repeating: 0, count: 500), count: 500)

for i in 0..<t[n-1].count {
  d[0][i] = t[n-1][i]
}

for i in 1..<n {
  for j in 0..<t[n-i-1].count {
    d[i][j] = max(d[i-1][j], d[i-1][j+1]) + t[n-i-1][j]
  }
}

print(d[n-1][0])
