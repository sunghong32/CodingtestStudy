let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0]
let m = input[1]
var array:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for r in 0..<n {
    let given = readLine()!.split(separator: " ").map{Int(String($0))!}
    for c in 0..<m {
        array[r][c] = given[c]
    }
}

var problems:[[Int]] = []
let numberOfCount = Int(readLine()!)!

for _ in 0..<numberOfCount {
    let given = readLine()!.split(separator: " ").map{Int(String($0))!-1}
    problems.append(given)
}
var sumArray:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

for r in 0..<n {
    var sum = 0
    for c in 0..<m{
        sum += array[r][c]
        sumArray[r][c] = sum
    }
}

for i in problems {
    var sum = 0
    let originRow = i[0]
    let originCol = i[1]
    let destinationRow = i[2]
    let destinationCOl = i[3]

    for r in originRow...destinationRow {
        sum += (sumArray[r][destinationCOl] - sumArray[r][originCol] + array[r][originCol])
    }
    print(sum)
}
