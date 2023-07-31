//
//  1463.swift
//  1로만들기
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

let input = Int(readLine()!)!
var d = Array(repeating: 0, count: input+1) // 연산 횟수를 저장할 버퍼

d[1] = 0 // 1일 때 연산 횟수는 0
for i in 2..<input+1 {
  d[i] = d[i-1] + 1 // case 01. -1 연산을 후보에 넣어줌
  
  if i%2 == 0, d[i/2] + 1 < d[i] { // case 02. -1연산보다 작을 경우, 횟수 재설정
    d[i] = d[i/2] + 1
  }
  if i%3 == 0, d[i/3] + 1 < d[i] { // case 03. 이 경우는 -1연산과 /2연산 즉, 두 연산보다 작은 경우, 횟수 재설정
    d[i] = d[i/3] + 1
  }
}
print(d[input])

// O(N)
