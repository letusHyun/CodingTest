//
//  1748.swift
//  수이어쓰기1
//
//  Created by SeokHyun on 2023/09/08.
//

import Foundation

func numberOfDigits(_ n: Int) -> Int {
  return String(n).count
}

let n = Int(readLine()!)!
let digits = numberOfDigits(n)
var countDigits = 1
var result = 0

// n-1까지 계산
while countDigits < digits {
  result += (Int(pow(10.0, Float(countDigits))) - Int(pow(10.0, Float(countDigits-1)))) * countDigits
  countDigits += 1
}

// n일때 계산
result += (n - Int(pow(10.0, Float(countDigits-1))) + 1) * countDigits
print(result)
