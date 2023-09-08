//
//  6064.swift
//  카잉 달력
//
//  Created by SeokHyun on 2023/09/06.
//

//x가 m이 되면 1로 변환
//y가 n이 되면 1로 변환
//
//x와 y가 result와 같아지면 counting 개수 반환

let count = Int(readLine()!)!

for _ in 0..<count {
  var mnxy = readLine()!.split{$0==" "}.map{Int(String($0))!}
  let m = mnxy[0]
  let n = mnxy[1]
  let x = mnxy[2]
  let y = mnxy[3]
  
  var curX = 0
  var curY = 0
  var result = 0
  
  while !(curX == x && curY == y) {
    if curX > m {
      curX = 1
    }
    if curY > n {
      curY = 1
    }
    curX += 1
    curY += 1
    result += 1
    
    if result >= 7999 {
      print(-1)
      break
    }
  }
  print(result)
}
