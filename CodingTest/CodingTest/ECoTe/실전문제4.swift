//
//  main.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/06/24.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let height = 5
let width = 6
var graph = Array(repeating: Array(repeating: 0, count: width), count: height)
_ = (0..<height).map{graph[$0] = readLine()!.map{Int(String($0))!}}

//상하좌우
let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

func bfs(_ x: Int, _ y: Int) -> Int {
  var queue = [(Int, Int)]()
  var nx = 0
  var ny = 0
  var x = x
  var y = y
  queue.append((x, y)) // start
  while !queue.isEmpty { //queue가 빌 때까지 반복
    (x, y) = queue.remove(at: 0)
    for i in 0..<4 {
      nx = dx[i] + x
      ny = dy[i] + y
      
      // 그래프 범위 벗어나거나 0,0인 경우 무시
      if nx < 0 || nx >= width || ny < 0 || ny >= height || (nx == 0 && ny == 0) {
        continue
      }
      if graph[ny][nx] == 0 { // 벽인 경우 무시
        continue
      }
      if graph[ny][nx] == 1 { // 처음 방문한 노드면
        graph[ny][nx] = graph[y][x] + 1 // 카운팅 (노드 갱신)
        queue.append((nx, ny))
      }
    }
  }
  
  return graph[height-1][width-1]
}

print(bfs(0,0))
