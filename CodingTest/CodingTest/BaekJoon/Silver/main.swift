//
//  11866.swift
//  요세푸스 문제 0
//
//  Created by SeokHyun on 2023/07/07.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = input[0]
let k = input[1]

var arr: [Int] = Array(1...n)
var result = [Int]()
var current = 0

while !arr.isEmpty {
  current = (current+k-1) % arr.count
  let pop = arr.remove(at: current)
  result.append(pop)
}

print("<" + result.map{String($0)}.joined(separator: ", ") + ">")
