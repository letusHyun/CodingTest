//
//  1094_greedy.swift
//  막대기
//
//  Created by SeokHyun on 2023/07/10.
//

import Foundation

var x = Int(readLine()!)!

var n = 64
var count = 0

while x > 0 {
  if x < n { // x가 n보다 작으면, n을 절반으로 나눈다.
    n /= 2
  } else { // x가 n보다 크거나 같으면, n을 충족하기 때문에 counting 해주고 x의 값을 재설정
    count += 1
    x -= n // x를 n만큼 빼서 x의 값을 재설정해준다.
  }
}

print(count)
