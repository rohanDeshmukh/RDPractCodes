//import UIKit

//var str = "Hello, playground"

//Stack

//public struct Stack<T> {
//  fileprivate var array = [T]()
//
//  public var isEmpty: Bool {
//    return array.isEmpty
//  }
//
//  public var count: Int {
//    return array.count
//  }
//
//  public mutating func push(_ element: T) {
//    array.append(element)
//  }
//
//  public mutating func pop() -> T? {
//    return array.popLast()
//  }
//
//  public var top: T? {
//    return array.last
//  }
//}
//
//var stack = Stack<Any>()
//
//stack.push(10)
//stack.push(11)
//stack.push(12)
//print(stack.pop() as Any)
//print(stack)

//Queue

//public struct Queue<T> {
//  fileprivate var array = [T]()
//
//  public var isEmpty: Bool {
//    return array.isEmpty
//  }
//
//  public var count: Int {
//    return array.count
//  }
//
//  public mutating func enqueue(_ element: T) {
//    array.append(element)
//  }
//
//  public mutating func dequeue() -> T? {
//    if isEmpty {
//      return nil
//    } else {
//      return array.removeFirst()
//    }
//  }
//
//  public var front: T? {
//    return array.first
//  }
//}
//
//var queue = Queue<Any>()
//
//queue.enqueue(10)
//queue.enqueue(20)
//queue.enqueue(30)
//queue.enqueue(40)
//print(queue)
//queue.dequeue()
//print(queue)

//A more efficient queue

//public struct EfficientQueue<T> {
//  fileprivate var array = [T?]()
//  fileprivate var head = 0
//
//  public var isEmpty: Bool {
//    return count == 0
//  }
//
//  public var count: Int {
//    return array.count - head
//  }
//
//  public mutating func enqueue(_ element: T) {
//    array.append(element)
//  }
//
//  public mutating func dequeue() -> T? {
//    guard head < array.count, let element = array[head] else { return nil }
//
//    array[head] = nil
//    head += 1
//
//    let percentage = Double(head)/Double(array.count)
//    if array.count > 50 && percentage > 0.25 {
//      array.removeFirst(head)
//      head = 0
//    }
//
//    return element
//  }
//
//  public var front: T? {
//    if isEmpty {
//      return nil
//    } else {
//      return array[head]
//    }
//  }
//}

// insertionSort

//func insertionSort(_ array: [Int]) -> [Int] {
//    var sortedArray = array             // 1
//    for index in 1..<sortedArray.count {         // 2
//        var currentIndex = index
//        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] { // 3
//            sortedArray.swapAt(currentIndex - 1, currentIndex)
//            currentIndex -= 1
//        }
//    }
//    return sortedArray
//}
//
//let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
//insertionSort(list)

//func insertionSort(_ array: [Int]) -> [Int] {
//  var sortedArray = array
//  for index in 1..<sortedArray.count {
//    var currentIndex = index
//    let temp = sortedArray[currentIndex]
//    while currentIndex > 0 && temp < sortedArray[currentIndex - 1] {
//      sortedArray[currentIndex] = sortedArray[currentIndex - 1]                // 1
//      currentIndex -= 1
//    }
//    sortedArray[currentIndex] = temp                      // 2
//  }
//  return sortedArray
//}

//import UIKit
//var value: String = "Apple"
//func changeString(newValue:inout String) {
//newValue = "Samsung"
//print(newValue) // Output:Samsung
//print(value) // Output:Samsung
//}
//changeString(newValue:&value)

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    
    var total = [Int]()

    let aResult = zip(a, b).filter(>).count
    let bResult = zip(b, a).filter(>).count
    
    total.append(aResult)
    total.append(bResult)
    return total
}

compareTriplets(a: [5,6,7], b: [3,6,10])
