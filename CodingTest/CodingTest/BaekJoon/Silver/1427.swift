//
//  1427.swift
//  소트인사이드
//
//  Created by SeokHyun on 2023/07/06.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int]()

while input > 0 {
  arr.append(input % 10)
  input /= 10
}
arr.sort(by: >)

for i in 0..<arr.count {
  print(arr[i], terminator: "")
}
