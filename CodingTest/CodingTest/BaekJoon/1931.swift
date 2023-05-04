//
//  1931.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/03.
//

import Foundation

// 활동 선택 문제 (그리디)
//  - ex) 시간표를 최대한 많이 배정하거나 선택하는 문제

// 1. 종료시간을 기준으로 정렬

// 2. [선택 조건]
  // 종료 시간이 가장 작은 순부터 큰 순으로, 선택
  // 회의 시간 중복 x
  // 선택 가능한 회의들 중에서 종료 시간이 같은 회의들이 있는 경우, 회의 시간이 짧은 것을 먼저 선택
  // 만약 종료 시간이 같은 회의들 중에서, 시작과 동시에 끝나는 회의가 있다면, 그 회의는 마지막에 선택
  // 다음 선택조건: 가장 최근 회의의 종료 시간을 포함하지 않는 회의중, 종료 시간이 제일 짧은 회의 선택

let height = Int(readLine()!)!

var arr2d = (0..<height).map { _ in
  readLine()!.split(separator: " ").map { Int(String($0))! }
}

arr2d.sort {
  if $0[1] != $1[1] { //2열이 다른 경우,
    return $0[1] < $1[1] // 2열 오름차순 정렬
  } else { // 2열 같은 경우,
    return $0[0] < $1[0] // 1열 오름차순 정렬
  }
}

var count = 0
var prevEndTime = 0

for i in stride(from: 0, to: arr2d.count, by: 1) {
  if prevEndTime <= arr2d[i][0] { // 최근 회의 종료 시간이 다음 회의 시작 시간보다 작거나 같은 경우
    prevEndTime = arr2d[i][1] // 채택
    count += 1
  }
}

print(count)
