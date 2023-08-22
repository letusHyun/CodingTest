//
//  main.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/08/20.
//

let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
let reversedArr: [Int] = arr.reversed()
var rd = Array(repeating: 1, count: n) // LIS 가장긴증가하는부분수열
var ld = Array(repeating: 1, count: n) // LDS 가장기감소하는부분수열
var d = Array(repeating: 0, count: n) // rd + ld
// 증가
for i in 1..<n {
  for j in 0..<i {
    if arr[i] > arr[j], rd[i] < rd[j]+1 {
      rd[i] = rd[j]+1
    }
  }
}
// 감소
for i in 1..<n {
  for j in 0..<i {
    if reversedArr[i] > reversedArr[j], ld[i] < ld[j] + 1 {
      ld[i] = ld[j]+1
    }
  }
}

// result
for i in 0..<n {
  d[i] = rd[i] + ld[n-i-1]
}

print(d.max()!-1)
