//
//  9498.swift
//  시험 성적
//
//  Created by SeokHyun on 2023/06/28.
//

import Foundation

let score = Int(readLine()!)!
switch score {
case 90...100:
  print("A")
case 80...89:
  print("B")
case 70...79:
  print("C")
case 60...69:
  print("D")
default:
  print("F")
}
