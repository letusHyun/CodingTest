//
//  11052.swift
//  카드구매하기
//
//  Created by SeokHyun on 2023/08/02.
//

import Foundation

let n = Int(readLine()!)!
var p = readLine()!.split{$0==" "}.map{Int(String($0))!}
var d = Array(repeating: 0, count: 1001)
for i in 1...n {
  for j in 1...i {
    d[i] = max(d[i-j] + p[j-1], d[i])
  }
}
print(d[n])
