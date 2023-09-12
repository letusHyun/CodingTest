//
//  15649.swift
//  N과M(1)
//
//  Created by SeokHyun on 2023/09/10.
//

func bt(_ num: Int) {
  visited[num] = true
  buffer.append(num)
  
  if buffer.count >= m {
    print(buffer.map{String($0)}.joined(separator: " "))
    return
  }
  
  for i in 1...n {
    if visited[i] {
      continue
    }
    
    bt(i)
    visited[i] = false
    _ = buffer.popLast()
  }
}

let nm = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = nm[0]
let m = nm[1]
var visited = Array(repeating: false, count: n+1)
var buffer = [Int]()

for i in 1...n {
  bt(i)
  buffer.removeLast()
  visited[i] = false
}
