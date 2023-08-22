//
//  11722.swift
//  가장긴감소하는부분수열
//
//  Created by SeokHyun on 2023/08/17.
//
//i: 0  1  2  3  4  5
//a: 10 30 10 20 20 10
//d: 0   0  1  1  1  2
//v: -   -  1  1  1  3

let n = Int(readLine()!)!
var a = readLine()!.split{$0==" "}.map{Int(String($0))!}
var d = Array(repeating: 0, count: n)
var v = Array(repeating: -1, count: n)

for i in 1..<n {
  for j in 0...i {
    if a[i] < a[j], d[i] < d[j] + 1 {  // d[i]와 d[j]가 같거나, d[i] < d[j]인 경우
      d[i] = d[j] + 1
      v[i] = j
    }
  }
}

let index = d.firstIndex(of: d.max()!)!
var result = [Int]()

backtracking(index)

print(result.count)

// 백트래킹
func backtracking(_ index: Int) {
  if index == -1 {
    return
  }
  backtracking(v[index])
  result.append(a[index])
}
