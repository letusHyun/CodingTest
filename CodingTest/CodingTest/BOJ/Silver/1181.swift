//
//  1181.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/06/02.
//

import Foundation

let count = Int(readLine()!)!
var strArr = [String]()

for _ in 0..<count {
  strArr.append(readLine()!)
}
var set = Set(strArr)
var removedDuplicationArr = Array(set) // 중복 제거

removedDuplicationArr.sort { $0.count < $1.count } // 길이 짧은 것 부터
removedDuplicationArr.sort { first, second -> Bool in // 길이가 같으면 사전 순
  if first.count == second.count {
    return first < second
  } else { return false }
}

removedDuplicationArr.forEach {
  print($0)
}
