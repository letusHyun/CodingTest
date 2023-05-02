//
//  Part2_3.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/04/12.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let N = input[0] //가로 길이, 열의 전체 개수
let M = input[1] //세로 길이, 행의 전체 개수

var arr: [[Int]] = []

for _ in 0..<N {
  let row = readLine()!.split(separator: " ").map { Int(String($0))! }
  arr.append(row)
}

var colArr: [Int] = []

for i in 0..<N {
  colArr.append(arr[i].min()!)
}

print(colArr.max()!)

//1. 행에서 가장 작은 값 select
//2. 모든 행에 적용하고 그중 제일 큰 값 select
