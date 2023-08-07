//
//  12101.swift
//  1,2,3더하기 2
//
//  Created by SeokHyun on 2023/08/04.
//

import Foundation

let nk = readLine()!.split{$0==" "}.map{Int(String($0))!}
let n = nk[0]
let k = nk[1]
var d = Array(repeating: [String](), count: 11)

d[1].append("1")
d[2].append("1+1")
d[2].append("2")
d[3].append("1+1+1")
d[3].append("1+2")
d[3].append("2+1")
d[3].append("3")

if n >= 4 {
  for i in 4...n {
    for j in 1...3 {
      _ = d[i-j].map{ d[i].append($0 + "+\(j)") }
    }
  }
}
d[d.index(d.startIndex, offsetBy: n)].sort(by: <)

if k <= d[n].endIndex {
  print(d[n][d.index(d.startIndex, offsetBy: k-1)])
} else {
  print("-1")
}

