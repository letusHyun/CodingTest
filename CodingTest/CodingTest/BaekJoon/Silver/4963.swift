//
//  4963.swift
//  섬의 개수
//
//  Created by SeokHyun on 2023/06/28.
//

import Foundation

// 상, 좌상, 좌, 좌하, 하, 우하, 우, 우상
let dx = [0,-1,-1,-1,0,1,1,1]
let dy = [-1,-1,0,1,1,1,0,-1]

while true {
  let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
  let width = input[0]
  let height = input[1]
  if width == 0, height == 0 { break }
    
  // graph 초기화
  var graph = Array(repeating: [Int](), count: height)
  for i in 0..<height {
    graph[i] = readLine()!.split{$0==" "}.map{Int(String($0))!}
  }
  var isVisited = Array(repeating: Array(repeating: false, count: width), count: height)
  var count = 0

  // 순회
  for y in 0..<height {
    for x in 0..<width {
      if dfs(x, y, graph, &isVisited) {
        count += 1
      }
    }
  }
  print(count)
}

func dfs(_ x: Int, _ y: Int, _ graph: [[Int]], _ isVisited: inout [[Bool]]) -> Bool {
  if x < 0 || x >= graph[0].count || y < 0 || y >= graph.count { // 그래프 범위 넘으면 종료
    return false
  } else if graph[y][x] == 0 { // 벽이면 종료
    return false
  } else if !isVisited[y][x] { // 방문한 적 없으면
    isVisited[y][x] = true // 방문표시
    for i in 0..<8 { // dfs 시작
      _ = dfs(x + dx[i], y + dy[i], graph, &isVisited)
    }
    return true // dfs 완료 표시
  } else { // 방문한 적 있으면
    return false
  }
}
