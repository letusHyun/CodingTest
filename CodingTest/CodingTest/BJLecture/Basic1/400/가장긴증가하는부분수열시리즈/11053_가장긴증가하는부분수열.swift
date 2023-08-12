//
//  11053.swift
//  가장긴증가하는부분수열
//
//  Created by SeokHyun on 2023/08/09.
//

let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}

// a[i]를 마지막으로 하는 가장 긴 증가하는 부분 수열의 길이
var d = Array(repeating: 0, count: 1000)

for i in 0..<arr.count {
  d[i] = 1
  for j in 0..<i {
    if arr[j] < arr[i], d[i] < d[j] + 1 {
      d[i] = d[j] + 1
    }
  }
}

print(d.max()!)
