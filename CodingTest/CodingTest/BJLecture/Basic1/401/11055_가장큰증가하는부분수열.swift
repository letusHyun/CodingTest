//
//  11055.swift
//  가장큰증가하는부분수열
//
//  Created by SeokHyun on 2023/08/16.
//

let n = Int(readLine()!)!
let a = readLine()!.split{$0==" "}.map{Int(String($0))!}
var d = Array(repeating: 0, count: n)

for i in 0..<n {
  d[i] = a[i]
  for j in 0..<i {
    if a[i] > a[j], d[i] < d[j] + a[i] {
      d[i] = d[j]+a[i]
    }
  }
}

print(d.max()!)

//10
//1 100 2 50 60 3 5 6 7 200
//d[i] < d[j] + a[i]
