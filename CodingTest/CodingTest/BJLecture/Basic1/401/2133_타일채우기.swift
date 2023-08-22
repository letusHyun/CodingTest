//
//  2133.swift
//  타일채우기
//
//  Created by SeokHyun on 2023/08/23.
//

let n = Int(readLine()!)!
var d = Array(repeating: 0, count: n+1)

if n >= 2 {
  d[2] = 3
  for i in stride(from: 4, through: n, by: 2) {
    d[i] += d[i-2]*3 + 2
    for j in stride(from: i-4, through: 2, by: -2) {
      d[i] += d[j]*2
    }
  }
}

print(d[n])

//d[4] = d[2]*3 + 2
//d[6] = d[4]*3 + d[2]*2 + 2
//d[8] = d[6]*3 + d[4]*2 + d[2]*2 + 2
