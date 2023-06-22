//
//  10818.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/05/16.
//

import Foundation

let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map { Int(String($0))! }
print(arr.min()!, arr.max()!)
