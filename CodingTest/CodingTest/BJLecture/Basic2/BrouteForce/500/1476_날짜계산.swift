//
//  1476.swift
//  날짜 계산
//
//  Created by SeokHyun on 2023/09/05.
//

let esm = readLine()!.split{$0==" "}.map{Int(String($0))!}
let e = esm[0]
let s = esm[1]
let m = esm[2]

var arr = Array(repeating: 0, count: 3)
var count = 0

while !(arr[0] == e && arr[1] == s && arr[2] == m) {
  for i in 0..<arr.count {
    arr[i] += 1
  }
  
  if arr[0] > 15 {
    arr[0] = 1
  }
  if arr[1] > 28 {
    arr[1] = 1
  }
  if arr[2] > 19 {
    arr[2] = 1
  }
  
  count += 1
}

print(count)
