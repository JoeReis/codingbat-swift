// Codingbat warmup01 problems in Swift

import UIKit
import Foundation

// SleepIn
// The parameter weekday is True if it is a weekday, and the parameter vacation is True if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return True if we sleep in.

func sleepIn(weekday:Bool, vacation:Bool) -> Bool{
    return !weekday || vacation
}

sleepIn(false, false) //true
sleepIn(true, false) //false
sleepIn(false, true) //true

// MonkeyTrouble
// We have two monkeys, a and b, and the parameters aSmile and bSmile indicate if each is smiling. We are in trouble if they are both smiling or if neither of them is smiling. Return True if we are in trouble.

func monkeyTrouble(aSmile: Bool, bSmile: Bool) -> Bool {
    return (aSmile == true && bSmile == true) || (aSmile == false && bSmile == false)
}

monkeyTrouble(true, true) //true
monkeyTrouble(false, false) //true
monkeyTrouble(true, false) //false


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

diff21(19) //2
diff21(10) //11
diff21(21) //0

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

nearHundred(93) //true
nearHundred(90) //true
nearHundred(89) //false

//Front3
//Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front.

func front3(str: String) -> String {
    if count(str) < 3 {
        return str
    }
    else{
        let substring = str.substringWithRange(Range(start:str.startIndex, end:advance(str.startIndex, 3)))
        return substring + substring + substring
    }
}

front3("Java") //JavJavJav
front3("Chocolate") //ChoChoCho
front3("ab") //ab

// Makes10
// Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.

func makes10(a: Int, b: Int) -> Bool {
    return (a == 10 || b == 10) || (a+b == 10)
}

makes10(9,10) //true
makes10(9,9) //false
makes10(1,9) //true

// SumDouble
// Given two int values, return their sum. Unless the two values are the same, then return double their sum.

func sumDouble(a: Int, b: Int) -> Int {
    if(a == b){
        return 2*(a+b)
    }
    else {
        return a + b
    }
}

sumDouble(1, 2) //3
sumDouble(3, 2) //5
sumDouble(2, 2) //8

// PosNeg
// Given 2 int values, return True if one is negative and one is positive. Except if the parameter "negative" is True, then return True only if both are negative.

func posNeg(a: Int, b: Int, negative: Bool) -> Bool {
    if(negative == true && (a < 0 && b < 0)){
        return true
    }
    else if((a < 0 && b > 0) || (a > 0 && b < 0)){
        return true
    }
    else {
        return false
    }
}

posNeg(1,-1,false) //true
posNeg(-1,1,false) //true
posNeg(-4, -5, true) //true

// NotString
// Given a string, return a new string where "not " has been added to the front. However, if the string already begins with "not", return the string unchanged. 

func notString(str: String) -> String {
    
    //sidenote: still haven't found an easier way to do substring. Very verbose. - JR, 2/15/2015
    if(count(str) < 3 || str.substringWithRange(Range(start:str.startIndex, end:advance(str.startIndex, 3))) == "not") {
        return str
    }
    else {
        return "not " + str
    }
}

notString("candy") //not candy
notString("x") // not x
notString("not bad") //bad

// HasTeen
// We'll say that a number is "teen" if it is in the range 13..19 inclusive. Given 3 int values, return true if 1 or more of them are teen.

func hasTeen(a: Int, b: Int, c: Int) -> Bool {
    if((a >= 13 && a <= 19) || (b >= 13 && b <= 19) || (c >= 13 && c <= 19)){
        return true
    }
    else {
        return false
    }
}

hasTeen(13, 20, 10) //true
hasTeen(20, 19, 10) //true
hasTeen(20, 10, 13) //true
hasTeen(1, 2, 3) //false


//MissingChar
//Given a non-empty string and an int n, return a new string where the char at index n has been removed. The value of n will be a valid index of a char in the original string (i.e. n will be in the range 0..len(str)-1 inclusive).

func missingChar(str:NSString, n:Int) -> String {
    return str.substringToIndex(n) + str.substringFromIndex(n+1)
}

missingChar("kitten", 1) //ktten
missingChar("kitten", 0) //itten
missingChar("kitten", 4) //kittn