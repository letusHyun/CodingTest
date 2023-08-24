//
//  3085.swift
//  사탕게임
//
//  Created by SeokHyun on 2023/08/24.
//

func check(_ bom: inout [[String]]) -> Int {
  var result = 0
  var count = 1
  
  // 행
  for i in 0..<n {
    count = 1
    for j in 1..<n {
      if bom[i][j-1] == bom[i][j] { // 인접한 곳이 같은 색이면
        count += 1
      } else { // 인접한 곳이 같은 색이 아니면
        count = 1 // 카운트 초기화
      }
      result = max(result, count)
    }
  }
  
  // 열
  for i in 0..<n {
    count = 1
    for j in 1..<n {
      if bom[j][i] == bom[j-1][i] { // 인접한 곳이 같은 색이면
        count += 1
      } else { // 인접한 곳이 같은 색이 아니면
        count = 1
      }
      result = max(result, count)
    }
  }
  
  return result
}

let n = Int(readLine()!)!
var bom = Array(repeating: Array(repeating: "", count: n), count: n)
_ = (0..<n).map{ bom[$0] = readLine()!.map{String($0)} }

var temp = ""
var result = 0
for i in 0..<n {
  for j in 0..<n-1 {
    // 아래쪽
    // 스왑
    temp = bom[j][i]
    bom[j][i] = bom[j+1][i]
    bom[j+1][i] = temp
    // 체크
    result = max(result, check(&bom))
    // 원상복구 (재스왑)
    temp = bom[j][i]
    bom[j][i] = bom[j+1][i]
    bom[j+1][i] = temp
    
    // 오른쪽
    bom[i].swapAt(j, j+1) // 스왑
    result = max(result, check(&bom)) //체크
    bom[i].swapAt(j, j+1) // 원상복구 (재스왑)
  }
}
print(result)
