//
//  14002.swift
//  가장긴증가하는부분수열4
//
//  Created by SeokHyun on 2023/08/11.
//

import Foundation
// i: 0  1  2  3  4  5
// n: 10 20 10 30 20 50
// d: 1  2  1  3  2  4
// v: -1 0  -1 1  2  3
let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var d = Array(repeating: 1, count: 1000)
var v = Array(repeating: -1, count: 1000)
var result = [Int]()

for i in 0..<n {
  for j in 0...i {
    if arr[i] > arr[j], d[i] <= d[j] {
      d[i] = d[j] + 1
      v[i] = j
    }
  }
}

func backtracking(_ index: Int) {
  if v[index] == -1 {
    result.append(arr[index])
    return
  }
  backtracking(v[index])
  result.append(arr[index])
}

let max = d.max()!
let index = d.firstIndex(of: max)!
backtracking(index)

print(result.count)
print(result.map{String($0)}.joined(separator: " "))
