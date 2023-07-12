//
//  3040.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/31.
//

import Foundation

var input = [Int]()

for _ in 0..<9 {
  input.append(Int(readLine()!)!)
}

var sum = input.reduce(0,+)

func start() {
  for i in 0..<input.count {
    for j in (i+1)..<input.count {
      if sum - (input[i] + input[j]) == 100 {
        input[i] = 0
        input[j] = 0
        return
      }
    }
  }
}

start()

let result = input.filter { $0 != 0 }

result.forEach {
  print($0)
}
