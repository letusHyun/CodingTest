//
//  1740.swift
//  거듭제곱
//
//  Created by SeokHyun on 2023/07/12.
//

import Foundation

// Sol
// 1. 2진수로 바꿔서 배열에 저장
// 2. 배열의 index만큼 3을 곱해주기
var input = Int(readLine()!)!
var binary = [Int]()

while input > 0 { // 2진수 생성
  binary.append(input % 2)
  input /= 2
}

var result = 0

// 스위프트 기본 제공 pow함수는 float로 변환해야하는데, float는 오차가 있어서 백준에서 에러가 나는듯..
// custom 제곱함수를 만들어서 사용하자!
func customPow(_ value: Int, _ exp: Int) -> Int {
  var result = 1
  
  if exp == 0 {
    return result
  }
  
  for _ in 1...exp {
    result *= value
  }
  return result
}

for i in 0..<binary.count {
  if binary[i] == 1 { // 1비트인 경우에만 제곱
    result += customPow(3, i)
  }
}
print(result)
