//
//  Part2_2.swift
//  실전문제 큰 수의 법칙
//
//  Created by SeokHyun on 2023/04/11.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
let M = input[1]
let K = input[2]

var output = readLine()!.components(separatedBy: " ").map { Int($0)! }
output.sort() // O(NlogN)

let largest = output[N-1]
let larger = output[N-2]

var sum = 0
var count = 0

for _ in 0..<M {
  if count == K {
    sum += larger
    count = 0
  } else {
    sum += largest
    count += 1
  }
}

print(sum)

// 중복 허용해서 큰 수 2개 뽑기
// K 만큼 제일 큰 수 더하고, 2nd 수를 한번 더하기 -> 반복
  // 총 M번 더하기
