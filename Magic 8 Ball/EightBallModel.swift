//
//  EightBallModel.swift
//  Magic 8 Ball
//
//  Created by Matthew Saliba on 7/03/2016.
//  Copyright © 2016 Matthew Saliba. All rights reserved.
//

import Foundation

class EightBallModel:CustomStringConvertible, CustomDebugStringConvertible {

    var description : String {

        var responseString = ""
        
        if let response = responseArray{
            for resp in response{

                responseString = responseString + ", " + resp
            }
        }
        
        return responseString
        
    }
    
    var debugDescription : String {

        return "Debug: " + description

    }

    let initialResponseArray = ["Will I get full marks for this lab", "Will the Cronulla sharks receive a premiership this year", "Will I end up becoming a cat person when I get old"]
    
    var responseArray : [String]? = [String]()
    
    
    /**
        Default Constructor. Sets the responseArray property with the initialResponseArray
    */
    
    init(){
        responseArray = initialResponseArray
    }

    /**
        Default Constructor. Sets the responseArray property with the initialResponseArray
        and combines it with the extraResponseArray
    */
    
    init(extraResponseArray : Array<String> ) {
        responseArray?.appendContentsOf(initialResponseArray)
        responseArray?.appendContentsOf(extraResponseArray)
    }
    
    func magicResponse() -> String{

        if let responses = responseArray {
            let num = Int(arc4random_uniform(UInt32(responses.count)))
            return responses[num]
        }
        
        return ""
    }



    
    
}
