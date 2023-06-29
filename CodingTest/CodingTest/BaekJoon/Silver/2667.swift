//
//  2667.swift
//  단지번호붙이기
//
//  Created by SeokHyun on 2023/06/25.
//

import Foundation

let length = Int(readLine()!)!
var graph = Array(repeating: [Int](), count: length)
_ = (0..<length).map {graph[$0] = readLine()!.map{Int(String($0))!}}
var isVisited = Array(repeating: Array(repeating: false, count: length), count: length)

// 상, 하, 좌, 우
let dx = [0,0,-1,1]
let dy = [-1,1,0,0]
var villages = [Int]()
var houseCount = 0

for y in 0..<length {
  for x in 0..<length {
    if graph[y][x] != 0 && !isVisited[y][x] { // 벽이 아니고, 방문한 적 없으면
      villages.append(dfs(x, y))
      houseCount = 0 // 재사용을 위해 초기화
    }
  }
}

func dfs(_ x: Int, _ y: Int) -> Int {
  // 그래프 범위 안, 방문한 적 없음, 벽이 아님
  if !(x<0 || x>=length || y<0 || y>=length) && !isVisited[y][x] && graph[y][x] != 0 {
    isVisited[y][x] = true // 방문 표시
    houseCount += 1
    
    for i in 0..<4 {
      let nx = dx[i] + x
      let ny = dy[i] + y
      _ = dfs(nx, ny)
    }
  }
  return houseCount
}

print(villages.count) // 총 단지 수
for house in villages.sorted() {
  print(house) // 단지 내 집의 수
}
