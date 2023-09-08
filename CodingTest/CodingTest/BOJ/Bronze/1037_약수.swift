//
//  1037.swift
//  약수
//
//  Created by SeokHyun on 2023/08/28.
//

let n = Int(readLine()!)!
var a = readLine()!.split{$0==" "}.map{Int(String($0))!}
a.sort()
print(a.first! * a.last!)
