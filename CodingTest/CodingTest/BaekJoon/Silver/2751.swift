//
//  2751.swift
//  수 정렬하기 2
//
//  Created by SeokHyun on 2023/07/06.
//

import Foundation

var input = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<input {
  arr.append(Int(readLine()!)!)
}

arr.sort()

for i in 0..<input {
  print(arr[i])
}
