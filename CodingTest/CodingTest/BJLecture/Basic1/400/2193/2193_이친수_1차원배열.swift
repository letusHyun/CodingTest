//
//  2193.swift
//  이친수_1차원
//
//  Created by SeokHyun on 2023/08/09.
//

let n = Int(readLine()!)!
var d = Array(repeating: 0, count: 91) // n자리의 이친수 개수
d[1] = 1

if n >= 2 {
  for i in 2...n {
    d[i] = d[i-1] + d[i-2]
  }
}
print(d[n])
