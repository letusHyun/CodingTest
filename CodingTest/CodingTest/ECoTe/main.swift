//
//  실전문제3.swift
//  음료수 얼려 먹기
//
//  Created by SeokHyun on 2023/06/23.
//

import Foundation

let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
let N = input[0]
let M = input[1]
let V = input[2]

var graph = Array(repeating: Array(repeating: false, count: N+1), count: N+1)
var visited = Array(repeating: false, count: N+1)

// graph 정보 입력
for _ in 0..<M {
  let edges = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
  graph[edges[0]][edges[1]] = true
  graph[edges[1]][edges[0]] = false
}

func dfs(_ index: Int) {
  visited[index] = true // 시작 vertex 방문처리
  print(index, terminator: " ")
  
  for i in 1..<N+1 {
    // 방문된 적 없고, 그래프에서 갈 수 있는 곳이라면
    if !visited[i], graph[index][i] {
      dfs(i)
    }
  }
}

dfs(V)
