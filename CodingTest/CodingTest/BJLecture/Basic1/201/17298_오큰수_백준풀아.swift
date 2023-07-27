//
//  17298.swift
//  오큰수
//
//  Created by SeokHyun on 2023/07/27.
//

import Foundation

let size = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var nge = Array(repeating: -1, count: size) // 오큰수가 없는 element를 고려해서 -1로 초기화
var idxStack = [Int]()

for curIdx in 0..<size {
  while let last = idxStack.last, arr[last] < arr[curIdx] {
    nge[idxStack.popLast()!] = arr[curIdx]
  }
  idxStack.append(curIdx)
}

print(nge.map{String($0)}.joined(separator: " "))
