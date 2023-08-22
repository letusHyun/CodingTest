//
//  13398.swift
//  연속합2
//
//  Created by SeokHyun on 2023/08/22.
//

let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var rd = Array(repeating: 0, count: n)
var ld = Array(repeating: 0, count: n)
var result = 0

// right->left 연속합 구하기
rd[0] = arr[0]
for i in 1..<n {
  rd[i] = arr[i]
  if rd[i]+rd[i-1] > rd[i] {
    rd[i] += rd[i-1]
  }
}
result = rd.max()!

// left->right 연속합 구하기
ld[n-1] = arr[n-1]
for i in stride(from: n-2, through: 0, by: -1) {
  ld[i] = arr[i]
  if ld[i+1]+ld[i] > ld[i] {
    ld[i] += ld[i+1]
  }
}

if n == 1 {
  print(arr[0])
} else {
  // 제거했을 때의 값과 제거하지 않았을 때의 값중 최댓값 구하기
  for i in 1..<n-1 {
    result = max(rd[i-1]+ld[i+1], result)
  }
  print(result)
}
