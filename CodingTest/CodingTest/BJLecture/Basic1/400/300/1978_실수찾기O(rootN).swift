//
//  1978.swift
//  소수찾기
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

func isPrime(_ n: Int) -> Bool { // O(루트N)
  if (n < 2) {
    return false
  }
  var i = 2
  while i * i <= n { // 'i <= 루트n'과 같은 표현, i제곱을 한 이유는 루트를 제거하기 위함(근삿값을 제거하기 위함)
    if n % i == 0 {
      return false
    }
    i += 1
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
