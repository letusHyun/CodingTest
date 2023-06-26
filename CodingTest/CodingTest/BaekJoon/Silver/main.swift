//
//  2667ver2.swift
//  단지번호붙이기
//
//  Created by SeokHyun on 2023/06/26.
//

import Foundation

let length = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: length)
_ = (0..<length).map{graph[$0] = readLine()!.map{Int(String($0))!}}

var stack = [Int]()
var villages = [Int]()
for y in 0..<length {
  for x in 0..<length {
    if graph[y][x] == 0
    villages.append(dfs(x, y))
  }
}
