//
//  ViewController.swift
//  Implement-two-stacks-in-an-array
//
//  Created by Shivank Agarwal on 16/01/19.
//  Copyright © 2019 Shivank Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        performOperation()
    }
    
    private func performOperation(){
        
        let twoStack = TwoStack(aSize: 5)
        twoStack.pushInFirstStack(aElement: 1)
        twoStack.pushInSecondStack(aElement: 5)
        twoStack.pushInFirstStack(aElement: 2)
        twoStack.pushInSecondStack(aElement: 4)
        twoStack.pushInFirstStack(aElement: 3)
        twoStack.pushInFirstStack(aElement: 10)
        twoStack.popInFirstStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInFirstStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInSecondStack()
        twoStack.popInFirstStack()
    }
}

