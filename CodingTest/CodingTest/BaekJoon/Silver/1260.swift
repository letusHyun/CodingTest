//
//  1260.swift
//  DFS와 BFS
//
//  Created by SeokHyun on 2023/06/23.
//

import Foundation

let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
let N = input[0]
let M = input[1]
let V = input[2]

var graph = Array(repeating: Array(repeating: false, count: N+1), count: N+1)
var isVisited = Array(repeating: false, count: N+1)

// graph 정보 입력
for _ in 0..<M {
  let edges = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
  graph[edges[0]][edges[1]] = true
  graph[edges[1]][edges[0]] = true
}

func dfs(_ vertex: Int) {
  isVisited[vertex] = true // vertex 방문처리
  print(vertex, terminator: " ")

  for i in 1..<N+1 {
    // 방문한 적 없고, 그래프에서 갈 수 있는 곳이라면
    if !isVisited[i], graph[vertex][i] {
      dfs(i)
    }
  }
}

func bfs(_ start: Int) {
  var queue = [Int]()
  
  isVisited[start] = true // 방문 처리
  queue.append(start) // enqueue
  
  // queue가 비어있을 때까지
  while !queue.isEmpty {
    let first = queue.removeFirst()
    print(first, terminator: " ") // dequeue
    
    for i in 1..<N+1 {
      // 방문한 적 없고, 만들어진 노드라면
      if !isVisited[i], graph[first][i] {
        isVisited[i] = true
        queue.append(i)
      }
    }
  }
}

dfs(V)
print()

isVisited = Array(repeating: false, count: N+1) // 방문 초기화

bfs(V)
