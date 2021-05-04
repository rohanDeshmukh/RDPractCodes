import UIKit
import Foundation



//let dict = ["A": 123, "B": 789, "C": 567, "D": 432]
//
//print(dict)
//
//let dictKeyInc = dict.sorted(by: <)
//let dictKeyDec = dict.sorted(by: >)
//
//print(dictKeyInc)
//print(dictKeyDec)


// Binary 10
//guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//else { fatalError("Bad input") }

//let str = String(125, radix: 2)
//print(str)
//var vcharArr = [Int]()
//for vchar in str {
//    var intChar = Int(vchar!)
//    if  intChar == 1 {
//        vcharArr.append(intChar)
//    }
//}
//print(vcharArr)

//let n = 3//Int(readLine()!)!
//var phoneBook = [String: String]()
//
///// Create Phone Book
//for _ in 0..<n {
//    let user = readLine()!
//    let data = user.split(separator: " ").compactMap { String($0) }
//
//    phoneBook[data[0]] = data[1]
//}
//
///// Print the associated entry from phone book on a new line in the form name=phoneNumber,
///// if an entry is not found, print Not found instead.
//for _ in 0..<n {
//    guard let name = readLine() else { break }
//    if let phone = phoneBook[name] {
//        print("\(name)=\(phone)")
//    } else {
//        print("Not found")
//    }
//}


//let numStrings = 2//Int(readLine()!)!
//
//func printEvenAndOdd(string: String) {
//    // This prints inputString to stderr for debugging:
//    fputs("string: " + string + "\n", stderr)
//
//    // Print the even-indexed characters
//    // Write your code here
//    for (index,charEl) in string.enumerated() {
//        guard index % 2 == 0 else {
//            continue
//        }
//        print(charEl, terminator: "")
//    }
//    // Print a space
//    print(" ", terminator: "")
//
//    // Print the odd-indexed characters
//    // Write your code here
//    for (index,charEl) in string.enumerated() {
//        guard index % 2 != 0 else {
//            continue
//        }
//        print(charEl, terminator: "")
//    }
//    // Print a newline
//    print()
//}
//
//for _ in 1...numStrings {
//    let inputString = "Hacker" //readLine()!
//    printEvenAndOdd(string: inputString)
//}


//class Person {
//    var age: Int = 0
//
//    init(initialAge: Int) {
//        // Add some more code to run some checks on initialAge
//        if initialAge < 0 {
//            age = 0
//            print("Age is not valid")
//        }else {
//            age = initialAge
//            print("Age is valid")
//        }
//
//    }
//
//    func amIOld() {
//        switch age {
//        case 0..<13:
//            print("You are young.")
//        case 13..<18:
//            print("You are a teenager.")
//        default:
//            print("You are old.")
//        }
//    }
//
//    func yearPasses() {
//        // Increment the age of the person in here
//        self.age += 1
//    }
//}
//
//var person = Person(initialAge: -4)
//
//let t = Int(readLine()!)!
//for _ in 0..<t {
//    let age = Int(readLine()!)!
//    let p = Person(initialAge: age)
//
//    p.amIOld()
//
//    for _ in 1...3 {
//        p.yearPasses()
//    }
//
//    p.amIOld()
//
//    print("")
//}

//func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
//
//    let tip = meal_cost * Double(tip_percent)/100
//    let tax = meal_cost * Double(tax_percent)/100
//    let total_cost = meal_cost + tip + tax
//    print(Int(total_cost.rounded(.toNearestOrAwayFromZero)))
//
//}
//solve(meal_cost: 12.00, tip_percent: 20, tax_percent: 8)

//func staircase(n: Int) -> Void {
//    var stairs = String()
//    // iterate over range of 1 and n
//    for step in (1...n).reversed() {
//        // repeat \s and # accordingly
//        print(step-1, n+1-step)
//        stairs += String(repeating: " ", count: step - 1) + String(repeating: "#", count: n + 1 - step) + "\n"
//    }
//
//    print(stairs)
//
//}
//
//staircase(n: 6)


//var str = "Hello, playground"
// str = INT

//“{[]}”
// “{(]}”
// “(){}[]"

//func checkBal(stringInput: String) -> Bool {
//  var tempStr = [Character]()
//    var mapTemStr:[Character:Character] = ["{":"[","]":"}"]
//  for tempChar in stringInput{
//    if stringInput.contains(tempChar){
//      tempStr.append(tempChar)
//    }
//    else{
//      if tempStr.count != 0 {
//        return false
//      }
//      else if let reverse = tempStr.last, reverse == tempStr[tempChar] {
//          return reverse.popLast()
//      }else {
//        return false
//      }
//    }
//    return tempStr.isEmpty
//  }
//}

//func diagonalDifference(arr: [[Int]]) -> Int {
//    let n =  arr.count
//    var primaryDiagonalSum = 0
//    var secondaryDiagonalSum = 0
//
//    for index in 0..<n {
//        primaryDiagonalSum   +=  arr[index][index]
//        print(arr[index])
//        print(arr[index][index])
//
//        secondaryDiagonalSum +=  arr[index][n-index-1]
//        print(arr[index])
//        print(arr[index][n-index-1])
//    }
//    let difference = abs(primaryDiagonalSum - secondaryDiagonalSum)
//    print("1",primaryDiagonalSum)
//    print("2",secondaryDiagonalSum)
//
//    return difference
//}
//
//diagonalDifference(arr: [[1,2,3],[1,2,3],[1,2,3]])

//func plusMinus(arr: [Int]) -> Void {
//
//    let cnt = arr.count
//    var positiveArr = 0.0, negativeArr = 0.0, zeroArr = 0.0
//
//    for index in 0..<cnt {
//        if arr[index] > 0{
//            positiveArr += 1
//        }else if arr[index] < 0 {
//            negativeArr += 1
//        }else {
//            zeroArr += 1
//        }
//    }
//    let totalNum = positiveArr + negativeArr + zeroArr
//
//    print(String(format: "%.6f", (positiveArr/totalNum)))
//    print(String(format: "%.6f", (negativeArr/totalNum)))
//    print(String(format: "%.6f", (zeroArr/totalNum)))
//}
//
//plusMinus(arr: [1,1,3,0,0,-2,-5,9,-6])
