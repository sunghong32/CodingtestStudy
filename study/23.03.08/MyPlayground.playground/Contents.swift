import UIKit

//var input = 10
var input = readLine()!
var array: [Int] = []
var result: Int = 0

for i in 0...(Int(input) ?? 0) {
    if i < 2 {
        array.append(i)
    } else if i > 1 {
        array.append(array[i-2] + array[i-1])
    }
}

result = array.last ?? 0

print(result)

