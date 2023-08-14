//
//  2225.swift
//  합분해
//
//  Created by SeokHyun on 2023/08/13.
//

var nk = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = nk.first!
let k = nk.last!
// d[k][n]: k개를 더해서 합이 n이 되는 경우의 수
var d = Array(repeating: Array(repeating: 0, count: n+1), count: k+1)

let mod = 1_000_000_000

for i in 0...n {
  d[1][i] = 1
}

for i in 1...k { // i: 항의 개수
  for j in 0...n { // j: 합
    for l in 0...j { // 시그마
      d[i][j] = (d[i][j] + d[i-1][j-l]) % mod
    }
  }
}

print(d[k][n])
