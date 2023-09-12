//
//  15650.swift
//  N과M(2)
//
//  Created by SeokHyun on 2023/09/10.
//

func bt(_ index: Int, _ start: Int, _ n: Int, _ m: Int) {
  // 최대범위 넘기면, 출력하고 back
  if index >= m {
    print(arr.map{String($0)}.joined(separator: " "))
    return
  }
  
  for i in start..<n+1 {
    // 방문여부
    if visited[i] {
      continue
    }
    
    visited[i] = true
    arr[index] = i
    
    bt(index+1, i+1, n, m)
    visited[i] = false
  }
}

let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var visited = Array(repeating: false, count: n+1)
var arr = Array(repeating: 0, count: m)

bt(0, 1, n, m)
