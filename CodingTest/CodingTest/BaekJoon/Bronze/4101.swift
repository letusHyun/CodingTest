//
//  4101.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/17.
//

import Foundation

var input = readLine()!.split(separator: " ").map { Int(String($0))! }

while input[0] != 0 && input[1] != 0 {
  if input[0] > input[1] {
    print("Yes")
  } else { print("No") }
  input = readLine()!.split(separator: " ").map { Int(String($0))! }
}
