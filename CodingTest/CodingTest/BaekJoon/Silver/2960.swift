//
//  2960.swift
//  에라토스테네스의 체
//
//  Created by SeokHyun on 2023/07/01.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = input[0]
let k = input[1]
var isVisited = Array(repeating: false, count: n+1)
var count = 0

for i in 2...n {
  for j in stride(from: i, through: n, by: i) {
    if isVisited[j] { continue } // 방문 했으면 다음으로 넘어감
    isVisited[j] = true // 방문 처리
    count += 1
    
    if count == k {
      print(j)
      exit(0)
    }
  }
}
