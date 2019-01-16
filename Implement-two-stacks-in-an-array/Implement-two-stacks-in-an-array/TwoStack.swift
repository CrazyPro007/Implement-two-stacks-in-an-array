//
//  TwoStack.swift
//  Implement-two-stacks-in-an-array
//
//  Created by Shivank Agarwal on 16/01/19.
//  Copyright © 2019 Shivank Agarwal. All rights reserved.
//

import UIKit

class TwoStack: NSObject {

    var size: Int
    var top1: Int
    var top2: Int
    var arr: [Int]
    
    required init(aSize: Int) {
        
        size = aSize
        top1 = 0
        top2 = size-1
        arr = [Int](repeating: 0, count: aSize)
    }
    
    internal func pushInFirstStack(aElement: Int){
        
        debugPrint("pushInFirstStack", aElement)
        if top1 <= top2{
            arr.remove(at: top1)
            arr.insert(aElement, at: top1)
            top1 = top1+1
        }else{
            debugPrint("Stack Overflow")
        }
    }
    
    internal func pushInSecondStack(aElement: Int){
        
        debugPrint("pushInSecondStack", aElement)
        if top2 >= top1{
            arr.remove(at: top1)
            arr.insert(aElement, at: top2)
            top2 = top2-1
        }else{
            debugPrint("Stack Overflow")
        }
    }
    
    internal func popInFirstStack(){
        
        if top1 > 0{
            top1 = top1-1
            debugPrint("popInFirstElement", arr[top1])
            arr.remove(at: top1)
            arr.insert(0, at: top1)
        }else{
            debugPrint("Stack Underflow")
        }
    }
    
    internal func popInSecondStack(){
        
        if top2 < size-1{
            top2 = top2+1
            debugPrint("popInSecondElement", arr[top2])
            arr.remove(at: top2)
            arr.insert(0, at: top2)
        }else{
            debugPrint("Stack Underflow")
        }
    }
}
