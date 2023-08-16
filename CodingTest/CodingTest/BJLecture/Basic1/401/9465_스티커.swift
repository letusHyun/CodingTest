//
//  9465.swift
//  스티커
//
//  Created by SeokHyun on 2023/08/16.
//

let count = Int(readLine()!)!

for _ in 0..<count {
  let n = Int(readLine()!)!
  var s = Array(repeating: [Int](), count: 2)
  _ = (0..<2).map{ s[$0] = readLine()!.split{$0==" "}.map{Int(String($0))!} }
  
  // d[][0]: 1행 스티커, d[][1]: 2행 스티커, d[][2]: 스티커를 고르지 않음
  // d[n][k]의 의미: n번째 때 k라는 case를 실행했을 때의 최댓값
  var d = Array(repeating: Array(repeating: 0, count: 3), count: n)
  
  // 초기 설정
  d[0][0] = s[0][0]
  d[0][1] = s[1][0]
  
  if n == 1 {
    print(max(d[0][0], d[0][1]))
  } else {
    for i in 1..<n {
      d[i][0] = max(d[i-1][1], d[i-1][2]) + s[0][i]
      d[i][1] = max(d[i-1][0], d[i-1][2]) + s[1][i]
      d[i][2] = max(d[i-1][0], d[i-1][1])
    }
    print(max(d[n-1][0], d[n-1][1], d[n-1][2]))
  }
}
