//
//  1021.swift
//  회전하는 ㅋ
//
//  Created by SeokHyun on 2023/07/18.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = input[0]
let m = input[1]
var arr = (1...n).map{$0}
var orders = readLine()!.split{$0==" "}.map{Int(String($0))!}
var count = 0

while !orders.isEmpty {
  let frontDistance = arr.firstIndex(of: orders.first!)!
  let backDistance = arr.count - frontDistance
  
  if frontDistance < backDistance {
    for _ in 0..<frontDistance {
      arr.append(arr.removeFirst())
      count += 1
    }
  } else {
      for _ in 0..<backDistance {
        arr.insert(arr.removeLast(), at: 0)
        count += 1
      }
    }
  arr.removeFirst()
  orders.removeFirst()
}

print(count)
