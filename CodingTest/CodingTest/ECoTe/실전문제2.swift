//
//  실전문제2.swift
//  왕실의 나이트
//
//  Created by SeokHyun on 2023/06/22.
//

import Foundation

// 좌좌상, 좌좌하, 상상좌, 상상우, 우우상, 우우하, 하하좌, 하하우
let steps = [(-2, -1), (-2, 1), (-1, -2), (1, -2), (2, -1), (2, 1), (-1, 2), (1, 2)]
let input = readLine()! // ex) a1
let row = Int(String(input[input.index(before: input.endIndex)]))! - 1 // y
let col = Int(input[input.startIndex].asciiValue!) - Int(Character("a").asciiValue!) // x

var count = 0

for step in steps {
  let nextRow = row + step.0
  let nextCol = col + step.1

  if nextRow >= 0, nextRow <= 7, nextCol >= 0, nextCol <= 7 {
    count += 1
  }
}

print(count)
