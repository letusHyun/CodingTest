//
//  1676.swift
//  팩토리얼0의개수
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

let n = Int(readLine()!)!
var fivePow = 5
var result = 0

while fivePow <= n {
  result += n / fivePow
  fivePow *= 5
}

print(result)
