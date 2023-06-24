//
//  실전문제3.swift
//  음료수 얼려 먹기
//
//  Created by SeokHyun on 2023/06/23.
//

import Foundation

let input = readLine()!.split{$0 == " "}.map{Int(String($0))!}
let height = input[0] // N
let width = input[1] // M

var graph = Array(repeating: Array(repeating: 1, count: width), count: height)
for i in 0..<height {
  graph[i] = readLine()!.map{Int(String($0))!}
}

var count = 0

for y in 0..<height {
  for x in 0..<width {
    if dfs(x, y) {
      count += 1
    }
  }
}

print(count)

func dfs(_ x: Int, _ y: Int) -> Bool {
  // 그래프 범위 밖을 벗어나면 종료
  if x <= -1 || x >= width || y <= -1 || y >= height {
    return false
  } else if graph[y][x] == 0 { // 방문하지 않았다면
    graph[y][x] = 1 // 방문처리 후,
    // 상,하,좌,우 위치 재귀 호출
    // 이때 재귀 호출의 역할: 방문처리 하지 않은 곳을 방문처리함
    _ = dfs(x, y - 1)
    _ = dfs(x, y + 1)
    _ = dfs(x - 1, y)
    _ = dfs(x + 1, y)
    return true
  } else { return false }
}

// 상하좌우 탐색
// 방문하지 않았으면 -> 방문처리
