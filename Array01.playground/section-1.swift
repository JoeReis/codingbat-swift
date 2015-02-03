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

// #1 FirstLast6
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