//
//  17299.swift
//  오등큰수
//
//  Created by SeokHyun on 2023/07/27.
//

import Foundation

let size = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var stack = [Int]()
var freq = Array(repeating: 0, count: 1_000_001)
var ngf = Array(repeating: 0, count: size)

for i in 0..<size {
  freq[arr[i]] += 1
}

for idx in 0..<size {
  while !stack.isEmpty, freq[arr[stack.last!]] < freq[arr[idx]] {
    let popIdx = stack.popLast()!
    ngf[popIdx] = arr[idx]
  }
  stack.append(idx)
}

while !stack.isEmpty {
  ngf[stack.popLast()!] = -1
}

print(ngf.map{String($0)}.joined(separator: " "))
