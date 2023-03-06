import UIKit

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,k) = (input[0],input[1])
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var result = 0
var pSum = 0
var sumDict: [Int: Int] = [:]

for i in 0..<n {
    pSum += arr[i]

    if pSum == k {
        result += 1
    }

    if let value = sumDict[pSum - k] {
        result += value
    }

    if let value = sumDict[pSum] {
        sumDict[pSum] = value + 1
    } else {
        sumDict[pSum] = 1
    }
}

print(result)
