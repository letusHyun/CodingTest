//
//  2587.swift
//  대표값2
//
//  Created by SeokHyun on 2023/08/01.
//

import Foundation

func avg(_ arr: inout [Int]) -> Int {
  var sum = 0
  for num in arr {
    sum += num
  }
  return sum / arr.count
}

func mid(_ arr: inout [Int]) -> Int {
  arr.sort()
  return arr[(arr.startIndex + arr.endIndex) / 2]
}

var arr = [Int]()
_ = (0..<5).map { _ in
  arr.append(Int(readLine()!)!)
}

print(avg(&arr))
print(mid(&arr))
