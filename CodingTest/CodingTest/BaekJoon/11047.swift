//
//  11047.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/03.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
var value = input[1]

var arr = Array(repeating: 0, count: N)
var buffer = Array(repeating: 0, count: arr.count)
var resultCount = 0

for i in 0..<arr.count {
  arr[i] = Int(readLine()!)!
}

for i in (0..<arr.count).reversed() {
  
  if value - arr[i] < 0 { // 1.
    continue
  } else if value - arr[i] == 0 { // 2.
    resultCount += 1
    break
  } else { // 3.
    repeat {
      resultCount += 1
      value = value - arr[i]
    } while value - arr[i] >= 0
  }
}

print(resultCount)

// 1. (value - 배열값)이 음수이면, for문 돌아감
// 2. (value - 배열값)이 0이면 종료 -> 연산 횟수 출력
// 3. (value - 배열값)이 양수이면, 뺄셈 연산 수행
  // 3-1. 언제까지? (value - 배열값)이 >= 0 이면 반복
