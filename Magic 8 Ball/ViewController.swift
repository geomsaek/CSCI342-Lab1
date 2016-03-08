//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Matthew Saliba on 7/03/2016.
//  Copyright © 2016 Matthew Saliba. All rights reserved.
//

/**

let emojiRanges = [
0x1F601...0x1F64F,
0x2702...0x27B0,
0x1F680...0x1F6C0,
0x1F170...0x1F251
]

for range in emojiRanges {
for i in range {
var c = String(UnicodeScalar(i))
print(c)
}
}


**/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print("Matthew")
        
        let myAge = 27.0
        let outputAge = String(format : "%.2f",myAge)
        
        print(outputAge)
        
        let me = "Matthew"
        print(me)
    
        let newResponses = ["Will the weather be good tomorrow", "Will this be a long semester",String(UnicodeScalar(0x1F601))]
        let ball : EightBallModel = EightBallModel(extraResponseArray: newResponses)

        print(ball)
        print(ball.magicResponse())
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

