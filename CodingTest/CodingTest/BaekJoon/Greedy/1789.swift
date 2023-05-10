//
//  1789.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/05.
//

import Foundation

var input = Int(readLine()!)!
var number = 0
var sum = 0
var buffer = [Int]()

while(true) {
  if input > sum { // case 1
    number += 1 //순차적인 값 덧셈
    buffer.append(number)
    sum = buffer.reduce(0) { $0 + $1 } // sum값 최신화
  } else if input < sum { // case 2
    let minusValue = sum - input
    let removeIndex = buffer.firstIndex(of: minusValue)!
    buffer.remove(at: removeIndex)
    sum = buffer.reduce(0) { $0 + $1 } // sum 값 최신화
  } else { // case 3
    break
  }
}

print(buffer.count)

// case 1) 더했을 때, input > sum 인 경우, 다음 순차적인 값을 더함. (작은 수부터 오름 차순으로 더해간다.)
// case 2) 더했을 때, input < sum 인 경우, (sum - input)인 값을 제외시키자!
// case 3) 더했을 때, input == sum 인 경우, 종료.
