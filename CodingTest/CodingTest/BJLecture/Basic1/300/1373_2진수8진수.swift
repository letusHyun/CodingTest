//
//  1373.swift
//  2진수8진수
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

var input = readLine()!
var result = [Int]()
while !input.isEmpty {
  var value = 0
  for i in 0..<3 {
    guard let last = input.popLast() else { break }
    value += Int(pow(Double(2), Double(i))) * Int(String(last))!
  }
  result.append(value)
}
result.reverse()
print(result.map{String($0)}.joined(separator: ""))
