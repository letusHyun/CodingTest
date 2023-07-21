//
//  9093.swift
//  단어 뒤집기
//
//  Created by SeokHyun on 2023/07/21.
//

import Foundation

var count = Int(readLine()!)!

while count > 0 {
  let arr = readLine()!.split{$0==" "}.map{String($0)}
  var result = [String]()
  for word in arr {
    result.append(String(word.reversed()))
  }
  for word in result {
    print(word, terminator: " ")
  }
  count -= 1
}
