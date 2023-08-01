//
//  1463.swift
//  1로만들기Topdown
//
//  Created by SeokHyun on 2023/08/01.
//

import Foundation

let input = Int(readLine()!)!
var d = Array(repeating: 0, count: input+1)

// TopDown
func run(_ n: Int) -> Int {
  if n == 1 { // 재귀호출 종료조건
    return 0
  }
  if d[n] > 0 { // 메모이제이션 수행
    return d[n]
  }
  
  d[n] = run(n-1) + 1 // case 1.
  
  if n%2 == 0 { // 2의 배수라면 // case 2.
    let temp = run(n/2) + 1
    if d[n] > temp { // -1연산한 값보다 /2연산한 값이 더 작으면 재설정
      d[n] = temp
    }
  }
  
  if n%3 == 0 { // case 3.
    let temp = run(n/3) + 1
    if d[n] > temp { // -1연산한값과 /2연산한 값보다, /3연산한 값이 더 작으면 재설정
      d[n] = temp
    }
  }
  return d[n]
}

print(run(input))

// O(N)
