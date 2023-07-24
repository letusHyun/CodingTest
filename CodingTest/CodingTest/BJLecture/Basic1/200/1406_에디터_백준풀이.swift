//
//  1406.swift
//  에디터
//
//  Created by SeokHyun on 2023/07/22.
//

import Foundation

var Lstr = readLine()!
var Rstr = ""
let count = Int(readLine()!)!

for _ in 0..<count {
  let calc = readLine()!
  
  switch calc {
  case "L":
    if !Lstr.isEmpty {
      Rstr.append(Lstr.popLast()!)
    }
  case "D":
    if !Rstr.isEmpty {
      Lstr.append(Rstr.popLast()!)
    }
  case "B":
    if !Lstr.isEmpty {
      _ = Lstr.popLast()!
    }
  default: // "P"
    Lstr.append(String(calc.last!))
  }
}

print(Lstr+Rstr.reversed())
