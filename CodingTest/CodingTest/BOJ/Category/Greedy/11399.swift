//
//  11399.swift
//  ATM
//
//  Created by SeokHyun on 2023/07/16.
//

import Foundation

let input = Int(readLine()!)!
var nums = readLine()!.split{$0==" "}.map{Int(String($0))!}
nums.sort()
var result = 0
for i in 0..<nums.count {
  for j in 0...i {
    result += nums[j]
  }
}
print(result)
