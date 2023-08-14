//
//  1978.swift
//  소수찾기
//
//  Created by SeokHyun on 2023/07/28.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
  if (n < 2) {
    return false // 2보다 작으면 소수 아님
  }
  for i in 2..<n {
    if n % i == 0 { // 다른 수로 나누었을 때 나머지가 0이면 소수 아님
      return false
    }
  }
  return true
}

let count = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var result = 0

for num in arr {
  if isPrime(num) {
    result += 1
  }
}
print(result)

// for문에서 총 n번 검사하므로, O(N)
