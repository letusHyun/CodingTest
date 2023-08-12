//
//  1699.swift
//  제곱수의 합
//
//  Created by SeokHyun on 2023/08/12.
//


let n = Int(readLine()!)!
//d의 의미: 제곱수들의 합으로 표현할 때 그 항의 최소 개수
var d = Array(repeating: 0, count: n+1)
d[1] = 1 // dp의 초기 값
if n == 1 {
  print(d[1])
} else {
  for i in 2...n {
    d[i] = d[i - 1*1] + 1
    
    var j = 1
    while j * j <= i { // 마지막 값의 조건: 1 ≤ j^ ≤ i
      d[i] = min(d[i-j*j] + 1, d[i])
      j += 1
    }
  }
  print(d[n])
}

// 시간 복잡도: O(n루트n)
