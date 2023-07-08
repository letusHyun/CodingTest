//
//  1012.swift
//  유기농 배추
//
//  Created by SeokHyun on 2023/07/02.
//

import Foundation

let t = Int(readLine()!)!
// 상 하 좌 우
let dy = [-1, 1, 0, 0]
let dx = [0, 0, -1, 1]
var width = 0
var height = 0
var isVisited = [[Bool]]()
var graph = [[Bool]]()

for _ in 0..<t {
  let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
  width = input[0]
  height = input[1]
  let baeChuCount = input[2]
  graph = Array(repeating: Array(repeating: false, count: width), count: height)
  isVisited = Array(repeating: Array(repeating: false, count: width), count: height)
  var count = 0
  // 배추 심기 in graph
  _ = (0..<baeChuCount).map { _ in
    let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
    graph[input[1]][input[0]] = true
  }
  
  // graph 순회
  for y in 0..<height {
    for x in 0..<width {
      if dfs(x, y) { // dfs 성공하면
        count += 1
      }
    }
  }
  print(count)
}

func dfs(_ x: Int, _ y: Int) -> Bool {
  if x<0 || x>=width || y<0 || y>=height { return false }
  else if !isVisited[y][x], graph[y][x] { // 방문한 적 없고, 배추 심어져 있으면
    isVisited[y][x] = true // 방문 처리
    for i in 0..<4 {
      _ = dfs(x + dx[i], y + dy[i]) // 상하좌우 dfs 탐색
    }
    return true // dfs 성공적으로 끝마침
  } else { return false }
}
