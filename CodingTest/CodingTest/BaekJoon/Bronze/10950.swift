//
//  10950.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/07/03.
//

import Foundation

let count = Int(readLine()!)!
for _ in 0..<count {
  let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
  print(input[0] + input[1])
}
