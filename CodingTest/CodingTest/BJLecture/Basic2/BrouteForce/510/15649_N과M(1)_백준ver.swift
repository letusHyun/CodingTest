//
//  15649.swift
//  N과M(1)
//
//  Created by SeokHyun on 2023/09/10.
//

func bt(_ index: Int, _ n: Int, _ m: Int) {
  // 최대 자릿수를 넘으면, 출력하고 back
  if index >= m {
    print(arr.map{String($0)}.joined(separator: " "))
    return
  }
  
  for i in 1...n {
    if visited[i] { // 방문했으면 다음 숫자
      continue
    }
    
    // 방문하지 않은 경우
    visited[i] = true
    arr[index] = i
    bt(index+1, n, m)
    visited[i] = false
  }
}

let nm = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var visited = Array(repeating: false, count: n+1)
var arr = Array(repeating: 0, count: m)

bt(0, n, m)
