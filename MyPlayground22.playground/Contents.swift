import UIKit

//public func solution(_ A : inout [Int], _ B : inout [Int], _ X : Int, _ Y : Int) -> Int {
//    // Implement your solution here
//    let xCo = A
//    let yCo = Y
//    if X > 1919 || X < 0 {
//        print("a")
//        return -1
//    }
//     if Y > 1079 || Y < 0 {
//         print("b")
//        return -1
//    }
//    var index = -1
//    for i in 0..<A.count {
//        print("c")
//        print(i)
//        if abs((A[i] - X)) < 21  {
//            print("db")
//            if abs((B[i] - Y)) < 21 {
//                print("e")
//                let aDiff = A[i] - X
//                let bDiff = B[i] - Y
//                if (aDiff - bDiff) < abs(21) {
//                    print("fe")
//                    index = i
//                }
//            }
//           
//        }
//    }
//    return index
//}
//var a = [100, 200, 100]
//var b = [50, 100, 100]
//print(solution(&a, &b, 100, 70))





extension String {
    func toDate() -> Date? {
        var date: Date? = nil
        var dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .long
        dateFormatter.dateFormat = "dd MMM yyyy HH:mm:ss Z"
        if  let da = dateFormatter.date(from: self) {
            date = da
            print(date)
            return date
        }
        
        dateFormatter.dateFormat = "EEEE, dd/MMM/yyyy"
        if  let da = dateFormatter.date(from: self) {
            date = da
            print(date)
            return date
        }
        
        return date
    }

}

extension Date {
    var day: Int? {
        return nil
    }

    var nameOfDay: String {
        return "Implement this"
    }

    var month: Int? {
        return nil
    }

    var nameOfTheMonth: String {
        return "Implement this"
    }

    var year: Int? {
        return nil
    }

    static func numberOfDaysBetween(_ date: Date, and date2: Date) -> Int? {
        return -1
    }
}
