//
//  2309.swift
//  일곱 난쟁이
//
//  Created by SeokHyun on 2023/07/20.
//

import Foundation
            
var input = [Int]()
var sum = 0
for i in 0..<9 {
  input.append(Int(readLine()!)!)
  sum += input[i]
}

input.sort()
outerLoop: for i in 0..<input.count-1 {
  for j in i+1..<input.count {
    if sum - (input[i] + input[j]) == 100 {
      input.remove(at: j)
      input.remove(at: i)
      
      break outerLoop
    }
  }
}

for i in 0..<input.count {
  print(input[i], terminator: "\n")
}
