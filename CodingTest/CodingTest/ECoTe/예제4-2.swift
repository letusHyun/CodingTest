//
//  예제4-2.swift
//  시각
//
//  Created by SeokHyun on 2023/06/22.
//

import Foundation

let N = Int(readLine()!)!
var count = 0

for i in 0..<N+1 {
  for j in 0..<60 {
    for k in 0..<60 {
      if (String(i) + String(j) + String(k)).contains("3") {
        count += 1
      }
    }
  }
}

print(count)
