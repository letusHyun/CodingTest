//
//  17413.swift
//  단어뒤집기2
//
//  Created by SeokHyun on 2023/07/26.
//

import Foundation

let input = readLine()!
var stack = [Character]()
var isTagged = false

func printStack(_ stack: inout [Character]) {
  while !stack.isEmpty {
    print(stack.popLast()!, terminator: "")
  }
}

for char in input {
  if char == "<" {
    printStack(&stack)
    isTagged = true
    print(char, terminator: "")
  } else if char == ">" {
    isTagged = false
    print(char, terminator: "")
  } else if isTagged {
    print(char, terminator: "")
  } else if char == " " { // 공백이 나오면,
    printStack(&stack) // 단어 뒤집어서 출력
    print(" ", terminator: "")
  } else {
    stack.append(char)
  }
}
printStack(&stack) // stack이 비어있지 않을 수 있기 때문에 stack 출력

// 최악의 경우 모든 글자가 stack에 한번씩 들어갔다 나옴
// O(N)
