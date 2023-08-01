//
//  25305.swift
//  커트라인
//
//  Created by SeokHyun on 2023/08/01.
//

import Foundation

let input = readLine()!.split{$0==" "}.map{Int(String($0))!}
var arr = readLine()!.split{$0==" "}.map{Int(String($0))!}

arr.sort(by: >)
print(arr[input[1]-1])
