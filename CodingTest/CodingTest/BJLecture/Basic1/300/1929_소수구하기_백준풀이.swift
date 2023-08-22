//
//  1929.swift
//  소수 구하기
//
//  Created by SeokHyun on 2023/07/31.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let start = input[0]
let end = input[1]
var isChecked = Array(repeating: false, count: 1_000_001)
var primeArr = [Int]()

for num in 2...end {
  if isChecked[num] == false { // 지워져 있지 않으면,
    if start <= num { // start보다 큰 소수의 경우에만
      primeArr.append(num) // 소수 추가
    }
    
    var j = num*num // i*2 or i+i
    while j <= end {
      isChecked[j] = true
      j += num // 배수만큼 index를 건너뜀
    }
  }
}

print(primeArr.map{String($0)}.joined(separator: "\n"))

// 에라토스테네스의 체 시간복잡도: O(NloglogN)
