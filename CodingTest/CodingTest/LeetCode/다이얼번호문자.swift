//
//  다이얼번호문자.swift
//  CodingTest
//
//  Created by SeokHyun on 2023/09/10.
//

func bt(_ index: Int, _ letter: String) {
  if index >= input.count { // input의 index 범위 넘어가면 끝인것을 인지하고, 해당 문자열을 출력하고 반환 (back tracking의 back에 해당)
    print(letter.split(separator: "").map{String($0)}.joined(separator: " "))
    return
  }
  
  let n = input[index]
  let chars = keyPad[n]!
  for char in chars {
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
