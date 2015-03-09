// Playground - noun: a place where people can play

import UIKit
import Foundation

//helper extension - create first/last methods for Array
extension Array {
    
    var first: T? {
        if isEmpty {
            return nil
        }
        
        return self[0]
    }
    
    var last: T? {
        if isEmpty {
            return nil
        }
        
        return self[count - 1]
    }
    
}

// FirstLast6
// Given an array of ints, return True if 6 appears as either the first or last element in the array. The array will be length 1 or more.

func firstLast6(nums: [Int]) -> Bool {
    if(nums.first == 6 || nums.last == 6){
        return true
    }
    else{
        return false
    }
}

firstLast6([1,2,6]) //true
firstLast6([6,1,2,3]) //true
firstLast6([13,6,1,2,3]) //false

// CommonEnd
// Given 2 arrays of ints, a and b, return True if they have the same first element or they have the same last element. Both arrays will be length 1 or more.

func commonEnd(a: [Int], b: [Int]) -> Bool {
   return (a.first == b.first) || (a.last == b.last)
}

commonEnd([1,2,3], [7,3]) //true
commonEnd([1,2,3], [7,3,2]) //false
commonEnd([1,2,3], [1,3]) //true

// MiddleWay
// Given 2 int arrays, a and b, each length 3, return a new array length 2 containing their middle elements.

func middleWay(a:[Int], b: [Int]) {
    var newArr = [Int]()
    newArr =
}

