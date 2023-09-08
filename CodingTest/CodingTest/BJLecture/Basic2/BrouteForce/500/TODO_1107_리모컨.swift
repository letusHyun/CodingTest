//
//  1107.swift
//  리모컨
//
//  Created by SeokHyun on 2023/09/05.
//

// 100은 3자리 눌러야 한다.

let ch = readLine()!
let count = readLine()!
let numbers = readLine()!.split{$0==" "}.map{Int(String($0))!}
