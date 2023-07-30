//
//  9020.swift
//  골드바흐의 추측
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

while let input = readLine() {
  let end = Int(input)!
  var isChecked = Array(repeating: false, count: 10_001)
  var primeArr = [Int]()
  
  for num in 2...end {
    if isChecked[num] == false {
      primeArr.append(num)
      
      var j = num * 2
      while j <= end {
        isChecked[j] = true
        j += num
      }
    }
  }
}
