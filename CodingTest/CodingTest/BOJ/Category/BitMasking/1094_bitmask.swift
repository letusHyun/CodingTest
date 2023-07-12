//
//  1094_bitmask.swift
//  막대기
//
//  Created by SeokHyun on 2023/07/10.
//

import Foundation

var x = Int(readLine()!)!
var count = 0

func isOneBit(_ x: Int) -> Bool {
  return (x & 1) == 1 ? true : false // 첫 번째 비트가 0인지 1인지 확인, 1이면 true, 0이면 false
}

for _ in 0..<7 { // 64는 2^6, 비트 자리수는 6+1이다. 비트 자리수만큼 확인해야함
  if isOneBit(x) {
    count += 1
  }
  x >>= 1 // 비트 체크 후, left shifting
}
print(count)
