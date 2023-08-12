//
//  1912.swift
//  연속합
//
//  Created by SeokHyun on 2023/08/12.
//

let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int(String($0))!}
var d = Array(repeating: 0, count: n)

d[0] = arr[0]
for i in 1..<n {
  d[i] = max(d[i-1]+arr[i], arr[i])
}

print(d.max()!)
