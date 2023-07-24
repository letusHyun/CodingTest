//
//  9012.swift
//  괄호_백준풀이
//
//  Created by SeokHyun on 2023/07/22.
//

import Foundation

func isValid(_ arr: [String]) -> String {
  var count = 0
  for i in 0..<arr.count {
    if arr[i] == "(" {
      count += 1
    } else {
      count -= 1
    }

    if count < 0 {
      return "NO"
    }
  }
  
  if count == 0 {
    return "YES"
  } else {
    return "NO"
  }
}

var testCase = Int(readLine()!)!
while testCase > 0 {
  var arr = readLine()!.map{String($0)}
  print(isValid(arr))

  testCase += 1
}
