//
//  17419.swift
//  비트가 넘쳐흘러
//
//  Created by SeokHyun on 2023/07/13.
//

import Foundation

let _ = Int(readLine()!)!

var input = readLine()!.map{Int(String($0))!}

var count = 0
for i in 0..<input.count {
  if input[i] == 1 {
    count += 1
  }
}
print(count)
