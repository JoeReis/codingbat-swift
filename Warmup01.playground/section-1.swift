// Codingbat warmup01 problems in Swift

import UIKit
import Foundation

// SleepIn
// The parameter weekday is True if it is a weekday, and the parameter vacation is True if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return True if we sleep in.

func sleepIn(weekday:Bool, vacation:Bool) -> Bool{
    return !weekday || vacation
}

println(sleepIn(false, false)) //true
println(sleepIn(true, false)) //false
println(sleepIn(false, true)) //true

// MonkeyTrouble
// We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return True if we are in trouble.

func monkeyTrouble(aSmile: Bool, bSmile: Bool) -> Bool {
    return (aSmile == true && bSmile == true) || (aSmile == false && bSmile == false)
}

println(monkeyTrouble(true, true)) //true
println(monkeyTrouble(false, false)) //true
println(monkeyTrouble(true, false)) //false


// Diff21
// Given an int n, return the absolute difference between n and 21, except return double the absolute difference if n is over 21.

func diff21(n: Int) -> Int {
    if(n > 21){
        return abs(2*n)
    }
    else{
        return abs(n-21)
    }
}

println(diff21(19)) //2
println(diff21(10)) //11
println(diff21(21)) //0

// NearHundred
//Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes the absolute value of a number.

func nearHundred(n: Int32) -> Bool {
    if((abs(n-100) <= 10) || (abs(n-200) <= 10)){
        return true
    }
    else {
        return false
    }
}

println(nearHundred(93)) //true
println(nearHundred(90)) //true
println(nearHundred(89)) //false

