//
//  2606.swift
//  바이러스
//
//  Created by SeokHyun on 2023/07/02.
//

import Foundation

let length = Int(readLine()!)!
let edgeCount = Int(readLine()!)!
var graph = Array(repeating: Array(repeating: 0, count: length+1), count: length+1)
var vertex = [Int]()
var isVisited = Array(repeating: false, count: length+1)
// 인접 행렬
for _ in 0..<edgeCount {
  vertex = readLine()!.split{$0==" "}.map{Int(String($0))!}
  graph[vertex[0]][vertex[1]] = 1
  graph[vertex[1]][vertex[0]] = 1
}

func dfs(_ vertex: Int) {
  isVisited[vertex] = true
  
  for i in 1...length { // 인접 행렬의 열 순회
    if !isVisited[i], graph[vertex][i] == 1 { // 방문한 적이 없고, 1이 지정되어 있는 곳이라면
      dfs(i)
    }
  }
}

dfs(1) // 1부터 시작
print(isVisited.filter{$0==true}.count - 1) // 방문 표시 count - 컴퓨터1 자신
