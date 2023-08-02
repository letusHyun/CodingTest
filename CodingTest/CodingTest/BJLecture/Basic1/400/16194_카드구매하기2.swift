//
//  16194.swift
//  카드구매하기2
//
//  Created by SeokHyun on 2023/08/02.
//

import Foundation

//let n = Int(readLine()!)!
//var p = Array(repeating: 0, count: 1)
//_ = readLine()!.split{$0==" "}.map{Int(String($0))!}.map{ p.append($0) } // p[0] = 0
//var d = Array(repeating: Int.max, count: n+1)
//
//d[0] = 0
//for i in 1...n {
//  for j in 1...i {
//    d[i] = min(d[i-j] + p[j], d[i])
//  }
//}
//print(d[n])

let n = Int(readLine()!)!
var p = Array(repeating: 0, count: 1)
_ = readLine()!.split{$0==" "}.map{Int(String($0))!}.map{ p.append($0) } // p[0] = 0
var d = Array(repeating: -1, count: n+1)

d[0] = 0
for i in 1...n {
  for j in 1...i {
    if d[i] == -1 || d[i-j] + p[j] < d[i] {
      d[i] = d[i-j] + p[j]
    }
  }
}
print(d[n])
