//
//  main.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/09/10.
//

func bt(_ index: Int, _ letter: String) {
  if index >= input.count {
    print(letter.split(separator: "").map{String($0)}.joined(separator: " "))
    return
  }
  
  let n = input[index] // 4
  let chars = keyPad[n]!
  for char in chars { // A B C
    bt(index+1, letter + char)
  }
}

let input = readLine()!.map{Int(String($0))!}
var result = [String]()
var keyPad = [
  2: ["A", "B", "C"],
  3: ["D", "E", "F"],
  4: ["G", "H", "I"],
  5: ["J", "K", "L"],
  6: ["M", "N", "O"],
  7: ["P", "Q", "R", "S"],
  8: ["T", "U", "V"],
  9: ["W", "X", "Y", "Z"]
]
bt(input.startIndex, "")
