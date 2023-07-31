//
//  9613.swift
//  GCD합
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

let count = Int(readLine()!)!
for _ in 0..<count {
  let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
  var result = 0
  for i in 1...(input[0]-1) {
    for j in (i+1)...input[0] {
      result += gcd(input[i], input[j])
    }
  }
  print(result)
}
