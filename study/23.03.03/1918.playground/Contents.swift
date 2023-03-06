import UIKit

var input: String = readLine() ?? "A+B*C-D/E"
var postfix = ""
var stack = [Character]()

for c in input {
    switch c {
        case "0"..."9", "a"..."z", "A"..."Z":
            postfix.append(c)
        case "+", "-", "*", "/":
            while let top = stack.last, (top == "*" || top == "/") && (c == "+" || c == "-") {
                postfix.append(stack.popLast()!)
            }
            stack.append(c)
        case "(":
            stack.append(c)
        case ")":
            while let top = stack.popLast(), top != "(" {
                postfix.append(top)
            }
        default:
            break
    }
}

while let top = stack.popLast() {
    postfix.append(top)
}

print(postfix)





