//
//  14500.swift
//  테트로미노
//
//  Created by SeokHyun on 2023/09/06.
//

let size = readLine()!.split{$0==" "}.map{Int(String($0))!}
let height = size[0]
let width = size[1]

var board = Array(repeating: [Int](), count: height)
_ = (0..<height).map{ board[$0] = readLine()!.split{$0==" "}.map{Int(String($0))!} }
var maxSum = 0

for i in 0..<height {
  for j in 0..<width {
    var curSum = 0
    // ㅡ
    if j+3 < width {
      curSum = board[i][j] + board[i][j+1] + board[i][j+2] + board[i][j+3]
      maxSum = max(maxSum, curSum)
    }
    if i+3 < height {
      curSum = board[i][j] + board[i+1][j] + board[i+2][j] + board[i+3][j]
      maxSum = max(maxSum, curSum)
    }
    // L
    if i+2 < height, j+1 < width {
      curSum = board[i][j] + board[i+1][j] + board[i+2][j] + board[i+2][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i+1 < height, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i][j+2] + board[i+1][j]
      maxSum = max(maxSum, curSum)
    }
    if i+2 < height, j+1 < width {
      curSum = board[i][j] + board[i][j+1] + board[i+1][j+1] + board[i+2][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i >= 1, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i][j+2] + board[i-1][j+2]
      maxSum = max(maxSum, curSum)
    }
    if i >= 2, j+1 < width {
      curSum = board[i][j] + board[i][j+1] + board[i-1][j+1] + board[i-2][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i+1 < height, j+2 < width {
      curSum = board[i][j] + board[i+1][j] + board[i+1][j+1] + board[i+1][j+2]
      maxSum = max(maxSum, curSum)
    }
    if i+2 < height, j+1 < width {
      curSum = board[i][j] + board[i][j+1] + board[i+1][j] + board[i+2][j]
      maxSum = max(maxSum, curSum)
    }
    if i+1 < height, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i][j+2] + board[i+1][j+2]
      maxSum = max(maxSum, curSum)
    }
    // ㄹ
    if i+2 < height, j+1 < width {
      curSum = board[i][j] + board[i+1][j] + board[i+1][j+1] + board[i+2][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i >= 1, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i-1][j+1] + board[i-1][j+2]
      maxSum = max(maxSum, curSum)
    }
    if i >= 2, j+1 < width {
      curSum = board[i][j] + board[i-1][j] + board[i-1][j+1] + board[i-2][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i+1 < height, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i+1][j+1] + board[i+1][j+2]
      maxSum = max(maxSum, curSum)
    }
    // ㅗ
    if i >= 1, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i-1][j+1] + board[i][j+2]
      maxSum = max(maxSum, curSum)
    }
    if i+2 < height, j+1 < width {
      curSum = board[i][j] + board[i+1][j] + board[i+1][j+1] + board[i+2][j]
      maxSum = max(maxSum, curSum)
    }
    if i+1 < height, j+2 < width {
      curSum = board[i][j] + board[i][j+1] + board[i][j+2] + board[i+1][j+1]
      maxSum = max(maxSum, curSum)
    }
    if i+2 < height, j >= 1 {
      curSum = board[i][j] + board[i+1][j-1] + board[i+1][j] + board[i+2][j]
      maxSum = max(maxSum, curSum)
    }
    // ㅁ
    if i+1 < height, j+1 < width {
      curSum = board[i][j] + board[i][j+1] + board[i+1][j] + board[i+1][j+1]
      maxSum = max(maxSum, curSum)
    }
  }
}

print(maxSum)
