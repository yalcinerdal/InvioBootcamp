import UIKit

//Q1
func convert2Fahrenheit(temp: Float) -> Float{
    return temp * 1.8 + 32
}
convert2Fahrenheit(temp: 25)

//Q2
let rectangle:(Float,Float) -> Float = { edge1,edge2 in
    return edge1 * 2 + edge2 * 2
}
rectangle(5.2,2)

//Q3
func factorial(number : Int) -> Int {
    return number < 2 ? 1 : number * factorial(number: number -  1)
}
factorial(number: 2)

//Q4
func countSameChar(str : String , chr : Character) -> Int {
    return str.filter { $0 == Character(chr.uppercased()) || $0 == Character(chr.lowercased()) }.count
}
countSameChar(str: "Erdal Yalçın", chr: "e")

//Q5
let angle:(Int) -> Int = { edge1 in
    return edge1 > 3 ? (edge1 - 2) * 180 : 0
}
angle(3)

//Q6
func salary(day: Int) -> Int {
    let hour = day * 8
    return hour < 160 ? hour * 10  : hour * 10 + (hour - 160) * 20
}
salary(day: 21)

//Q7
func internetBoundary(limit: Int) -> Int {
    return limit < 50 ? 100 : 100 + (limit - 50) * 4
}
internetBoundary(limit: 1)



