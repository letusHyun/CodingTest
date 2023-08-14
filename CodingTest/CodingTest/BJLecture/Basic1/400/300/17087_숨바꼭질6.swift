//
//  17087.swift
//  숨바꼭질6
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
  if b == 0 {
    return a
  } else {
    return gcd(b, a % b)
  }
}

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let d = readLine()!.split{$0==" "}.map{abs(Int(String($0))! - input[1])}

var index = 1
var result = d[index-1]
while index <= d.count-1 {
  result = gcd(result, d[index])
  index += 1
}
print(result)
